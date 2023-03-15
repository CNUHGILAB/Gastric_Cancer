SELECT
    원무접수ID,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(
                replace(replace(C_kit, 'kit', ''), '-', '-,'),
                '[(|)|.|:|;|/|!|,]',
                ''
            ),
            '[0-9]',
            ''
        ),
        '[a-z]',
        ''
    ) as C_kit
FROM
    (
        SELECT
            원무접수ID,
            case
                when (length(C_kit) - length(replace(C_kit, '!', ''))) / length('!') > 1 then substr(C_kit, instr(C_kit, 'kit !('), instr(C_kit, ')'))
                when (length(C_kit) - length(replace(C_kit, '!', ''))) / length('!') = 1 then substr(C_kit, instr(C_kit, '!'))
                else C_kit
            end as C_kit
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when instr(C_kit, '&') != 0 or instr(C_kit, 'and') != 0 then replace(C_kit, '(', '!(')
                        else concat(
                            concat(
                                substr(C_kit, instr(C_kit, 'C-kit'), LENGTH('C-kit')),
                                '!'
                            ),
                            substr(
                                C_kit,
                                instr(C_kit, 'C-kit') + LENGTH('C-kit') + 1
                            )
                        )
                    end as C_kit
                FROM
                    (
                        SELECT
                            원무접수ID,
                            replace(
                                replace(
                                    C_kit,
                                    'positive',
                                    '(+,)'
                                ),
                                'negative',
                                '(-,)'
                            ) as C_kit
                        FROM
                            genetic_step_02
                    ) genetic
            ) genetic
    ) genetic
WHERE
    nullif(C_kit, '') is not null