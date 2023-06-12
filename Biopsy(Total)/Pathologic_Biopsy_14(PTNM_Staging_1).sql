SELECT
    DISTINCT 원무접수ID,
    환자번호,
    검사시행일,
    pTNM_ver,
    CASE
        WHEN NULLIF(pT_1, '') IS NULL
        THEN (CASE
                WHEN (pT_2 = '(pTNM)') = 1
                THEN CONCAT(
                    CONCAT(pT_4, REPLACE(pT_5, 'p', '')),
                    TRIM(REPLACE(pT_6, 'Not applicable', 'Mx'))
                )
                WHEN (NULLIF(pT_2, '') IS NOT NULL AND NULLIF(pT_3, '') IS NOT NULL)
                THEN CONCAT(
                    CONCAT(
                        SUBSTRING_INDEX(
                            SUBSTRING_INDEX(
                                pT_2, ')', 1
                            ), '(', -1
                        ), REPLACE(SUBSTRING_INDEX(SUBSTRING_INDEX(pT_3, ')', 1), '(', -1), 'p', '')
                    ), 'Mx'
                )
                WHEN NULLIF(pT_2, '') IS NOT NULL
                THEN CONCAT(
                    CONCAT(
                        SUBSTRING_INDEX(
                            SUBSTRING_INDEX(
                                pT_2, ')', 1
                            ), '(', -1
                        ), 'Nx'
                    ), 'Mx'
                )
                WHEN NULLIF(pT_3, '') IS NOT NULL
                THEN CONCAT(
                    CONCAT(
                        'pTx', REPLACE(SUBSTRING_INDEX(SUBSTRING_INDEX(pT_3, ')', 1), '(', -1), 'p', '')
                    ), 'Mx'
                )
                ELSE NULL
            END
        )
        WHEN INSTR(pT_1, 'M') = 0
        THEN CONCAT(pT_1, 'Mx')
        ELSE pT_1
    END AS pT,
    CASE
        WHEN INSTR(SUBSTR(pT_1, INSTR(pT_1, 'Comment'), INSTR(pT_1, ')') - INSTR(pT_1, 'Comment')), '2') != 0
        THEN SUBSTRING_INDEX(`Comment`, '\n', 5)
        WHEN INSTR(SUBSTR(pT_1, INSTR(pT_1, 'Comment'), INSTR(pT_1, ')') - INSTR(pT_1, 'Comment')), 'Comment') != 0
        THEN SUBSTRING_INDEX(`Comment`, '\n', 3)
    END AS `Comment`
FROM(
    SELECT
        원무접수ID,
        환자번호,
        검사시행일,
        REPLACE(
            REPLACE(
                REPLACE(
                    TRIM(
                        TRAILING SUBSTR(pT_1, INSTR(pT_1, '\n'))
                        FROM pT_1
                    ), 'pTNM stage (by AJCC 8th edition):', ''
                ), 'pTNM stage', ''
            ), ':', ''
        ) AS pT_1,
        CASE
            WHEN (NULLIF(pT_7, '') IS NOT NULL AND NULLIF(pT_4, '') IS NULL)
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    pT_7, 'Lymph Nodes', 1
                ), 'Primary Tumor', -1
            )
            ELSE TRIM(
                TRAILING SUBSTR(pT_2, INSTR(pT_2, '\n'))
                FROM pT_2
            )
        END AS pT_2,
        CASE
            WHEN (NULLIF(pT_7, '') IS NOT NULL AND NULLIF(pT_4, '') IS NULL)
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    pT_7, 'Distant Metastasis', 1
                ), 'Lymph Nodes', -1
            )
            ELSE TRIM(
                TRAILING SUBSTR(pT_3, INSTR(pT_3, '\n'))
                FROM pT_3
            )
        END AS pT_3,
        REGEXP_REPLACE(
            SUBSTR(
                SUBSTRING_INDEX(
                    SUBSTRING_INDEX(
                        pT_4, 'Tumor invades', 1
                    ), 'Primary Tumor (pT)', -1
                ), INSTR(SUBSTRING_INDEX(SUBSTRING_INDEX(pT_4, 'Tumor invades', 1), 'Primary Tumor (pT)', -1), 'pT'), 4
            ), '[:|,]', ''
    ) AS pT_4,
    REPLACE(
        SUBSTR(
            SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    pT_5, 'Greater curvature', 1
                ), 'Lymph Nodes (pN)', -1
            ), INSTR(SUBSTRING_INDEX(SUBSTRING_INDEX(pT_5, 'Greater curvature', 1), 'Lymph Nodes (pN)', -1), 'pN'), 4
        ), ':', ''
    ) AS pT_5,
    REPLACE(
        SUBSTRING_INDEX(
            SUBSTRING_INDEX(
                pT_6, '5) Resection margins', 1
            ), 'Distant Metastasis (pM)', -1
        ), '\n', ''
    ) AS pT_6,
    CASE
        WHEN INSTR(pT_1, 'Comment') != 0
        THEN SUBSTR(`Comment`, INSTR(`Comment`, '* Comment'))
        ELSE NULL
    END AS `Comment`,
    SUBSTR(
        TRIM(
            TRAILING SUBSTR(pT_1, INSTR(pT_1, '\n'))
            FROM pT_1
        ), INSTR(pT_1, 'by'), 19
    ) AS pTNM_ver
    FROM(
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            SUBSTR(병리진단, INSTR(병리진단, 'pTNM stage')) AS pT_1,
            SUBSTR(병리진단, INSTR(병리진단, '(pT')) AS pT_2,
            SUBSTR(병리진단, INSTR(병리진단, '(pN')) AS pT_3,
            SUBSTR(병리진단, INSTR(병리진단, 'Primary Tumor (pT)')) AS pT_4,
            SUBSTR(병리진단, INSTR(병리진단, 'Lymph Nodes (pN)')) AS pT_5,
            SUBSTR(병리진단, INSTR(병리진단, 'Distant Metastasis (pM)')) AS pT_6,
            SUBSTR(병리진단, INSTR(병리진단, 'Pathologic Staging (pTNM)')) AS pT_7,
            SUBSTR(병리진단, INSTR(병리진단, 'Comment')) AS `Comment`
        FROM pathologic_biopsy_01 
    ) biopsy
) biopsy