SELECT
    원무접수ID,
    substr(p53, 1, instr(p53, ',') -1) as p53,
    replace(substr(p53, instr(p53, ',') + 1), ',', '') as p53_p
FROM
    (
        SELECT
            원무접수ID,
            REGEXP_REPLACE(
                replace(replace(p53, 'p53', ''), '-', '-,'),
                '[(|)|.|:|;|/|!]',
                ''
            ) as p53
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when (length(p53) - length(replace(p53, '!', ''))) / length('!') > 1 then substr(p53, instr(p53, 'p53 !('), instr(p53, ')'))
                        when (length(p53) - length(replace(p53, '!', ''))) / length('!') = 1 then substr(p53, instr(p53, '!'))
                        else p53
                    end as p53
                FROM
                    (
                        SELECT
                            원무접수ID,
                            case
                                when instr(p53, '&') != 0
                                or instr(p53, 'and') != 0 then replace(p53, '(', '!(')
                                when instr(p53, 'p53 labeling index') != 0 then concat(
                                    concat(
                                        substr(
                                            p53,
                                            instr(p53, 'p53 labeling index'),
                                            LENGTH('p53 labeling index')
                                        ),
                                        '!'
                                    ),
                                    substr(
                                        p53,
                                        instr(p53, 'p53 labeling index') + LENGTH('p53 labeling index') + 1
                                    )
                                )
                                else concat(
                                    concat(
                                        substr(p53, instr(p53, 'p53'), LENGTH('p53')),
                                        '!'
                                    ),
                                    substr(p53, instr(p53, 'p53') + LENGTH('p53') + 1)
                                )
                            end as p53
                        FROM
                            (
                                SELECT
                                    원무접수ID,
                                    replace(
                                        replace(
                                            replace(
                                                replace(
                                                    replace(
                                                        p53,
                                                        'positive',
                                                        '(+,)'
                                                    ),
                                                    'negative',
                                                    '(-,)'
                                                ),
                                                '3+',
                                                '(+++,)'
                                            ),
                                            '2+',
                                            '(++,)'
                                        ),
                                        '1+',
                                        '(+,)'
                                    ) as p53
                                FROM
                                    genetic_step_02
                            ) genetic
                    ) genetic
            ) genetic
    ) genetic