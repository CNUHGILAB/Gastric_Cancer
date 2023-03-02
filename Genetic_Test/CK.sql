SELECT
    원무접수ID,
    TRIM(
        BOTH
        FROM
            substr(CK, 1, instr(CK, ',') -1)
    ) as CK_1,
    TRIM(
        BOTH
        FROM
            replace(substr(CK, instr(CK, ',') + 1), ',', '')
    ) as CK_2
FROM
    (
        SELECT
            원무접수ID,
            REGEXP_REPLACE(
                replace(
                    replace(
                        replace(
                            CK,
                            'no tumor metastasis in lymph nodes (A13-A15 B)',
                            ''
                        ),
                        '-',
                        '-,'
                    ),
                    '+',
                    '+,'
                ),
                '[(|)|.|:|;|/|!|]',
                ''
            ) as CK
        FROM
            (
                SELECT
                    원무접수ID,
                    case
                        when (length(CK) - length(replace(CK, '!', ''))) / length('!') > 1 then substr(CK, instr(CK, '!('), instr(CK, ')'))
                        when (length(CK) - length(replace(CK, '!', ''))) / length('!') = 1 then substr(CK, instr(CK, '!'))
                        else CK
                    end as CK
                FROM
                    (
                        SELECT
                            원무접수ID,
                            case
                                when instr(CK, '&') != 0
                                or instr(CK, 'and') != 0 then replace(CK, '(', '!(')
                                when instr(CK, ':') != 0 then replace(CK, ':', '!(')
                                when instr(CK, ';') != 0 then replace(CK, ';', '!(')
                                else concat(
                                    concat(substr(CK, instr(CK, 'CK'), LENGTH('CK')), '!'),
                                    substr(CK, instr(CK, 'CK') + LENGTH('CK') + 1)
                                )
                            end as CK
                        FROM
                            (
                                SELECT
                                    원무접수ID,
                                    replace(
                                        replace(
                                            replace(
                                                CK,
                                                'positive',
                                                '(+)'
                                            ),
                                            'negative',
                                            '(-)'
                                        ),
                                        ',',
                                        ''
                                    ) as CK
                                FROM
                                    genetic_12
                            ) genetic
                    ) genetic
            ) genetic
    ) genetic