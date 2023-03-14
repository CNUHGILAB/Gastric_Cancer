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
    FROM(
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
                                # AdenoCarcinoma, Carcinoma
                                AdenoCarcinoma, ',', Carcinoma
                                # 0, > (공백)
                            ), '0,', ''
                            # ,0 > (공백)
                        ), ',0', ''
                        # 0 > (공백)
                    ), '0', ''
                ), ''
            ) AS Histologic_Type_5
        FROM(
            SELECT
                원무접수ID,
                환자번호,
                검사시행일,
                CASE
                    WHEN (ver = 'ver1' OR ver = 'ver2')
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
                                                                                                                # tubular adenocarcinoma > |TA|
                                                                                                            ), 'tubular adenocarcinoma', '|TA|'
                                                                                                            # Tubular adenocarcinoma > |TA|
                                                                                                        ), 'Tubular adenocarcinoma', '|TA|'
                                                                                                        # mucinous adenocarcinoma > |MuA|
                                                                                                    ), 'mucinous adenocarcinoma', '|MuA|'
                                                                                                    # poorly cohesive carcinoma > |PCC|
                                                                                                ), 'poorly cohesive carcinoma', '|PCC|'
                                                                                                # SRC > |SRC|
                                                                                            ), 'SRC', '|SRC|'
                                                                                            # non-|SRC| > |non-SRC|
                                                                                        ), 'non-|SRC|', '|non-SRC|'
                                                                                        # signet ring cell carcinoma > |SRC|
                                                                                    ), 'signet ring cell carcinoma', '|SRC|'
                                                                                    # signet ring cell > |SRC|
                                                                                ), 'signet ring cell', '|SRC|'
                                                                                # mucinous carcinoma > |MuC|
                                                                            ), 'mucinous carcinoma', '|MuC|'
                                                                            # medullary carcinoma > |MDCA|
                                                                        ), 'medullary carcinoma', '|MDCA|'
                                                                        # Medullary carcinoma > |MDCA|
                                                                    ), 'Medullary carcinoma ', '|MDCA|'
                                                                    # papillary adenocarcinoma > |PA|
                                                                ), 'papillary adenocarcinoma', '|PA|'
                                                                # neuroendocrine carcinoma > |NET|
                                                            ), 'neuroendocrine carcinoma', '|NET|'
                                                            # neuroendocrine tumor > |NET|
                                                        ), 'neuroendocrine tumor', '|NET|'
                                                        # lymphoid stroma > |LyS|
                                                    ), 'lymphoid stroma', '|LyS|'
                                                    # PD > |PD|
                                                ), 'PD', '|PD|'
                                                # tubular > |TA|
                                            ), 'tubular', '|TA|'
                                            # papillary |PA|
                                        ), 'papillary', '|PA|'
                                        # mucinous > |MuA|
                                    ), 'mucinous', '|MuA|'
                                    # component > (공백)
                                ), 'component', ''
                                # mixed > (공백)
                            ), 'mixed', ''
                            # non |SRC| > |non SRC|
                        ), 'non |SRC|', '|non SRC|'
                    )
                END AS Histologic_Type_1,
                CASE
                    WHEN (ver = 'ver3' AND INSTR(Histologic_Type, 'tubular adenocarcinoma') != 0)
                    THEN 'TA'
                    WHEN (ver = 'ver3' AND INSTR(Histologic_Type, 'mucinous adenocarcinoma') != 0)
                    THEN 'MuA'
                    WHEN (ver = 'ver3' AND INSTR(Histologic_Type, 'papillary adenocarcinoma') != 0 )
                    THEN 'PA'
                    WHEN (ver = 'ver3' AND INSTR(Histologic_Type, 'adenocarcinoma') != 0)
                    THEN 'TA'
                    ELSE 0
                END AS AdenoCarcinoma,
                CASE
                    WHEN (ver = 'ver3' AND INSTR(Histologic_Type, 'poorly cohesive carcinoma') != 0)
                    THEN 'PCC'
                    WHEN (ver = 'ver3' AND INSTR(Histologic_Type, 'signet ring cell carcinoma') != 0)
                    THEN 'SRC'
                    WHEN (ver = 'ver3' AND INSTR(Histologic_Type, 'mucinous carcinoma') != 0)
                    THEN 'MuC'
                    WHEN (ver = 'ver3' AND INSTR(Histologic_Type, 'medullary carcinoma') != 0)
                    THEN 'MDCA'
                    WHEN (ver = 'ver3' AND INSTR(Histologic_Type, 'neuroendocrine carcinoma') != 0)
                    THEN 'NET'
                    ELSE 0
                END AS Carcinoma
            FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    CASE
                        # ver1 = WHO classification (Histologic Type)
                        WHEN ver = 'ver1'
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        TRIM(
                                            TRAILING SUBSTR(Histologic_Type, INSTR(Histologic_Type, 'Tumor Site'))
                                            FROM Histologic_Type
                                            # WHO classification > (공백)
                                        ), 'WHO classification', ''
                                        # (Histologic Type) > (공백)
                                    ), '(Histologic Type)', ''
                                    # (줄 바꿈) > (공백)
                                ), '\n', ''
                            ), '[(|;|:|-|)]', ''
                        )
                        # ver2 = histologic type
                        WHEN ver = 'ver2'
                        THEN REGEXP_REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                TRIM(
                                                    TRAILING SUBSTR(BINARY Histologic_Type, INSTR(BINARY Histologic_Type, '5'))
                                                    FROM BINARY Histologic_Type
                                                    # histoloic type: > (공백)
                                                ), 'histologic type:', ''
                                                # poorly differentiated > (공백)
                                            ), 'poorly differentiated', ''
                                            # micropapillary carcinoma > (공백)
                                        ), 'micropapillary carcinoma', ''
                                        # Histologic type > (공백)
                                    ), 'Histologic type', ''
                                    # (WHO classification) > (공백)
                                ), '(WHO classification)', ''
                            ), '[(|.|;|:|)]', ''
                        )
                        WHEN ver = 'ver3'
                        THEN Histologic_Type
                    END AS Histologic_Type,
                    ver
                FROM(
                    SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        병리진단,
                        CASE
                            # WHO classification (Histologic Type) 有
                            WHEN INSTR(병리진단, 'WHO classification (Histologic Type)') != 0
                            THEN SUBSTR(병리진단, INSTR(병리진단, 'WHO classification (Histologic Type)'))
                            # histologic type 有
                            WHEN INSTR(병리진단, 'histologic type') != 0
                            THEN SUBSTR(병리진단, INSTR(병리진단, 'histologic type'))
                            ELSE SUBSTRING_INDEX(병리진단, '\n', 6)
                        END AS Histologic_Type,
                        CASE
                            # WHO classification (Histologic Type) 有
                            WHEN INSTR(병리진단, 'WHO classification (Histologic Type)') != 0
                            # ver1
                            THEN 'ver1'
                            # histologic type 有
                            WHEN INSTR(병리진단, 'histologic type')
                            # ver2
                            THEN 'ver2'
                            # 없으면 ver3
                            ELSE 'ver3'
                        END AS ver
                    FROM(
                        SELECT * FROM pathology_01
                    ) biopsy
                ) biopsy
            ) biopsy
        ) biopsy
    ) biopsy
) biopsy