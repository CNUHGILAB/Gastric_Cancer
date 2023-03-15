SELECT
        원무접수ID,
        환자번호,
        검사시행일,
        replace(
                replace(
                        replace(
                                replace(
                                        replace(
                                                replace(
                                                        replace(
                                                                replace(
                                                                        replace(
                                                                                replace(
                                                                                        replace(
                                                                                                replace(
                                                                                                        replace(
                                                                                                                replace(
                                                                                                                        replace(
                                                                                                                                replace(
                                                                                                                                        replace(
                                                                                                                                                replace(
                                                                                                                                                        replace(
                                                                                                                                                                replace(
                                                                                                                                                                        replace(
                                                                                                                                                                                replace(
                                                                                                                                                                                        histologic_type,
                                                                                                                                                                                        ',',
                                                                                                                                                                                        ''
                                                                                                                                                                                ),
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
        ) as histologic_type
FROM
        (
                SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        case
                                when nullif(histologic_type_2, '') is not null then REGEXP_REPLACE(
                                        replace(
                                                replace(
                                                        replace(
                                                                TRIM(
                                                                        TRAILING substr(
                                                                                histologic_type_2,
                                                                                instr(histologic_type_2, 'Tumor Site')
                                                                        )
                                                                        from
                                                                                histologic_type_2
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
                                WHEN nullif(histologic_type, '') is not null THEN REGEXP_REPLACE(
                                        replace(
                                                replace(
                                                        replace(
                                                                replace(
                                                                        replace(
                                                                                TRIM(
                                                                                        TRAILING substr(histologic_type, instr(histologic_type, '\n'))
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
                                ELSE 
                                SUBSTRING_INDEX(병리진단, '1)', 1)
                        end as histologic_type
                FROM
                        (
                                SELECT
                                        원무접수ID,
                                        환자번호,
                                        검사시행일,
                                        병리진단,
                                        substr(병리진단, instr(병리진단, 'histologic type')) as histologic_type,
                                        substr(
                                                병리진단,
                                                instr(병리진단, 'WHO classification (Histologic Type)')
                                        ) as histologic_type_2
                                FROM
                                        biopsy_step_01
                        ) biopsy
        ) biopsy