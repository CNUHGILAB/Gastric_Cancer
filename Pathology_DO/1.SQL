
SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    histologic_type_1,
    (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ),
    CONCAT(TA,',',carcinoma)
FROM(
SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    CASE
        WHEN VER = "VER1"
        OR VER = "VER2" THEN
        replace(
                replace(
                        replace (
                                replace (
                                        replace (
                                                replace (
                                                        replace (
                                                                replace (
                                                                        replace (
                                                                                replace (
                                                                                        replace (
                                                                                                replace (
                                                                                                        replace (
                                                                                                                replace (
                                                                                                                        replace (
                                                                                                                                replace (
                                                                                                                                        replace (
                                                                                                                                                replace (
                                                                                                                                                        replace (
                                                                                                                                                                replace (
                                                                                                                                                                        replace (
                                                                                                                                                                                replace (histologic_type, ',', ''),
                                                                                                                                                                                    'tubular adenocarcinoma',
                                                                                                                                                                                    '|TA|'
                                                                                                                                                                            ),
                                                                                                                                                                            'Tubular adenocarcinoma',
                                                                                                                                                                            '|TA|'
                                                                                                                                                                    ),
                                                                                                                                                                    'mucinous adenocarcinoma',
                                                                                                                                                                    '|MuA|'
                                                                                                                                                            ),
                                                                                                                                                            'poorly cohesive carcinoma',
                                                                                                                                                            '|PCC|'
                                                                                                                                                    ),
                                                                                                                                                    'SRC',
                                                                                                                                                    '|SRC|'
                                                                                                                                            ),
                                                                                                                                            'non-|SRC|',
                                                                                                                                            '|non-SRC|'
                                                                                                                                    ),
                                                                                                                                    'signet ring cell carcinoma',
                                                                                                                                    '|SRC|'
                                                                                                                            ),
                                                                                                                            'signet ring cell',
                                                                                                                            '|SRC|'
                                                                                                                    ),
                                                                                                                    'mucinous carcinoma',
                                                                                                                    '|MuC|'
                                                                                                            ),
                                                                                                            'medullary carcinoma',
                                                                                                            '|MDCA|'
                                                                                                    ),
                                                                                                    'Medullary carcinoma ',
                                                                                                    '|MDCA|'
                                                                                            ),
                                                                                            'papillary adenocarcinoma',
                                                                                            '|PA|'
                                                                                    ),
                                                                                    'neuroendocrine carcinoma',
                                                                                    '|NET|'
                                                                            ),
                                                                            'neuroendocrine tumor',
                                                                            '|NET|'
                                                                    ),
                                                                    'lymphoid stroma',
                                                                    '|LyS|'
                                                            ),
                                                            'PD',
                                                            '|PD|'
                                                    ),
                                                    'tubular',
                                                    '|TA|'
                                            ),
                                            'papillary',
                                            '|PA|'
                                    ),
                                    'mucinous',
                                    '|MuA|'
                            ),
                            'component',
                            ''
                    ),
                    'mixed',
                    ''
            )
    END histologic_type_1,
    CASE
        WHEN VER = "VER3"
        AND INSTR(
            histologic_type,
            "tubular adenocarcinoma"
        ) THEN "TA"
        WHEN VER = "VER3"
        AND INSTR(
            histologic_type,
            "mucinous adenocarcinoma"
        ) THEN "MuA"
        WHEN VER = "VER3"
        AND INSTR(
            histologic_type,
            "papillary adenocarcinoma"
        ) THEN "PA"
        WHEN VER = "VER3"
        AND INSTR(
            histologic_type,
            "adenocarcinoma"
        ) THEN "TA"
    END AS TA,
    CASE
        WHEN VER = "VER3"
        AND INSTR(
            histologic_type,
            "poorly cohesive carcinoma"
        ) THEN "PCC"
        WHEN VER = "VER3"
        AND INSTR(
            histologic_type,
            "signet ring cell carcinoma"
        ) THEN "SRC"
        WHEN VER = "VER3"
        AND INSTR(
            histologic_type,
            "mucinous carcinoma"
        ) THEN "MuC"
        WHEN VER = "VER3"
        AND INSTR(
            histologic_type,
            "medullary carcinoma"
        ) THEN "MDCA"
        WHEN VER = "VER3"
        AND INSTR(
            histologic_type,
            "neuroendocrine carcinoma"
        ) THEN "NET"
    END AS carcinoma
FROM(
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            CASE
                WHEN VER = "VER1" THEN REGEXP_REPLACE(
                    REPLACE (
                            REPLACE (
                                    REPLACE (
                                            TRIM(
                                                TRAILING substr(
                                                    histologic_type,
                                                    instr(histologic_type, 'Tumor Site')
                                                )
                                                FROM
                                                    histologic_type
                                            ),
                                            'WHO classification',
                                            ''
                                        ),
                                        '(Histologic Type)',
                                        ''
                                ),
                                '\n',
                                ''
                        ),
                        '[(|;|:|-|)]',
                        ''
                )
                WHEN VER = "VER2" THEN REGEXP_REPLACE(
                    REPLACE (
                            REPLACE (
                                    REPLACE (
                                            REPLACE (
                                                    REPLACE (
                                                            TRIM(
                                                                TRAILING substr(
                                                                    histologic_type,
                                                                    instr(histologic_type, '\n')
                                                                )
                                                                from
                                                                    histologic_type
                                                            ),
                                                            'histologic type:',
                                                            ''
                                                        ),
                                                        'poorly differentiated',
                                                        ''
                                                ),
                                                'micropapillary carcinoma',
                                                ''
                                        ),
                                        'Histologic type',
                                        ''
                                ),
                                '(WHO classification)',
                                ''
                        ),
                        '[(|.|;|:|)]',
                        ''
                )
                WHEN VER = "VER3" THEN histologic_type
            end as histologic_type,
            VER
        FROM (
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    병리진단,
                    CASE
                        WHEN instr(
                            병리진단,
                            'WHO classification (Histologic Type)'
                        ) != 0 THEN substr(
                            병리진단,
                            instr(
                                병리진단,
                                'WHO classification (Histologic Type)'
                            )
                        )
                        WHEN instr(병리진단, 'histologic type') THEN substr(
                            병리진단,
                            instr(병리진단, 'histologic type')
                        )
                        ELSE SUBSTRING_INDEX(병리진단, "\n", 6)
                    END AS histologic_type,
                    CASE
                        WHEN instr(
                            병리진단,
                            'WHO classification (Histologic Type)'
                        ) != 0 THEN "VER1"
                        WHEN instr(병리진단, 'histologic type') THEN "VER2"
                        ELSE "VER3"
                    END AS VER
                FROM (
                        SELECT
                            *
                        FROM
                            biopsy_step_01
                    ) biopsy
            ) biopsy
    ) biopsy
) biopsy