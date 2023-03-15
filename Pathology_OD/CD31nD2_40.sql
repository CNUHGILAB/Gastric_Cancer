SELECT
    원무접수ID,
    substr(CD31_N_D2_40, 1, instr(CD31_N_D2_40, ',') -1) as CD31_N_D2_40_1,
    replace(
        substr(CD31_N_D2_40, instr(CD31_N_D2_40, ',') + 1),
        ',',
        ''
    ) as CD31_N_D2_40_2
FROM
    (
        SELECT
            원무접수ID,
            REGEXP_REPLACE(
                replace(replace(CD31_N_D2_40, '40', ''), '-', '-,'),
                '[(|)|.|:|;|/|!]',
                ''
            ) as CD31_N_D2_40
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when (
                            length(CD31_N_D2_40) - length(replace(CD31_N_D2_40, '!', ''))
                        ) / length('!') > 1 then substr(
                            CD31_N_D2_40,
                            instr(CD31_N_D2_40, '40 !('),
                            instr(CD31_N_D2_40, ')')
                        )
                        when (
                            length(CD31_N_D2_40) - length(replace(CD31_N_D2_40, '!', ''))
                        ) / length('!') = 1 then substr(CD31_N_D2_40, instr(CD31_N_D2_40, '!'))
                        else CD31_N_D2_40
                    end as CD31_N_D2_40
                FROM
                    (
                        SELECT
                            원무접수ID,
                            case
                                when instr(CD31_N_D2_40, '&') != 0 then replace(CD31_N_D2_40, '(', '!(')
                                else concat(
                                    concat(
                                        substr(
                                            CD31_N_D2_40,
                                            instr(CD31_N_D2_40, 'CD31 and D2-40'),
                                            LENGTH('CD31 and D2-40')
                                        ),
                                        '!'
                                    ),
                                    substr(
                                        CD31_N_D2_40,
                                        instr(CD31_N_D2_40, 'CD31 and D2-40') + LENGTH('CD31 and D2-40') + 1
                                    )
                                )
                            end as CD31_N_D2_40
                        FROM
                            (
                                SELECT
                                    원무접수ID,
                                    replace(
                                        replace(
                                            CD31_N_D2_40,
                                            'positive',
                                            '(+,)'
                                        ),
                                        'negative',
                                        '(-,)'
                                    ) as CD31_N_D2_40
                                FROM
                                    genetic_step_02
                            ) genetic
                    ) genetic
            ) genetic
    ) genetic