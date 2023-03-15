SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    COALESCE(
        histologic_type_1,
        histologic_type_5
    ) AS histologic_type
FROM(
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            histologic_type,
            NULLIF(
                REPLACE(
                        REPLACE (
                                REPLACE (
                                        CONCAT(
                                            histologic_type_1,
                                            ',',
                                            persent1,
                                            ',',
                                            histologic_type_2,
                                            ',',
                                            persent2,
                                            ',',
                                            histologic_type_3,
                                            ',',
                                            persent3,
                                            ',',
                                            histologic_type_4
                                        ),
                                        'NULL,',
                                        ''
                                    ),
                                    ',NULL',
                                    ''
                            ),
                            'NULL',
                            ''
                    ),
                    ''
            ) AS histologic_type_1,
            histologic_type_5
        FROM (
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    histologic_type_1 AS histologic_type,
                    case
                        when (
                            CHAR_LENGTH(histologic_type_1) - CHAR_LENGTH(
                                replace (histologic_type_1, '|', '')
                            )
                        ) >= 2 THEN SUBSTRING_INDEX(
                            SUBSTRING_INDEX(histologic_type_1, '|', 2),
                            '|',
                            -1
                        )
                        ELSE 'NULL'
                    END AS histologic_type_1,
                    case
                        when (
                            CHAR_LENGTH(histologic_type_1) - CHAR_LENGTH(
                                replace (histologic_type_1, '|', '')
                            )
                        ) >= 4 THEN SUBSTRING_INDEX(
                            SUBSTRING_INDEX(histologic_type_1, '|', 4),
                            '|',
                            -1
                        )
                        ELSE 'NULL'
                    END AS histologic_type_2,
                    case
                        when (
                            CHAR_LENGTH(histologic_type_1) - CHAR_LENGTH(
                                replace (histologic_type_1, '|', '')
                            )
                        ) >= 6 THEN SUBSTRING_INDEX(
                            SUBSTRING_INDEX(histologic_type_1, '|', 6),
                            '|',
                            -1
                        )
                        ELSE 'NULL'
                    END AS histologic_type_3,
                    case
                        when (
                            CHAR_LENGTH(histologic_type_1) - CHAR_LENGTH(
                                replace (histologic_type_1, '|', '')
                            )
                        ) = 8 THEN SUBSTRING_INDEX(
                            SUBSTRING_INDEX(histologic_type_1, '|', 8),
                            '|',
                            -1
                        )
                        ELSE 'NULL'
                    END AS histologic_type_4,
                    IFNULL(
                        REGEXP_SUBSTR(
                            histologic_type_1,
                            '[0-9]+[0-9]?[%%]'
                        ),
                        'NULL'
                    ) AS persent1,
                    IFNULL(
                        REGEXP_SUBSTR(
                            histologic_type_1,
                            '[0-9]+[0-9]?[%%]',
                            1,
                            2
                        ),
                        'NULL'
                    ) AS persent2,
                    IFNULL(
                        REGEXP_SUBSTR(
                            histologic_type_1,
                            '[0-9]+[0-9]?[%%]',
                            1,
                            3
                        ),
                        'NULL'
                    ) AS persent3,
                    NULLIF(
                        REPLACE (
                                REPLACE (
                                        REPLACE (
                                                CONCAT(TA, ',', carcinoma),
                                                '0,',
                                                ''
                                            ),
                                            ',0',
                                            ''
                                    ),
                                    '0',
                                    ''
                            ),
                            ''
                    ) AS histologic_type_5
                FROM(
                        SELECT
                            원무접수ID,
                            환자번호,
                            검사시행일,
                            CASE
                                WHEN VER = 'VER1'
                                OR VER = 'VER2' THEN
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
                                            ),
                                            'non |SRC|',
                                            '|non SRC|'
                                    )
                            END histologic_type_1,
                            CASE
                                WHEN VER = 'VER3'
                                AND INSTR(
                                    histologic_type,
                                    'tubular adenocarcinoma'
                                ) THEN 'TA'
                                WHEN VER = 'VER3'
                                AND INSTR(
                                    histologic_type,
                                    'mucinous adenocarcinoma'
                                ) THEN 'MuA'
                                WHEN VER = 'VER3'
                                AND INSTR(
                                    histologic_type,
                                    'papillary adenocarcinoma'
                                ) THEN 'PA'
                                WHEN VER = 'VER3'
                                AND INSTR(
                                    histologic_type,
                                    'adenocarcinoma'
                                ) THEN 'TA'
                                ELSE 0
                            END AS TA,
                            CASE
                                WHEN VER = 'VER3'
                                AND INSTR(
                                    histologic_type,
                                    'poorly cohesive carcinoma'
                                ) THEN 'PCC'
                                WHEN VER = 'VER3'
                                AND INSTR(
                                    histologic_type,
                                    'signet ring cell carcinoma'
                                ) THEN 'SRC'
                                WHEN VER = 'VER3'
                                AND INSTR(
                                    histologic_type,
                                    'mucinous carcinoma'
                                ) THEN 'MuC'
                                WHEN VER = 'VER3'
                                AND INSTR(
                                    histologic_type,
                                    'medullary carcinoma'
                                ) THEN 'MDCA'
                                WHEN VER = 'VER3'
                                AND INSTR(
                                    histologic_type,
                                    'neuroendocrine carcinoma'
                                ) THEN 'NET'
                                ELSE 0
                            END AS carcinoma
                        FROM (
                                SELECT
                                    원무접수ID,
                                    환자번호,
                                    검사시행일,
                                    CASE
                                        WHEN VER = 'VER1' THEN REGEXP_REPLACE(
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
                                        WHEN VER = 'VER2' THEN REGEXP_REPLACE(
                                            REPLACE (
                                                    REPLACE (
                                                            REPLACE (
                                                                    REPLACE (
                                                                            REPLACE (
                                                                                    TRIM(
                                                                                        TRAILING substr(
                                                                                            histologic_type,
                                                                                            instr(histologic_type, '5')
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
                                        WHEN VER = 'VER3' THEN histologic_type
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
                                                ELSE SUBSTRING_INDEX(병리진단, '\n', 6)
                                            END AS histologic_type,
                                            CASE
                                                WHEN instr(
                                                    병리진단,
                                                    'WHO classification (Histologic Type)'
                                                ) != 0 THEN 'VER1'
                                                WHEN instr(병리진단, 'histologic type') THEN 'VER2'
                                                ELSE 'VER3'
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
            ) biopsy
    ) biopsy