SELECT
    원무접수ID,
    TRIM(
        BOTH
        FROM
            Giemsa
    ) as Giemsa
FROM
    (
        SELECT
            원무접수ID,
            REGEXP_REPLACE(
                REGEXP_REPLACE(
                    REGEXP_REPLACE(replace(Giemsa, '-', '-,'), '[(|)|.|:|;|/|!|,]', ''),
                    '[0-9]',
                    ''
                ),
                '[a-z]',
                ''
            ) as Giemsa
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when (length(Giemsa) - length(replace(Giemsa, '!', ''))) / length('!') > 1 then substr(Giemsa, instr(Giemsa, '!('), instr(Giemsa, ')') + 1)
                        when (length(Giemsa) - length(replace(Giemsa, '!', ''))) / length('!') = 1 then substr(Giemsa, instr(Giemsa, '!'))
                        else Giemsa
                    end as Giemsa
                FROM
                    (
                        SELECT
                            원무접수ID,
                            case
                                when instr(Giemsa, '&') != 0
                                or instr(Giemsa, 'and') != 0 then replace(Giemsa, '(', '!(')
                                when instr(Giemsa, 'H.pylori') != 0 then concat(
                                    concat(
                                        substr(
                                            Giemsa,
                                            instr(Giemsa, 'H.pylori'),
                                            LENGTH('H.pylori')
                                        ),
                                        '!'
                                    ),
                                    substr(
                                        Giemsa,
                                        instr(Giemsa, 'H.pylori') + LENGTH('H.pylori') + 1
                                    )
                                )
                                else concat(
                                    concat(
                                        substr(Giemsa, instr(Giemsa, 'Giemsa'), LENGTH('Giemsa')),
                                        '!'
                                    ),
                                    substr(Giemsa, instr(Giemsa, 'Giemsa') + LENGTH('Giemsa') + 1)
                                )
                            end as Giemsa
                        FROM
                            (
                                SELECT
                                    원무접수ID,
                                    replace(
                                        replace(
                                            Giemsa,
                                            'positive',
                                            '(+,)'
                                        ),
                                        'negative',
                                        '(-,)'
                                    ) as Giemsa
                                FROM
                                    genetic_15
                            ) genetic
                    ) genetic
            ) genetic
    ) genetic
WHERE
    nullif(Giemsa, '') is not null