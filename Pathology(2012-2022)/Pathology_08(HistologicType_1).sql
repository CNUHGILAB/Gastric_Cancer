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
                                                                                            # , > (공백)
                                                                                            Histologic_Type, ',', ''
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
                        # papillary > |PA|
                    ), 'papillary', '|PA|'
                    # mucinous > |MuA|
                ), 'mucinous', '|MuA|'
                # component > (공백)
            ), 'component', ''
            # mixed > (공백)
        ), 'mixed', ''
    ) AS Histologic_Type
FROM(
    SELECT
        원무접수ID,
        환자번호,
        검사시행일,
        CASE 
            WHEN NULLIF(Histologic_Type_2, '') IS NOT NULL
            THEN REGEXP_REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            TRIM(
                                TRAILING SUBSTR(Histologic_Type_2, INSTR(Histologic_Type_2, 'Tumor Site'))
                                FROM Histologic_Type_2
                                # WHO clASsification > (공백)
                            ), 'WHO clASsification', ''
                            # (Histologic Type) > (공백)
                        ), '(Histologic Type)', ''
                        # (줄 바꿈) > (공백)
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
                                        # histologic type: > (공백)
                                    ), 'histologic type:', ''
                                    # poorly differentiated > (공백)
                                ), 'poorly differentiated', ''
                                # micropapillary carcinoma > (공백)
                            ), 'micropapillary carcinoma', ''
                            # Histologic type > (공백)
                        ), 'Histologic type', ''
                        # (WHOE clASsification) > (공백)
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
            # histologic type 有
            SUBSTR(병리진단, INSTR(병리진단, 'histologic type')) AS Histologic_Type,
            # WHO clASsification (Histologic Type) 有
            SUBSTR(병리진단, INSTR(병리진단, 'WHO clASsification (Histologic Type)')) AS Histologic_Type_2
        FROM pathology_01
    ) biopsy
) biopsy