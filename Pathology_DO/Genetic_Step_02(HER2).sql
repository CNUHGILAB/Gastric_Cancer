SELECT
    원무접수ID,
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(HER2, '[a-z]', ''),
            '[(|)|.|:|;|/|!]',
            ''
        ),
        '[0-9]',
        ''
    ) AS HER2
FROM
(
        SELECT
            원무접수ID,
            case
                when (length(HER2) - length(replace(HER2, '!', ''))) / length('!') > 1 then substr(HER2, instr(HER2, 'B2 !('))
                when (length(HER2) - length(replace(HER2, '!', ''))) / length('!') = 1 then substr(HER2, instr(HER2, '!('))
                else substr(HER2, instr(HER2, 'B2'))
            end as HER2
        FROM
(
                SELECT
                    원무접수ID,
                    case
                        when instr(HER2, '&') != 0
                        or instr(HER2, 'and') != 0
                        or instr(HER2, ',') != 0 then replace(HER2, '(', '!(')
                        else HER2
                    end AS HER2
                FROM
(
                        SELECT
                            원무접수ID,
                            replace(
                                replace(
                                    replace(
                                        replace(
                                            replace(
                                                HER2,
                                                'positive',
                                                '(+)'
                                            ),
                                            'negative',
                                            '(-)'
                                        ),
                                        '3+',
                                        '(+++)'
                                    ),
                                    '2+',
                                    '(++)'
                                ),
                                '1+',
                                '(+)'
                            ) as HER2
                        FROM
                            genetic_step_02
                    ) genetic
            ) genetic
    ) genetic