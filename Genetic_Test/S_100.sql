SELECT
    원무접수ID,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                replace(replace(S_100, 'ein', ''), '-', '-,'),
                '[(|)|.|:|;|/|!|,]',
                ''
            ),
            '[0-9]',
            ''
        ),
        '[a-z]',
        ''
    ) as S_100
FROM
    (
        SELECT
            원무접수ID,
            case
                when (length(S_100) - length(replace(S_100, '!', ''))) / length('!') > 1
                then substr(S_100, instr(S_100, 'ein !('), instr(S_100, ')'))
                when (length(S_100) - length(replace(S_100, '!', ''))) / length('!') = 1
                then substr(S_100, instr(S_100, '!'))
                else S_100
            end as S_100
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when instr(S_100, '&') != 0
                        or instr(S_100, 'and') != 0 then replace(S_100, '(', '!(')
                        else concat(
                            concat(
                                substr(
                                    S_100,
                                    instr(S_100, 'S-100 protein'),
                                    LENGTH('S-100 protein')
                                ),
                                '!'
                            ),
                            substr(
                                S_100,
                                instr(S_100, 'S-100 protein') + LENGTH('S-100 protein') + 1
                            )
                        )
                    end as S_100
                FROM
                    (
                        SELECT
                            원무접수ID,
                            replace(
                                replace(
                                    REPLACE(
                                        S_100, 'S100', 'S-100'
                                    ), 'positive', '(+,)'
                                ), 'negative', '(-,)'
                            ) as S_100
                        FROM genetic_10
                    ) genetic
            ) genetic
    ) genetic
WHERE
    nullif(S_100, '') is not null