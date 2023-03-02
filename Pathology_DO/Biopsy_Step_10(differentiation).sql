SELECT
    DISTINCT 환자번호,
    원무접수ID,
    검사시행일,
    differentiation,
    diff_num,
    case
        when (
            CHAR_LENGTH(differentiation) - CHAR_LENGTH(
                REPLACE (differentiation, '%%', '')
            )
        ) = 2 then case
            when instr(
                TRIM(
                    TRAILING substr(
                        differentiation,
                        instr(differentiation, 'to')
                    )
                    from
                        differentiation
                ),
                'poorly'
            ) then 'poorly'
            when instr(
                TRIM(
                    TRAILING substr(
                        differentiation,
                        instr(differentiation, 'to')
                    )
                    from
                        differentiation
                ),
                'moderately'
            ) then 'moderately'
            when instr(
                TRIM(
                    TRAILING substr(
                        differentiation,
                        instr(differentiation, 'to')
                    )
                    from
                        differentiation
                ),
                'well'
            ) then 'well'
        end
        when diff_num = 2
        and nullif(test, '') is null then case
            when instr(
                substr(
                    differentiation,
                    instr(differentiation, 'to')
                ),
                'poorly'
            ) then 'poorly'
            when instr(
                substr(
                    differentiation,
                    instr(differentiation, 'to')
                ),
                'moderately'
            ) then 'moderately'
        end
        when diff_num = 2
        and nullif(test, '') is not null then case
            when (100 - test) > test then case
                when instr(
                    TRIM(
                        TRAILING substr(
                            differentiation,
                            instr(differentiation, 'to')
                        )
                        from
                            differentiation
                    ),
                    'poorly'
                ) then 'poorly'
                when instr(
                    TRIM(
                        TRAILING substr(
                            differentiation,
                            instr(differentiation, 'to')
                        )
                        from
                            differentiation
                    ),
                    'moderately '
                ) then 'moderately'
                when instr(
                    TRIM(
                        TRAILING substr(
                            differentiation,
                            instr(differentiation, 'to')
                        )
                        from
                            differentiation
                    ),
                    'well'
                ) then 'well'
            end
            when (100 - test) <= test then case
                when instr(
                    substr(
                        differentiation,
                        instr(differentiation, 'to')
                    ),
                    'poorly'
                ) then 'poorly'
                when instr(
                    substr(
                        differentiation,
                        instr(differentiation, 'to')
                    ),
                    'moderately'
                ) then 'moderately'
                when instr(
                    substr(
                        differentiation,
                        instr(differentiation, 'to')
                    ),
                    'well'
                ) then 'well'
            end
        end
        when diff_num = 2
        and differentiated IS NOT NULL THEN case
            when instr(
                TRIM(
                    TRAILING substr(
                        differentiated,
                        instr(differentiated, 'to')
                    )
                    from
                        differentiated
                ),
                'poorly'
            ) != 0 then 'poorly'
            when instr(
                TRIM(
                    TRAILING substr(
                        differentiated,
                        instr(differentiated, 'to')
                    )
                    from
                        differentiated
                ),
                'moderately'
            ) != 0 then 'moderately'
            when instr(
                TRIM(
                    TRAILING substr(
                        differentiated,
                        instr(differentiated, 'to')
                    )
                    from
                        differentiated
                ),
                'well'
            ) != 0 then 'well'
        end
        else case
            when instr(differentiation, 'poorly') then 'poorly'
            when instr(differentiation, 'moderately') then 'moderately'
            when instr(differentiation, 'well') then 'well'
        end
    end as diff_maj,
    test as diff_p
