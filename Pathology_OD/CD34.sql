SELECT
    원무접수ID,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                replace(replace(CD34, '34', ''), '-', '-,'),
                '[(|)|.|:|;|/|!|,]',
                ''
            ),
            '[0-9]',
            ''
        ),
        '[a-z]',
        ''
    ) as CD34
FROM
    (
        SELECT
            원무접수ID,
            case
                when (length(CD34) - length(replace(CD34, '!', ''))) / length('!') > 1 then substr(CD34, instr(CD34, '34 !('), instr(CD34, ')'))
                when (length(CD34) - length(replace(CD34, '!', ''))) / length('!') = 1 then substr(CD34, instr(CD34, '!'))
                else CD34
            end as CD34
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when instr(CD34, '&') != 0
                        or instr(CD34, 'and') != 0 then replace(CD34, '(', '!(')
                        else concat(
                            concat(
                                substr(CD34, instr(CD34, 'CD34'), LENGTH('CD34')),
                                '!'
                            ),
                            substr(CD34, instr(CD34, 'CD34') + LENGTH('CD34') + 1)
                        )
                    end as CD34
                FROM
                    (
                        SELECT
                            원무접수ID,
                            replace(
                                replace(
                                    CD34,
                                    'positive',
                                    '(+,)'
                                ),
                                'negative',
                                '(-,)'
                            ) as CD34
                        FROM
                            genetic_step_02
                    ) genetic
            ) genetic
    ) genetic
WHERE
    nullif(CD34, '') is not null