SELECT
        원무접수ID,
        환자번호,
        검사시행일,
        case
                when (
                        LENGTH(gross_type) - LENGTH(REPLACE(gross_type, 'type', ''))
                ) / LENGTH('type') = 1 
                then SUBSTRING_INDEX(gross_type, 'type', 1)
        end as gross_type_1,
        case
                when (
                        LENGTH(gross_type) - LENGTH(REPLACE(gross_type, 'type', ''))
                ) / LENGTH('type') = 1 
                then SUBSTRING_INDEX(gross_type, 'type', -1)
        end as gross_type_int_1,
        case
                when (
                        LENGTH(gross_type) - LENGTH(REPLACE(gross_type, 'type', ''))
                ) / LENGTH('type') = 0 then gross_type
        end as gross_type_o,
        SUBSTRING_INDEX(Early_gastric_cancer_1, 'type', 1) as gross_type_2,
        replace(
                SUBSTRING_INDEX(
                        SUBSTRING_INDEX(Early_gastric_cancer_1, '(', 1),
                        'type',
                        -1
                ),
                ',',
                ''
        ) as gross_type_int_2
FROM
(
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
                                                                                                                case
                                                                                                                        when nullif(histologic_type_2, '') is not null then REGEXP_REPLACE(
                                                                                                                                replace(
                                                                                                                                        replace(
                                                                                                                                                replace(
                                                                                                                                                        TRIM(
                                                                                                                                                                TRAILING substr(gross_type, instr(gross_type, '3)'))
                                                                                                                                                                from
                                                                                                                                                                        gross_type
                                                                                                                                                        ),
                                                                                                                                                        'Gross type',
                                                                                                                                                        ''
                                                                                                                                                ),
                                                                                                                                                '\n',
                                                                                                                                                ''
                                                                                                                                        ),
                                                                                                                                        '   -',
                                                                                                                                        ''
                                                                                                                                ),
                                                                                                                                '[,|(|.|;|:|)]',
                                                                                                                                ''
                                                                                                                        )
                                                                                                                        else REGEXP_REPLACE(
                                                                                                                                replace(
                                                                                                                                        replace(
                                                                                                                                                replace(
                                                                                                                                                        TRIM(
                                                                                                                                                                TRAILING substr(gross_type, instr(gross_type, '\n'))
                                                                                                                                                                from
                                                                                                                                                                        gross_type
                                                                                                                                                        ),
                                                                                                                                                        'gross type',
                                                                                                                                                        ''
                                                                                                                                                ),
                                                                                                                                                'Gross type',
                                                                                                                                                ''
                                                                                                                                        ),
                                                                                                                                        'EGC type (I, IIa, IIb, IIc, III)  Borrmann type (1,2,3,4, unclassifiable)',
                                                                                                                                        ''
                                                                                                                                ),
                                                                                                                                '[,|(|.|;|:|)]',
                                                                                                                                ''
                                                                                                                        )
                                                                                                                end,
                                                                                                                'Early gastric cancer',
                                                                                                                'EGC'
                                                                                                        ),
                                                                                                        'Early gatric cancer',
                                                                                                        'EGC'
                                                                                                ),
                                                                                                'EGC EGC',
                                                                                                'EGC'
                                                                                        ),
                                                                                        'Advanced cancer',
                                                                                        ''
                                                                                ),
                                                                                'Advanced gastric cancer',
                                                                                'AGC'
                                                                        ),
                                                                        'aGC',
                                                                        'AGC'
                                                                ),
                                                                'type',
                                                                ''
                                                        ),
                                                        'Type',
                                                        ''
                                                ),
                                                'AGC',
                                                'AGC type'
                                        ),
                                        'Borrmann',
                                        'Borrmann type'
                                ),
                                'EGC',
                                'EGC type'
                        ) as gross_type,
                        replace(
                                replace(
                                        replace(
                                                replace(
                                                        replace(
                                                                replace(
                                                                        replace(
                                                                                replace(
                                                                                        REGEXP_REPLACE(
                                                                                                TRIM(
                                                                                                        TRAILING substr(
                                                                                                                Early_gastric_cancer,
                                                                                                                instr(Early_gastric_cancer, '\n')
                                                                                                        )
                                                                                                        from
                                                                                                                Early_gastric_cancer
                                                                                                ),
                                                                                                '[.|;|:]',
                                                                                                ''
                                                                                        ),
                                                                                        'Type',
                                                                                        ''
                                                                                ),
                                                                                'type',
                                                                                ''
                                                                        ),
                                                                        'TYPE',
                                                                        ''
                                                                ),
                                                                'EGC',
                                                                'EGC type'
                                                        ),
                                                        'early gastric cancer',
                                                        'EGC type'
                                                ),
                                                'Early gastric cancer',
                                                'EGC type'
                                        ),
                                        'EGC type (EGC)',
                                        'EGC type'
                                ),
                                'EARLY GASTRIC CANCER',
                                'EGC type'
                        ) as Early_gastric_cancer_1
                FROM(
                                SELECT
                                        원무접수ID,
                                        환자번호,
                                        검사시행일,
                                        substr(
                                                병리진단,
                                                instr(병리진단, 'WHO classification (Histologic Type)')
                                        ) as histologic_type_2,
                                        substr(병리진단, instr(병리진단, 'gross type')) as gross_type,
                                        substr(병리진단, instr(병리진단, 'Early gastric cancer')) as Early_gastric_cancer
                                FROM
                                        biopsy_step_01
                        ) biopsy
        ) biopsy