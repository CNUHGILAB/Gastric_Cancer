SELECT
    원무접수ID,
    trim(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                REGEXP_REPLACE(
                    replace(replace(PKC_theta, 'ta', ''), '-', '-,'),
                    '[(|)|.|:|;|/|!|,]',
                    ''
                ),
                '[0-9]',
                ''
            ),
            '[a-z]',
            ''
        )
    ) as PKC_theta
FROM
    (
        SELECT
            원무접수ID,
            case
                when (
                    length(PKC_theta) - length(replace(PKC_theta, '!', ''))
                ) / length('!') > 1 then substr(
                    PKC_theta,
                    instr(PKC_theta, 'ta !('),
                    instr(PKC_theta, ')')
                )
                when (
                    length(PKC_theta) - length(replace(PKC_theta, '!', ''))
                ) / length('!') = 1 then substr(PKC_theta, instr(PKC_theta, '!'))
                else PKC_theta
            end as PKC_theta
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when instr(PKC_theta, '&') != 0
                        or instr(PKC_theta, 'and') != 0 then replace(PKC_theta, '(', '!(')
                        else concat(
                            concat(
                                substr(
                                    PKC_theta,
                                    instr(PKC_theta, 'PKC-theta'),
                                    LENGTH('PKC-theta')
                                ),
                                '!'
                            ),
                            substr(
                                PKC_theta,
                                instr(PKC_theta, 'PKC-theta') + LENGTH('PKC-theta') + 1
                            )
                        )
                    end as PKC_theta
                FROM
                    (
                        SELECT
                            원무접수ID,
                            replace(
                                replace(
                                    PKC_theta,
                                    'positive',
                                    '(+,)'
                                ),
                                'negative',
                                '(-,)'
                            ) as PKC_theta
                        FROM
                            genetic_step_02
                    ) genetic
            ) genetic
    ) genetic
WHERE
    nullif(PKC_theta, '') is not null