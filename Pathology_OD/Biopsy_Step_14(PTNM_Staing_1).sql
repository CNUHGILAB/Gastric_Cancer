SELECT
        DISTINCT 원무접수ID,
        환자번호,
        검사시행일,
        pTNM_VER,
        case
                when nullif(pT_1, '') is null then case
                        when (pT_2 = '(pTNM)') = 1 then concat(
                                concat(pT_4, replace(pT_5, 'p', '')),
                                trim(replace(pT_6, 'Not applicable', 'Mx'))
                        )
                        when nullif(pT_2, '') is not null
                        and nullif(pT_3, '') is not null then concat(
                                concat(
                                        SUBSTRING_INDEX(SUBSTRING_INDEX(pT_2, ')', 1), '(', -1),
                                        replace(
                                                SUBSTRING_INDEX(SUBSTRING_INDEX(pT_3, ')', 1), '(', -1),
                                                'p',
                                                ''
                                        )
                                ),
                                'Mx'
                        )
                        when nullif(pT_2, '') is not null then concat(
                                concat(
                                        SUBSTRING_INDEX(SUBSTRING_INDEX(pT_2, ')', 1), '(', -1),
                                        'Nx'
                                ),
                                'Mx'
                        )
                        when nullif(pT_3, '') is not null then concat(
                                concat(
                                        'pTx',
                                        replace(
                                                SUBSTRING_INDEX(SUBSTRING_INDEX(pT_3, ')', 1), '(', -1),
                                                'p',
                                                ''
                                        )
                                ),
                                'Mx'
                        )
                        else null
                end
                when instr(pT_1, 'M') = 0 then concat(pT_1, 'Mx')
                else pT_1
        end as pT,
        case
                when instr(
                        substr(
                                pT_1,
                                instr(pT_1, 'Comment'),
                                instr(pT_1, ')') - instr(pT_1, 'Comment')
                        ),
                        '2'
                ) != 0 then SUBSTRING_INDEX(`Comment`, '\n', 5)
                when instr(
                        substr(
                                pT_1,
                                instr(pT_1, 'Comment'),
                                instr(pT_1, ')') - instr(pT_1, 'Comment')
                        ),
                        'Comment'
                ) != 0 then SUBSTRING_INDEX(`Comment`, '\n', 3)
        end as `Comment`
FROM
        (
                SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        replace(
                                replace(
                                        replace(
                                                TRIM(
                                                        TRAILING substr(pT_1, instr(pT_1, '\n'))
                                                        from
                                                                pT_1
                                                ),
                                                'pTNM stage (by AJCC 8th edition):',
                                                ''
                                        ),
                                        'pTNM stage',
                                        ''
                                ),
                                ':',
                                ''
                        ) as pT_1,
                        case
                                when nullif(pT_7, '') is not null
                                and nullif(pT_4, '') is null then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(pT_7, 'Lymph Nodes', 1),
                                        'Primary Tumor',
                                        -1
                                )
                                else TRIM(
                                        TRAILING substr(pT_2, instr(pT_2, '\n'))
                                        from
                                                pT_2
                                )
                        end as pT_2,
                        case
                                when nullif(pT_7, '') is not null
                                and nullif(pT_4, '') is null then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(pT_7, 'Distant Metastasis', 1),
                                        'Lymph Nodes',
                                        -1
                                )
                                else TRIM(
                                        TRAILING substr(pT_3, instr(pT_3, '\n'))
                                        from
                                                pT_3
                                )
                        end as pT_3,
                        REGEXP_REPLACE(
                                substr(
                                        SUBSTRING_INDEX(
                                                SUBSTRING_INDEX(pT_4, 'Tumor invades', 1),
                                                'Primary Tumor (pT)',
                                                -1
                                        ),
                                        instr(
                                                SUBSTRING_INDEX(
                                                        SUBSTRING_INDEX(pT_4, 'Tumor invades', 1),
                                                        'Primary Tumor (pT)',
                                                        -1
                                                ),
                                                'pT'
                                        ),
                                        4
                                ),
                                '[:|,]',
                                ''
                        ) as pT_4,
                        replace(
                                substr(
                                        SUBSTRING_INDEX(
                                                SUBSTRING_INDEX(pT_5, 'Greater curvature', 1),
                                                'Lymph Nodes (pN)',
                                                -1
                                        ),
                                        instr(
                                                SUBSTRING_INDEX(
                                                        SUBSTRING_INDEX(pT_5, 'Greater curvature', 1),
                                                        'Lymph Nodes (pN)',
                                                        -1
                                                ),
                                                'pN'
                                        ),
                                        4
                                ),
                                ':',
                                ''
                        ) as pT_5,
                        replace(
                                SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(pT_6, '5) Resection margins', 1),
                                        'Distant Metastasis (pM)',
                                        -1
                                ),
                                '\n',
                                ''
                        ) as pT_6,
                        case
                                when instr(pT_1, 'Comment') != 0 then substr(`Comment`, instr(`Comment`, '* Comment'))
                                else null
                        end as `Comment`,
                        substr(
                                TRIM(
                                        TRAILING substr(pT_1, instr(pT_1, '\n'))
                                        from
                                                pT_1
                                ),
                                instr(pT_1, 'by'),
                                19
                        ) as pTNM_VER
                FROM
                        (
                                SELECT
                                        원무접수ID,
                                        환자번호,
                                        검사시행일,
                                        substr(병리진단, instr(병리진단, 'pTNM stage')) as pT_1,
                                        substr(병리진단, instr(병리진단, '(pT')) as pT_2,
                                        substr(병리진단, instr(병리진단, '(pN')) as pT_3,
                                        substr(병리진단, instr(병리진단, 'Primary Tumor (pT)')) as pT_4,
                                        substr(병리진단, instr(병리진단, 'Lymph Nodes (pN)')) as pT_5,
                                        substr(병리진단, instr(병리진단, 'Distant Metastasis (pM)')) as pT_6,
                                        substr(병리진단, instr(병리진단, 'Pathologic Staging (pTNM)')) as pT_7,
                                        substr(병리진단, instr(병리진단, 'Comment')) as `Comment`
                                FROM
                                        biopsy_step_01 
                        ) biopsy
        ) biopsy