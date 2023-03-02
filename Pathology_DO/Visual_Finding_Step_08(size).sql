SELECT
    ID,
    CHKID,
    Date,
    육안소견,
    판독의,
    case
        when TumorSize_maj is not null
        and TumorSize_min is not null then concat(
            concat(TumorSize_maj, ' x '),
            TumorSize_min
        )
    end as TumorSize
FROM (
        SELECT
            ID,
            CHKID,
            Date,
            육안소견,
            판독의,
            case
                when instr(Tumor_size1, ' mm') != 0
                OR instr(Tumor_size2, ' mm') != 0
                OR instr(Tumor_size3, ' mm') != 0 then TumorSize_maj * 0.1
                else TumorSize_maj
            end as TumorSize_maj,
            case
                when instr(Tumor_size1, ' mm') != 0
                OR instr(Tumor_size2, ' mm') != 0
                OR instr(Tumor_size3, ' mm') != 0 then TumorSize_min * 0.1
                else TumorSize_min
            end as TumorSize_min
        FROM(
                SELECT
                    ID,
                    CHKID,
                    Date,
                    육안소견,
                    판독의,
                    Tumor_size1,
                    Tumor_size2,
                    Tumor_size3,
                    CONVERT(
                        SUBSTRING_INDEX(NULLIF(size, ''), 'x', 1),
                        DECIMAL(5, 2)
                    ) AS TumorSize_maj,
                    CONVERT(
                        SUBSTRING_INDEX(
                            SUBSTRING_INDEX(NULLIF(size, ''), 'x', 2),
                            'x',
                            -1
                        ),
                        DECIMAL(5, 2)
                    ) AS TumorSize_min
                FROM(
                        SELECT
                            *,
                            CASE
                                WHEN Tumor_size2 IS NOT NULL THEN CASE
                                    WHEN REGEXP_INSTR(
                                        Tumor_size2,
                                        '[0-9]+[.]?[0-9]?[0-9]?[ ]?[x][ ]?[0-9]+[.]?[0-9]?[0-9]?'
                                    ) != 0 THEN REGEXP_SUBSTR(
                                        Tumor_size2,
                                        '[0-9]+[.]?[0-9]?[0-9]?[ ]?[x][ ]?[0-9]+[.]?[0-9]?[0-9]?[ ]?'
                                    )
                                    ELSE TRIM(
                                        REPLACE (Tumor_size2, ':', '')
                                    )
                                END
                                WHEN Tumor_size1 IS NOT NULL THEN CASE
                                    WHEN REGEXP_INSTR(
                                        Tumor_size1,
                                        '[0-9]+[.]?[0-9]?[0-9]?[ ]?[x][ ]?[0-9]+[.]?[0-9]?[0-9]?'
                                    ) != 0 THEN REGEXP_SUBSTR(
                                        Tumor_size1,
                                        '[0-9]+[.]?[0-9]?[0-9]?[ ]?[x][ ]?[0-9]+[.]?[0-9]?[0-9]?[ ]?'
                                    )
                                    ELSE TRIM(
                                        CONCAT(
                                            REPLACE (
                                                    REGEXP_REPLACE(Tumor_size1, '[:|;]', ''),
                                                    'size',
                                                    ''
                                                ),
                                                'cm'
                                        )
                                    )
                                END
                                WHEN Tumor_size3 IS NOT NULL THEN CASE
                                    WHEN REGEXP_INSTR(
                                        Tumor_size3,
                                        '[0-9]+[.]?[0-9]?[0-9]?[ ]?[x][ ]?[0-9]+[.]?[0-9]?[0-9]?'
                                    ) != 0 THEN REGEXP_SUBSTR(
                                        Tumor_size3,
                                        '[0-9]+[.]?[0-9]?[0-9]?[ ]?[x][ ]?[0-9]+[.]?[0-9]?[0-9]?[ ]?'
                                    )
                                    ELSE
                                    REPLACE
(
                                            REPLACE
(
                                                    REPLACE (
                                                            SUBSTRING_INDEX(
                                                                SUBSTRING_INDEX(Tumor_size3, 'measur', -1),
                                                                'cm',
                                                                1
                                                            ),
                                                            'es',
                                                            ''
                                                        ),
                                                        'ing',
                                                        ''
                                                ),
                                                'about',
                                                ''
                                        )
                                END
                            END AS size
                        FROM
                            visual_findings_step07
                    ) size
            ) size
    ) size