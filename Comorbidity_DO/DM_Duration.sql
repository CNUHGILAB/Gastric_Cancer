SELECT
    ID,
    DM_Date,
    DM_MD_1,
    DM_MD_2,
    case
        when DM_Duration_2 is not null then DATE_SUB(
            STR_TO_DATE(DM_Date, '%%Y-%%m-%%d'),
            INTERVAL DM_Duration month
        )
        when char_length(DM_Duration) <= 2 then DATE_SUB(
            STR_TO_DATE(DM_Date, '%%Y-%%m-%%d'),
            INTERVAL DM_Duration year
        )
        when char_length(DM_Duration) = 4 then DM_Duration
    end as DM_Duration
FROM
(
        SELECT
            환자번호 as ID,
            의무기록작성일 as DM_Date,
            `의무기록 환자진료과코드` as DM_MD_1,
            `의무기록 환자진료과` as DM_MD_2,
            의무기록내용,
            trim(
                cast(
                    case
                        when 진료서식구성원소ID = '{0}' then regexp_replace(replace(의무기록내용, 'Year(s)', ''), '[^0-9|-]+', '')
                    end as signed
                )
            ) as DM_Duration,
            case
                when 진료서식구성원소ID = '{0}'
                and instr(의무기록내용, 'Month') != 0 then 'M'
            end as DM_Duration_2
        FROM
            gc_raw_test.outpatient
        WHERE
            진료서식구성원소ID = '{0}'
        ORDER BY
            ID asc
    ) a
