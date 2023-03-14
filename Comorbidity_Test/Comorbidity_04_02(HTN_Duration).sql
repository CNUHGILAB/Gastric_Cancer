SELECT
    `ID`,
    HTN_Date,
    HTN_MD_1,
    HTN_MD_2,
    CASE
        WHEN HTN_Duration_2 IS NOT NULL
        THEN DATE_SUB(
            STR_TO_DATE(
                HTN_Date, '%%Y-%%m-%%d'
            ), INTERVAL HTN_Duration month
        )
        WHEN CHAR_LENGTH(HTN_Duration) <= 2
        THEN DATE_SUB(
            STR_TO_DATE(
                HTN_Date, '%%Y-%%m-%%d'
            ), INTERVAL HTN_Duration year
        )
        WHEN CHAR_LENGTH(HTN_Duration) = 4
        THEN HTN_Duration
    END AS HTN_Duration
FROM(
    SELECT
        환자번호 AS `ID`,
        의무기록작성일 AS HTN_Date,
        `의무기록 환자진료과코드` AS HTN_MD_1,
        `의무기록 환자진료과` AS HTN_MD_2,
        의무기록내용,
        TRIM(
            CAST(
                CASE
                    WHEN 진료서식구성원소ID = '{0}'
                    THEN REGEXP_REPLACE(
                        REPLACE(
                            의무기록내용, 'Year(s)', ''
                        ), '[^0-9|-]+', ''
                    )
                END AS `Signed`
            )
        ) AS HTN_Duration,
        CASE
            WHEN (진료서식구성원소ID = '{0}' AND INSTR(의무기록내용, 'Month') != 0)
            THEN 'M'
        END AS HTN_Duration_2
    FROM outpatient
    WHERE 진료서식구성원소ID = '{0}'
    ORDER BY `ID` ASC
) a