SELECT
    원무접수ID,
    substr(Ki_67, 1, instr(Ki_67, ',') -1) as Ki_67,
    replace(substr(Ki_67, instr(Ki_67, ',') + 1), ',', '') as Ki_67_p
FROM
    (
        SELECT
            원무접수ID,
            REGEXP_REPLACE(
                replace(replace(Ki_67, '67', ''), '-', '-,'),
                '[(|)|.|:|;|/|!]',
                ''
            ) as Ki_67
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when (length(Ki_67) - length(replace(Ki_67, '!', ''))) / length('!') > 1 then substr(Ki_67, instr(Ki_67, '67 !('), instr(Ki_67, ')'))
                        when (length(Ki_67) - length(replace(Ki_67, '!', ''))) / length('!') = 1 then substr(Ki_67, instr(Ki_67, '!'))
                        else Ki_67
                    end as Ki_67
                FROM
                    (
                        SELECT
                            원무접수ID,
                            case
                                when instr(Ki_67, '&') != 0
                                or instr(Ki_67, 'and') != 0 then replace(Ki_67, '(', '!(')
                                when instr(Ki_67, 'Ki-67 labeling index') != 0 then concat(
                                    concat(
                                        substr(
                                            Ki_67,
                                            instr(Ki_67, 'Ki-67 labeling index'),
                                            LENGTH('Ki-67 labeling index')
                                        ),
                                        '!'
                                    ),
                                    substr(
                                        Ki_67,
                                        instr(Ki_67, 'Ki-67 labeling index') + LENGTH('Ki-67 labeling index') + 1
                                    )
                                )
                                when instr(Ki_67, 'Ki-67 index') != 0 then concat(
                                    concat(
                                        substr(
                                            Ki_67,
                                            instr(Ki_67, 'Ki-67 index'),
                                            LENGTH('Ki-67 index')
                                        ),
                                        '!'
                                    ),
                                    substr(
                                        Ki_67,
                                        instr(Ki_67, 'Ki-67 index') + LENGTH('Ki-67 index') + 1
                                    )
                                )
                                else concat(
                                    concat(
                                        substr(Ki_67, instr(Ki_67, 'Ki-67'), LENGTH('Ki-67')),
                                        '!'
                                    ),
                                    substr(Ki_67, instr(Ki_67, 'Ki-67') + LENGTH('Ki-67') + 1)
                                )
                            end as Ki_67
                        FROM
                            (
                                SELECT
                                    원무접수ID,
                                    replace(
                                        replace(
                                            replace(
                                                replace(
                                                    replace(
                                                        Ki_67,
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
                                    ) as Ki_67
                                FROM
                                    genetic_step_02
                            ) genetic
                    ) genetic
            ) genetic
    ) genetic