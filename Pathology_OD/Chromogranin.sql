SELECT
    원무접수ID,
    TRIM(
        BOTH
        FROM
            Chromogranin
    ) as Chromogranin
FROM
    (
        SELECT
            원무접수ID,
            REGEXP_REPLACE(
                REGEXP_REPLACE(
                    REGEXP_REPLACE(
                        replace(replace(Chromogranin, 'nin', ''), '-', '-,'),
                        '[(|)|.|:|;|/|!|,]',
                        ''
                    ),
                    '[0-9]',
                    ''
                ),
                '[a-z]',
                ''
            ) as Chromogranin
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when (
                            length(Chromogranin) - length(replace(Chromogranin, '!', ''))
                        ) / length('!') > 1 then substr(
                            Chromogranin,
                            instr(Chromogranin, '!('),
                            instr(Chromogranin, ')') + 1
                        )
                        when (
                            length(Chromogranin) - length(replace(Chromogranin, '!', ''))
                        ) / length('!') = 1 then substr(Chromogranin, instr(Chromogranin, '!'))
                        else Chromogranin
                    end as Chromogranin
                FROM
                    (
                        SELECT
                            원무접수ID,
                            case
                                when instr(Chromogranin, '&') != 0
                                or instr(Chromogranin, 'and') != 0 then replace(Chromogranin, '(', '!(')
                                else concat(
                                    concat(
                                        substr(
                                            Chromogranin,
                                            instr(Chromogranin, 'Chromogranin'),
                                            LENGTH('Chromogranin')
                                        ),
                                        '!'
                                    ),
                                    substr(
                                        Chromogranin,
                                        instr(Chromogranin, 'Chromogranin') + LENGTH('Chromogranin') + 1
                                    )
                                )
                            end as Chromogranin
                        FROM
                            (
                                SELECT
                                    원무접수ID,
                                    replace(
                                        replace(
                                            Chromogranin,
                                            'positive',
                                            '(+,)'
                                        ),
                                        'negative',
                                        '(-,)'
                                    ) as Chromogranin
                                FROM
                                    genetic_step_02
                            ) genetic
                    ) genetic
            ) genetic
    ) genetic
WHERE
    nullif(Chromogranin, '') is not null