SELECT
    ID,
    HTN_Date,
    HTN_MD_1,
    HTN_MD_2,
    case
        when HTN_Duration_2 is not null then DATE_SUB(
            STR_TO_DATE(HTN_Date, '%%Y-%%m-%%d'),
            INTERVAL HTN_Duration month
        )
        when char_length(HTN_Duration) <= 2 then DATE_SUB(
            STR_TO_DATE(HTN_Date, '%%Y-%%m-%%d'),
            INTERVAL HTN_Duration year
        )
        when char_length(HTN_Duration) = 4 then HTN_Duration
    end as HTN_Duration
FROM
(
        SELECT
            환자번호 as ID,
            의무기록작성일 as HTN_Date,
            `의무기록 환자진료과코드` as HTN_MD_1,
            `의무기록 환자진료과` as HTN_MD_2,
            의무기록내용,
            trim(
                cast(
                    case
                        when 진료서식구성원소ID = '{0}' then regexp_replace(replace(의무기록내용, 'Year(s)', ''), '[^0-9|-]+', '')
                    end as signed
                )
            ) as HTN_Duration,
            case
                when 진료서식구성원소ID = '{0}'
                and instr(의무기록내용, 'Month') != 0 then 'M'
            end as HTN_Duration_2
        FROM
            outpatient
        WHERE
            진료서식구성원소ID = '{0}'
        ORDER BY
            ID asc
    ) a
