SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    REPLACE(
        CONCAT(
            Histologic_Type1, Histologic_Type2, '/ ', Histologic_Type3, Histologic_Type4, '/ ', Histologic_Type5, Histologic_Type6
        ), '/ /', ''
    ) AS Histologic_Type,
    Histologic_Type7 AS Histologic_Type_etc
    #COALESCE(Histologic_Type_1, Histologic_Type_5) AS Histologic_Type
FROM(
    SELECT
        원무접수ID,
        환자번호,
        검사시행일,
        Histologic_Type,
        CASE
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 2
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 2
                ), '|', -1
            )
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 1
            THEN SUBSTRING_INDEX(Histologic_Type, '|', 1)
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 0
            THEN Histologic_Type
            ELSE ''
        END AS Histologic_Type1,
        CASE
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 3
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 3
                ), '|', -1
            )
            ELSE ''
        END AS Histologic_Type2,
        CASE
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 4
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 4
                ), '|', -1
            )
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 3
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 4
                ), '|', -1
            )
            ELSE ''
        END AS Histologic_Type3,
        CASE
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 5
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 5
                ), '|', -1
            )
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 4
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 5
                ), '|', -1
            )
            ELSE ''
        END AS Histologic_Type4,
        CASE
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 6
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 6
                ), '|', -1
            )
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 5
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 6
                ), '|', -1
            )
            ELSE ''
        END AS Histologic_Type5,
        CASE
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 7
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 7
                ), '|', -1
            )
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 6
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 7
                ), '|', -1
            )
            ELSE ''
        END AS Histologic_Type6,
        CASE
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 2
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 2
                ), '|', + 1
            )
            WHEN (CHAR_LENGTH(Histologic_Type) - CHAR_LENGTH(REPLACE(Histologic_Type, '|', ''))) >= 2
            THEN SUBSTRING_INDEX(
                SUBSTRING_INDEX(
                    Histologic_Type, '|', 3
                ), '|', -1
            )
            ELSE ''
        END AS Histologic_Type7
    FROM(
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            CASE
                WHEN (INSTR(Histologic_Type, 'with') != 0 OR INSTR(Histologic_Type, 'and') != 0 OR INSTR(Histologic_Type, 'including') != 0 OR INSTR(Histologic_Type, '+') != 0)
                THEN REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                Histologic_Type, 'with', ''
                            ), 'and', ''
                        ), 'including', ''
                    ), '+', ''
                )
                ELSE Histologic_Type
            END AS Histologic_Type
        FROM biopsy_step_08
    ) biopsy
) biopsy
/*
FROM(
    SELECT
        원무접수ID,
        환자번호,
        검사시행일,
        Histologic_Type,
        NULLIF(
            REPLACE(
                REPLACE(
                    REPLACE(
                        CONCAT(
                            Histologic_Type_1, ',', Persent1, ',', Histologic_Type_2, ',', Persent2, ',', Histologic_Type_3, ',', Persent3, ',', Histologic_Type_4
                        ), 'NULL,', ''
                    ), ',NULL', ''
                ), 'NULL', ''
            ), ''
        ) AS Histologic_Type_1,
        Histologic_Type_5
    FROM (
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            Histologic_Type_1 AS Histologic_Type,
            CASE
                WHEN (CHAR_LENGTH(Histologic_Type_1) - CHAR_LENGTH(REPLACE(Histologic_Type_1, '|', '')) >= 2)
                THEN SUBSTRING_INDEX(
                    SUBSTRING_INDEX(
                        Histologic_Type_1, '|', 2
                    ), '|', -1
                )
                ELSE 'NULL'
            END AS Histologic_Type_1,
            CASE
                WHEN (CHAR_LENGTH(Histologic_Type_1) - CHAR_LENGTH(REPLACE(Histologic_Type_1, '|', '')) >= 4)
                THEN SUBSTRING_INDEX(
                    SUBSTRING_INDEX(
                        Histologic_Type_1, '|', 4
                    ), '|', -1
                )
                ELSE 'NULL'
            END AS Histologic_Type_2,
            CASE
                WHEN (CHAR_LENGTH(Histologic_Type_1) - CHAR_LENGTH(REPLACE(Histologic_Type_1, '|', '')) >= 6)
                THEN SUBSTRING_INDEX(
                    SUBSTRING_INDEX(
                        Histologic_Type_1, '|', 6
                    ), '|', -1
                )
                ELSE 'NULL'
            END AS Histologic_Type_3,
            CASE
                WHEN (CHAR_LENGTH(Histologic_Type_1) - CHAR_LENGTH(REPLACE(Histologic_Type_1, '|', '')) = 8)
                THEN SUBSTRING_INDEX(
                    SUBSTRING_INDEX(
                        Histologic_Type_1, '|', 8
                    ), '|', -1
                )
                ELSE 'NULL'
            END AS Histologic_Type_4,
            IFNULL(
                REGEXP_SUBSTR(
                    Histologic_Type_1, '[0-9]+[0-9]?[%%]'
                ), 'NULL'
            ) AS Persent1,
            IFNULL(
                REGEXP_SUBSTR(
                    Histologic_Type_1, '[0-9]+[0-9]?[%%]', 1, 2
                ), 'NULL'
            ) AS Persent2,
            IFNULL(
                REGEXP_SUBSTR(
                    Histologic_Type_1, '[0-9]+[0-9]?[%%]', 1, 3
                ), 'NULL'
            ) AS Persent3,
            NULLIF(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            CONCAT(
                                AdenoCarcinoma, ',', Carcinoma
                            ), '0,', ''
                        ), ',0', ''
                    ), '0', ''
                ), ''
            ) AS Histologic_Type_5
        FROM(
            SELECT
                원무접수ID,
                환자번호,
                검사시행일,
                CASE
                    WHEN (VER = 'VER1' OR VER = 'VER2')
                    THEN REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    REPLACE(
                                                        REPLACE(
                                                            REPLACE(
                                                                REPLACE(
                                                                    REPLACE(
                                                                        REPLACE(
                                                                            REPLACE(
                                                                                REPLACE(
                                                                                    REPLACE(
                                                                                        REPLACE(
                                                                                            REPLACE(
                                                                                                REPLACE(
                                                                                                    REPLACE(
                                                                                                        REPLACE(
                                                                                                            REPLACE(
                                                                                                                BINARY Histologic_Type, ',', ''
                                                                                                            ), 'tubular adenocarcinoma', '|TA|'
                                                                                                        ), 'Tubular adenocarcinoma', '|TA|'
                                                                                                    ), 'mucinous adenocarcinoma', '|MuA|'
                                                                                                ), 'poorly cohesive carcinoma', '|PCC|'
                                                                                            ), 'SRC', '|SRC|'
                                                                                        ), 'non-|SRC|', '|non-SRC|'
                                                                                    ), 'signet ring cell carcinoma', '|SRC|'
                                                                                ), 'signet ring cell', '|SRC|'
                                                                            ), 'mucinous carcinoma', '|MuC|'
                                                                        ), 'medullary carcinoma', '|MDCA|'
                                                                    ), 'Medullary carcinoma ', '|MDCA|'
                                                                ), 'papillary adenocarcinoma', '|PA|'
                                                            ), 'neuroendocrine carcinoma', '|NET|'
                                                        ), 'neuroendocrine tumor', '|NET|'
                                                    ), 'lymphoid stroma', '|LyS|'
                                                ), 'PD', '|PD|'
                                            ), 'tubular', '|TA|'
                                        ), 'papillary', '|PA|'
                                    ), 'mucinous', '|MuA|'
                                ), 'component', ''
                            ), 'mixed', ''
                        ), 'non |SRC|', '|non SRC|'
                    )
                END AS Histologic_Type_1,
                CASE
                    WHEN (VER = 'VER3' AND INSTR(Histologic_Type, 'tubular adenocarcinoma') != 0)
                    THEN 'TA'
                    WHEN (VER = 'VER3' AND INSTR(Histologic_Type, 'mucinous adenocarcinoma') != 0)
                    THEN 'MuA'
                    WHEN (VER = 'VER3' AND INSTR(Histologic_Type, 'papillary adenocarcinoma') != 0 )
                    THEN 'PA'
                    WHEN (VER = 'VER3' AND INSTR(Histologic_Type, 'adenocarcinoma') != 0)
                    THEN 'TA'
                    ELSE 0
                END AS AdenoCarcinoma,
                CASE
                    WHEN (VER = 'VER3' AND INSTR(Histologic_Type, 'poorly cohesive carcinoma') != 0)
                    THEN 'PCC'
                    WHEN (VER = 'VER3' AND INSTR(Histologic_Type, 'signet ring cell carcinoma') != 0)
                    THEN 'SRC'
                    WHEN (VER = 'VER3' AND INSTR(Histologic_Type, 'mucinous carcinoma') != 0)
                    THEN 'MuC'
                    WHEN (VER = 'VER3' AND INSTR(Histologic_Type, 'medullary carcinoma') != 0)
                    THEN 'MDCA'
                    WHEN (VER = 'VER3' AND INSTR(Histologic_Type, 'neuroendocrine carcinoma') != 0)
                    THEN 'NET'
                    ELSE 0
                END AS Carcinoma
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    CASE
                        WHEN VER = 'VER1'
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        TRIM(
                                            TRAILING SUBSTR(
                                                Histologic_Type, INSTR(Histologic_Type, 'Tumor Site')
                                            )
                                            FROM Histologic_Type
                                        ), 'WHO classification', ''
                                    ), '(Histologic Type)', ''
                                ), '\n', ''
                            ), '[(|;|:|-|)]', ''
                        )
                        WHEN VER = 'VER2'
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                TRIM(
                                                    TRAILING SUBSTR(
                                                        BINARY Histologic_Type, INSTR(BINARY Histologic_Type, '5')
                                                    )
                                                    FROM BINARY Histologic_Type
                                                ), 'histologic type:', ''
                                            ), 'poorly differentiated', ''
                                        ), 'micropapillary carcinoma', ''
                                    ), 'Histologic type', ''
                                ), '(WHO classification)', ''
                            ), '[(|.|;|:|)]', ''
                        )
                        WHEN VER = 'VER3'
                        THEN Histologic_Type
                    END AS Histologic_Type,
                    VER
                FROM(
                    SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        병리진단,
                        CASE
                            WHEN INSTR(병리진단, 'WHO classification (Histologic Type)') != 0
                            THEN SUBSTR(병리진단, INSTR(병리진단, 'WHO classification (Histologic Type)'))
                            WHEN INSTR(병리진단, 'histologic type') != 0
                            THEN SUBSTR(병리진단, INSTR(병리진단, 'histologic type'))
                            ELSE SUBSTRING_INDEX(병리진단, '\n', 6)
                        END AS Histologic_Type,
                        CASE
                            WHEN INSTR(병리진단, 'WHO classification (Histologic Type)') != 0
                            THEN 'VER1'
                            WHEN INSTR(병리진단, 'histologic type')
                            THEN 'VER2'
                            ELSE 'VER3'
                        END AS VER
                    FROM(
                        SELECT * FROM pathologic_biopsy_01
                    ) biopsy
                ) biopsy
            ) biopsy
        ) biopsy
    ) biopsy
) biopsy
*/