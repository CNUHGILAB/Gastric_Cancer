SELECT
    원무접수ID,
    환자번호,
    검사시행일,
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
                                                                                            Histologic_Type, ',', ''
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
    ) AS Histologic_Type
FROM(
    SELECT
        원무접수ID,
        환자번호,
        검사시행일,
        CASE 
            WHEN NULLIF(Histologic_Type_2, '') IS NOT NULL
            then REGEXP_REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            TRIM(
                                TRAILING SUBSTR(
                                    Histologic_Type_2, INSTR(Histologic_Type_2, 'Tumor Site')
                                )
                                FROM Histologic_Type_2
                            ), 'WHO clASsification', ''
                        ), '(Histologic Type)', ''
                    ), '\n', ''
                ), '[(|;|:|-|)]', ''
            )
            WHEN NULLIF(Histologic_Type, '') IS NOT NULL
            THEN REGEXP_REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    TRIM(
                                        TRAILING SUBSTR(Histologic_Type, INSTR(Histologic_Type, '\n'))
                                        FROM Histologic_Type
                                    ), 'histologic type:', ''
                                ), 'poorly differentiated', ''
                            ), 'micropapillary carcinoma', ''
                        ), 'Histologic type', ''
                    ), '(WHO clASsification)', ''
                ), '[(|.|;|:|)]', ''
            )
            ELSE SUBSTRING_INDEX(병리진단, '1)', 1)
        END AS Histologic_Type
    FROM(
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            병리진단,
            SUBSTR(병리진단, INSTR(병리진단, 'histologic type')) AS Histologic_Type,
            SUBSTR(
                병리진단, INSTR(병리진단, 'WHO clASsification (Histologic Type)')
            ) AS Histologic_Type_2
        FROM pathologic_biopsy_01
    ) biopsy
) biopsy