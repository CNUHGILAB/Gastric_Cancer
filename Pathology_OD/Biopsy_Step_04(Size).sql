SELECT
    distinct 원무접수ID,
    환자번호,
    검사시행일,
    case
        when TumorSize_maj is not null
        and TumorSize_min is not null then concat(
            concat(TumorSize_maj, ' x '),
            TumorSize_min
        )
    end as TumorSize,
    Size_Cmt,
    CASE
        WHEN (
            TumorSize_maj is null
            OR TumorSize_min is null
        ) THEN 병리진단
    END AS undecided
FROM (
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            병리진단,
            case
                when instr(Size_Cmt, 'mm') != 0 then TumorSize_maj * 0.1
                else TumorSize_maj
            end as TumorSize_maj,
            case
                when instr(Size_Cmt, 'mm') != 0 then TumorSize_min * 0.1
                else TumorSize_min
            end as TumorSize_min,
        replace (
                substr(
                    Size_Cmt,
                    instr(Size_Cmt, 'mm') + 2
                ),
                '.',
                ''
            ) as Size_Cmt
        FROM (
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    병리진단,
                    size,
                REPLACE (
                        REPLACE (
                                REGEXP_REPLACE(
                                    size,
                                    '[0-9]+[.]?[0-9]?[0-9]?[ ]?[x][ ]?[0-9]+[.]?[0-9]?[0-9]?[ ]?',
                                    ''
                                ),
                                'Size',
                                ''
                            ),
                            'cm',
                            ''
                    ) AS Size_Cmt,
                    CASE
                        WHEN NULLIF(size, '') IS NULL THEN NULL
                        WHEN REGEXP_INSTR(
                            size,
                            '[0-9]+[.]?[0-9]?[0-9]?[ ]?[x][ ]?[0-9]+[.]?[0-9]?[0-9]?'
                        ) != 0 
                        THEN CONVERT(
                            SUBSTRING_INDEX(
                                REGEXP_SUBSTR(
                                    size,
                                    '[0-9]+[.]?[0-9]?[0-9]?[ ]?[x][ ]?[0-9]+[.]?[0-9]?[0-9]?'
                                ),
                                'x',
                                1
                            ),
                            DECIMAL(5, 2)
                        )
                        WHEN INSTR(size, 'x') != 0 THEN CONVERT(
                            REPLACE (
                                    REGEXP_REPLACE(
                                        REGEXP_REPLACE(
                                            SUBSTRING_INDEX(size, 'x', 1),
                                            '[a-z]',
                                            ''
                                        ),
                                        '[가-힣]',
                                        ''
                                    ),
                                    ')',
                                    ''
                                ),
                                DECIMAL(5, 2)
                        )
                    END AS TumorSize_maj,
                    CASE
                        WHEN NULLIF(size, '') IS NULL THEN NULL
                        WHEN REGEXP_INSTR(
                            size,
                            '[0-9]+[.]?[0-9]?[0-9]?[ ]?[x][ ]?[0-9]+[.]?[0-9]?[0-9]?'
                        ) != 0 THEN CONVERT(
                            SUBSTRING_INDEX(
                                REGEXP_SUBSTR(
                                    size,
                                    '[0-9]+[.]?[0-9]?[0-9]?[ ]?[x][ ]?[0-9]+[.]?[0-9]?[0-9]?'
                                ),
                                'x',
                                -1
                            ),
                            DECIMAL(5, 2)
                        )
                        WHEN INSTR(size, 'x') != 0 THEN CONVERT(
                            REPLACE (
                                    REGEXP_REPLACE(
                                        REGEXP_REPLACE(
                                            SUBSTRING_INDEX(
                                                SUBSTRING_INDEX(size, 'x', 2),
                                                'x',
                                                -1
                                            ),
                                            '[a-z]',
                                            ''
                                        ),
                                        '[가-힣]',
                                        ''
                                    ),
                                    ')',
                                    ''
                                ),
                                DECIMAL(5, 2)
                        )
                    END AS TumorSize_min
                FROM (
                        SELECT
                            원무접수ID,
                            환자번호,
                            검사시행일,
                            병리진단,
                            REGEXP_REPLACE(
                                replace (
                                        TRIM(
                                            TRAILING substr(size, instr(size, '\n'))
                                            FROM
                                                size
                                        ),
                                        'size',
                                        ''
                                    ),
                                    '[(|;|:|-|)]',
                                    ''
                            ) AS size
                        FROM (
                                SELECT
                                    원무접수ID,
                                    환자번호,
                                    검사시행일,
                                    병리진단,
                                    substr(병리진단, instr(병리진단, 'size')) as size
                                FROM
                                    biopsy_step_01
                            ) biopsy
                    ) biopsy
            ) biopsy
    ) biopsy