SELECT
    원무접수ID,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                replace(replace(SMA, 'SMA', ''), '-', '-,'),
                '[(|)|.|:|;|/|!|,]',
                ''
            ),
            '[0-9]',
            ''
        ),
        '[a-z]',
        ''
    ) as SMA
FROM
    (
        SELECT
            원무접수ID,
            case
                when (length(SMA) - length(replace(SMA, '!', ''))) / length('!') > 1 then substr(SMA, instr(SMA, 'SMA !('), instr(SMA, ')'))
                when (length(SMA) - length(replace(SMA, '!', ''))) / length('!') = 1 then substr(SMA, instr(SMA, '!'))
                else SMA
            end as SMA
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when instr(SMA, '&') != 0
                        or instr(SMA, 'and') != 0 then replace(SMA, '(', '!(')
                        when instr(SMA, 'Smooth muscle actin') != 0 then concat(
                            concat(
                                substr(
                                    SMA,
                                    instr(SMA, 'Smooth muscle actin'),
                                    LENGTH('Smooth muscle actin')
                                ),
                                '!'
                            ),
                            substr(
                                SMA,
                                instr(SMA, 'Smooth muscle actin') + LENGTH('Smooth muscle actin') + 1
                            )
                        )
                        else concat(
                            concat(substr(SMA, instr(SMA, 'SMA'), LENGTH('SMA')), '!'),
                            substr(SMA, instr(SMA, 'SMA') + LENGTH('SMA') + 1)
                        )
                    end as SMA
                FROM
                    (
                        SELECT
                            원무접수ID,
                            replace(
                                replace(
                                    SMA,
                                    'positive',
                                    '(+,)'
                                ),
                                'negative',
                                '(-,)'
                            ) as SMA
                        FROM
                            genetic_step_02
                    ) genetic
            ) genetic
    ) genetic
WHERE
    nullif(SMA, '') is not null