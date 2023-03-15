SELECT
    원무접수ID,
    substr(E_Cadherin, 1, instr(E_Cadherin, ',') -1) as E_Cadherin_1,
    replace(
        substr(E_Cadherin, instr(E_Cadherin, ',') + 1),
        ',',
        ''
    ) as E_Cadherin_2
FROM
(
        SELECT
            원무접수ID,
            REGEXP_REPLACE(
                replace(
                    replace(replace(E_Cadherin, 'rin', ''), '-', '-,'),
                    '+',
                    '+,'
                ),
                '[(|)|.|:|;|/|!]',
                ''
            ) as E_Cadherin
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when (
                            length(E_Cadherin) - length(replace(E_Cadherin, '!', ''))
                        ) / length('!') > 1 then substr(
                            E_Cadherin,
                            instr(E_Cadherin, 'rin !('),
                            instr(E_Cadherin, ')')
                        )
                        when (
                            length(E_Cadherin) - length(replace(E_Cadherin, '!', ''))
                        ) / length('!') = 1 then substr(E_Cadherin, instr(E_Cadherin, '!'))
                        else E_Cadherin
                    end as E_Cadherin
                FROM
                    (
                        SELECT
                            원무접수ID,
                            case
                                when instr(E_Cadherin, '&') != 0
                                or instr(E_Cadherin, 'and') != 0 then replace(E_Cadherin, '(', '!(')
                                else concat(
                                    concat(
                                        substr(
                                            E_Cadherin,
                                            instr(E_Cadherin, 'E-Cadherin'),
                                            LENGTH('E-Cadherin')
                                        ),
                                        '!'
                                    ),
                                    substr(
                                        E_Cadherin,
                                        instr(E_Cadherin, 'E-Cadherin') + LENGTH('E-Cadherin') + 1
                                    )
                                )
                            end as E_Cadherin
                        FROM
                            (
                                SELECT
                                    원무접수ID,
                                    replace(
                                        replace(
                                            E_Cadherin,
                                            'positive',
                                            '(+,)'
                                        ),
                                        'negative',
                                        '(-,)'
                                    ) as E_Cadherin
                                FROM
                                    genetic_step_03
                            ) genetic
                    ) genetic
            ) genetic
    ) genetic