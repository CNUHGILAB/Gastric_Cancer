SELECT
    `ID`,
    DM_Date,
    DM_MD_1,
    DM_MD_2,
    CASE
        WHEN DM_Duration_2 IS NOT NULL
        THEN DATE_SUB(
            STR_TO_DATE(
                DM_Date, '%%Y-%%m-%%d'
            ), INTERVAL DM_Duration MONTH
        )
        WHEN CHAR_LENGTH(DM_Duration) <= 2
        THEN DATE_SUB(
            STR_TO_DATE(
                DM_Date, '%%Y-%%m-%%d'
            ), INTERVAL DM_Duration YEAR
        )
        WHEN CHAR_LENGTH(DM_Duration) = 4
        THEN DM_Duration
    END AS DM_Duration
FROM(
    SELECT
        환자번호 AS `ID`,
        의무기록작성일 AS DM_Date,
        `의무기록 환자진료과코드` AS DM_MD_1,
        `의무기록 환자진료과` AS DM_MD_2,
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
                END AS SIGNED
            )
        ) AS DM_Duration,
        CASE
            WHEN (진료서식구성원소ID = '{0}' AND INSTR(의무기록내용, 'Month') != 0)
            THEN 'M'
        END AS DM_Duration_2
    FROM raw_file_2012_2022.outpatient
    WHERE 진료서식구성원소ID = '{0}'
    ORDER BY
        `ID` ASC
) a
