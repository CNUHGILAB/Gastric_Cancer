SELECT
        distinct 환자번호,
        원무접수ID,
        검사시행일,
        replace(
                concat(
                        histologic_type1,
                        histologic_type2,
                        '/ ',
                        histologic_type3,
                        histologic_type4,
                        '/ ',
                        histologic_type5,
                        histologic_type6
                ),
                '/ /',
                ''
        ) as histologic_type,
        histologic_type7 as histologic_type_etc
FROM
        (
                SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        histologic_type,
                        case
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 2 then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(histologic_type, '|', 2),
                                        '|',
                                        -1
                                )
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 1 then SUBSTRING_INDEX(histologic_type, '|', 1)
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 0 then histologic_type
                                else ''
                        end as histologic_type1,
                        case
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 3 then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(histologic_type, '|', 3),
                                        '|',
                                        -1
                                )
                                else ''
                        end as histologic_type2,
                        case
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 4 then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(histologic_type, '|', 4),
                                        '|',
                                        -1
                                )
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 3 then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(histologic_type, '|', 4),
                                        '|',
                                        -1
                                )
                                else ''
                        end as histologic_type3,
                        case
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 5 then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(histologic_type, '|', 5),
                                        '|',
                                        -1
                                )
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 4 then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(histologic_type, '|', 5),
                                        '|',
                                        -1
                                )
                                else ''
                        end as histologic_type4,
                        case
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 6 then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(histologic_type, '|', 6),
                                        '|',
                                        -1
                                )
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 5 then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(histologic_type, '|', 6),
                                        '|',
                                        -1
                                )
                                else ''
                        end as histologic_type5,
                        case
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 7 then  (
                                        SUBSTRING_INDEX(histologic_type, '|', 7),
                                        '|',
                                        -1
                                )
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 6 then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(histologic_type, '|', 7),
                                        '|',
                                        -1
                                )
                                else ''
                        end as histologic_type6,
                        case
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 2 then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(histologic_type, '|', 2),
                                        '|',
                                        + 1
                                )
                                when (
                                        CHAR_LENGTH(histologic_type) - CHAR_LENGTH(replace(histologic_type, '|', ''))
                                ) >= 2 then SUBSTRING_INDEX(
                                        SUBSTRING_INDEX(histologic_type, '|', 3),
                                        '|',
                                        -1
                                )
                                else ''
                        end as histologic_type7
                FROM
                        (
                                SELECT
                                        원무접수ID,
                                        환자번호,
                                        검사시행일,
                                        case
                                                when instr(histologic_type, 'with') != 0
                                                or instr(histologic_type, 'and') != 0
                                                or instr(histologic_type, 'including') != 0
                                                or instr(histologic_type, '+') != 0 then replace(
                                                        replace(
                                                                replace(replace(histologic_type, 'with', ''), 'and', ''),
                                                                'including',
                                                                ''
                                                        ),
                                                        '+',
                                                        ''
                                                )
                                                else histologic_type
                                        end as histologic_type
                                FROM
                                        biopsy_step_08
                        ) biopsy
        ) biopsy