FROM (
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            CASE
                WHEN differentiation IS NOT NULL THEN differentiation
                WHEN differentiated_2 IS NOT NULL THEN differentiated_2
            END AS differentiation,
            case
                when instr(differentiation, 'to ') != 0 then '2'
                when instr(differentiation, ',') != 0 then '2'
                when instr(differentiation, ' and ') != 0 then '2'
                when instr(differentiated_2, 'to') != 0 
                and (
                    instr(
                        differentiated_2,
                        'Moderately'
                    ) != 0
                    or instr(differentiated_2, 'Well') != 0
                    or instr(differentiated_2, 'Poorly')
                ) != 0 then '2'
                else '1'
            end as diff_num,
        replace (
                TRIM(
                    TRAILING substr(
                        case
                            when instr(test, '%%') = 0 then ''
                            else test
                        end,
                        instr(test, '%%')
                    )
                    from
                        test
                ),
                '%%',
                ''
            ) as test,
            differentiated
        FROM (
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    case
                        when nullif(differentiation, '') is null then differentiation_2
                        else TRIM(
                            BOTH
                            FROM
                                differentiation
                        )
                    end as differentiation,
                    test,
                    differentiated,
                REPLACE (
                        REPLACE (
                                REPLACE (
                                        CONCAT(
                                            diff_poo,
                                            ',',
                                            diff_well,
                                            ',',
                                            diff_mod,
                                            ',',
                                            diff_to
                                        ),
                                        '0,',
                                        ''
                                    ),
                                    ',0',
                                    ''
                            ),
                            '0',
                            ''
                    ) AS differentiated_2
                FROM (
                        SELECT
                            원무접수ID,
                            환자번호,
                            검사시행일,
                            differentiation,
                        replace (
                                case
                                    when (
                                        CHAR_LENGTH(Early_gastric_cancer) - CHAR_LENGTH(
                                            replace (Early_gastric_cancer, ')', '')
                                        )
                                    ) >= 1 then case
                                        when (
                                            CHAR_LENGTH(
                                                SUBSTRING_INDEX(
                                                    SUBSTRING_INDEX(Early_gastric_cancer, ')', 1),
                                                    '(',
                                                    -1
                                                )
                                            ) - CHAR_LENGTH(
                                                replace (
                                                        SUBSTRING_INDEX(
                                                            SUBSTRING_INDEX(Early_gastric_cancer, ')', 1),
                                                            '(',
                                                            -1
                                                        ),
                                                        'differentiated',
                                                        ''
                                                    )
                                            )
                                        ) >= 1 then SUBSTRING_INDEX(
                                            SUBSTRING_INDEX(
                                                SUBSTRING_INDEX(
                                                    SUBSTRING_INDEX(Early_gastric_cancer, ')', 1),
                                                    '(',
                                                    -1
                                                ),
                                                ',',
                                                2
                                            ),
                                            ',',
                                            -1
                                        )
                                    end
                                end,
                                'differentiated',
                                ''
                            ) as differentiation_2,
                            REGEXP_REPLACE(
                                differentiation,
                                '[^0-9%%]',
                                ''
                            ) as test,
                            differentiated,
                            CASE
                                WHEN INSTR(differentiated, 'poorly') != 0 THEN 'Poorly'
                                ELSE 0
                            END AS diff_poo,
                            CASE
                                WHEN INSTR(differentiated, 'well') != 0 THEN 'Well'
                                ELSE 0
                            END AS diff_well,
                            CASE
                                WHEN INSTR(differentiated, 'moderately') != 0 THEN 'Moderately'
                                ELSE 0
                            END AS diff_mod,
                            CASE
                                WHEN INSTR(differentiated, 'to') != 0 THEN 'to'
                                ELSE 0
                            END AS diff_to
                        FROM (
                                SELECT
                                    원무접수ID,
                                    환자번호,
                                    검사시행일,
                                    REGEXP_REPLACE(
                                        replace (
                                                TRIM(
                                                    TRAILING substr(
                                                        differentiation,
                                                        instr(differentiation, '\n')
                                                    )
                                                    from
                                                        differentiation
                                                ),
                                                'differentiation',
                                                ''
                                            ),
                                            '[(|.|;|:]',
                                            ''
                                    ) as differentiation,
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
                                    ) as Early_gastric_cancer,
                                    SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(differentiated, '\n', 4),
                                        '\n',
                                        -1
                                    ) as differentiated
                                FROM (
                                        SELECT
                                            원무접수ID,
                                            환자번호,
                                            검사시행일,
                                            substr(
                                                병리진단,
                                                instr(병리진단, 'differentiation:')
                                            ) as differentiation,
                                            substr(
                                                병리진단,
                                                instr(병리진단, 'Early gastric cancer')
                                            ) as Early_gastric_cancer,
                                            CASE
                                                WHEN instr(병리진단, 'differentiated') != 0 THEN SUBSTRING_INDEX(병리진단, 'differentiated', 1)
                                            END as differentiated
                                        FROM biopsy_step_01
                                    ) biopsy
                            ) biopsy
                    ) biopsy
            ) biopsy
    ) biopsy