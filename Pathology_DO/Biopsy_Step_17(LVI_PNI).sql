SELECT
        DISTINCT
        원무접수ID,
        환자번호,
        검사시행일,
        case
                when nullif(LVI_1, '') is null then 'No'
                when INSTR(LVI_1, 'absent') != 0 then 'No'
                else 'Yes'
        end as LVI,
        LVI_2,
        case
                when nullif(PNI_1, '') is null then 'No'
                when INSTR(PNI_1, 'absent') != 0 then 'No'
                else 'Yes'
        end as PNI,
        PNI_2
FROM
        (
                SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        substr(LVI, 1, instr(LVI, ',') -1) as LVI_1,
                        replace(substr(LVI, instr(LVI, ',') + 1), ',', '') as LVI_2,
                        REGEXP_REPLACE(PNI, '[^[:alnum:][:space:]]+', '') as PNI_1,
                        REGEXP_REPLACE(PNI, '[a-z]', '') as PNI_2
                FROM
                        (
                                SELECT
                                        원무접수ID,
                                        환자번호,
                                        검사시행일,
                                        replace(
                                                replace(
                                                        replace(lymphovascular_invasion, 'pending', 'pending,'),
                                                        'present',
                                                        'present,'
                                                ),
                                                'absent',
                                                'absent,'
                                        ) as LVI,
                                        perineural_invasion as PNI
                                FROM
                                        (
                                                SELECT
                                                        원무접수ID,
                                                        환자번호,
                                                        검사시행일,
                                                        REGEXP_REPLACE(
                                                                replace(
                                                                        replace(
                                                                                TRIM(
                                                                                        TRAILING substr(
                                                                                                lymphovascular_invasion,
                                                                                                instr(lymphovascular_invasion, '\n')
                                                                                        )
                                                                                        from
                                                                                                lymphovascular_invasion
                                                                                ),
                                                                                'lymphovascular invasion',
                                                                                ''
                                                                        ),
                                                                        'Lymphovascular invasion',
                                                                        ''
                                                                ),
                                                                '[(|.|;|:|)]',
                                                                ''
                                                        ) as lymphovascular_invasion,
                                                        REGEXP_REPLACE(
                                                                replace(
                                                                        TRIM(
                                                                                TRAILING substr(
                                                                                        perineural_invasion,
                                                                                        instr(perineural_invasion, '\n')
                                                                                )
                                                                                from
                                                                                        perineural_invasion
                                                                        ),
                                                                        'perineural invasion',
                                                                        ''
                                                                ),
                                                                '[(|.|;|:|)]',
                                                                ''
                                                        ) as perineural_invasion
                                                FROM
                                                        (
                                                                SELECT
                                                                        원무접수ID,
                                                                        환자번호,
                                                                        검사시행일,
                                                                        substr(병리진단, instr(병리진단, 'lymphovascular invasion')) as lymphovascular_invasion,
                                                                        substr(병리진단, instr(병리진단, 'perineural invasion')) as perineural_invasion
                                                                FROM
                                                                        biopsy_step_01
                                                        ) biopsy
                                        ) biopsy
                        ) biopsy
        ) biopsy