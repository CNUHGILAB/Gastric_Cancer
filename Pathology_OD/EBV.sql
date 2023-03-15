SELECT
    원무접수ID,
    TRIM(
        BOTH
        FROM
            replace(EBV, '-   -', '검토')
    ) as EBV
FROM
    (
        SELECT
            원무접수ID,
            REGEXP_REPLACE(
                REGEXP_REPLACE(
                    REGEXP_REPLACE(replace(EBV, '-', '-,'), '[(|)|.|:|;|/|!|,]', ''),
                    '[0-9]',
                    ''
                ),
                '[a-z]',
                ''
            ) as EBV
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when (length(EBV) - length(replace(EBV, '!', ''))) / length('!') > 1 then substr(EBV, instr(EBV, '!('), instr(EBV, ')') + 1)
                        when (length(EBV) - length(replace(EBV, '!', ''))) / length('!') = 1 then substr(EBV, instr(EBV, '!'))
                        else EBV
                    end as EBV
                FROM
                    (
                        SELECT
                            원무접수ID,
                            case
                                when instr(EBV, '&') != 0
                                or instr(EBV, 'and') != 0 then replace(EBV, '(', '!(')
                                when instr(EBV, 'hybridization') != 0 then concat(
                                    concat(
                                        substr(
                                            EBV,
                                            instr(EBV, 'hybridization'),
                                            LENGTH('hybridization')
                                        ),
                                        '!'
                                    ),
                                    substr(
                                        EBV,
                                        instr(EBV, 'hybridization') + LENGTH('hybridization') + 1
                                    )
                                )
                                else concat(
                                    concat(substr(EBV, instr(EBV, 'situ'), LENGTH('situ')), '!'),
                                    substr(EBV, instr(EBV, 'situ') + LENGTH('situ') + 1)
                                )
                            end as EBV
                        FROM
                            (
                                SELECT
                                    원무접수ID,
                                    replace(
                                        replace(
                                            EBV,
                                            'positive',
                                            '(+,)'
                                        ),
                                        'negative',
                                        '(-,)'
                                    ) as EBV
                                FROM
                                    genetic_step_02
                            ) genetic
                    ) genetic
            ) genetic
    ) genetic
WHERE
    nullif(EBV, '') is not null