SELECT
    원무접수ID,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                replace(replace(s_100, 'ein', ''), '-', '-,'),
                '[(|)|.|:|;|/|!|,]',
                ''
            ),
            '[0-9]',
            ''
        ),
        '[a-z]',
        ''
    ) as s_100
FROM
    (
        SELECT
            원무접수ID,
            case
                when (length(s_100) - length(replace(s_100, '!', ''))) / length('!') > 1 then substr(s_100, instr(s_100, 'ein !('), instr(s_100, ')'))
                when (length(s_100) - length(replace(s_100, '!', ''))) / length('!') = 1 then substr(s_100, instr(s_100, '!'))
                else s_100
            end as s_100
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when instr(s_100, '&') != 0
                        or instr(s_100, 'and') != 0 then replace(s_100, '(', '!(')
                        else concat(
                            concat(
                                substr(
                                    s_100,
                                    instr(s_100, 'S-100 protein'),
                                    LENGTH('S-100 protein')
                                ),
                                '!'
                            ),
                            substr(
                                s_100,
                                instr(s_100, 'S-100 protein') + LENGTH('S-100 protein') + 1
                            )
                        )
                    end as s_100
                FROM
                    (
                        SELECT
                            원무접수ID,
                            replace(
                                replace(
                                    s_100,
                                    'positive',
                                    '(+,)'
                                ),
                                'negative',
                                '(-,)'
                            ) as s_100
                        FROM
                            genetic_step_02
                    ) genetic
            ) genetic
    ) genetic
WHERE
    nullif(s_100, '') is not null