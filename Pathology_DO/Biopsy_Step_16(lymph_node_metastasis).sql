SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    판독의,
    lymph_node, (
        slash_01 + slash_02 + slash_03 + slash_04 + slash_05 + slash_06 + slash_07 + slash_08 + slash_09 + slash_10 + slash_11 + slash_12 + slash_13
    ) AS metLN, (
        slash2_01 + slash2_02 + slash2_03 + slash2_04 + slash2_05 + slash2_06 + slash2_07 + slash2_08 + slash2_09 + slash2_10 + slash2_11 + slash2_12 + slash2_13
    ) AS harvLN
FROM(
        SELECT *, 
        IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 1),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_01,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 2),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_02,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 3),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_03,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 4),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_04,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 5),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_05,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 6),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_06,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 7),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_07,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 8),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_08,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 9),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_09,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 10),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_10,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 11),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_11,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 12),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_12,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[0-9]+[/]', 1, 13),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash_13,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 1),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_01,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 2),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_02,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 3),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_03,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 4),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_04,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 5),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_05,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 6),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_06,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 7),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_07,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 8),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_08,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 9),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_09,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 10),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_10,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 11),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_11,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 12),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_12,
            IFNULL(
                REPLACE (
                        REGEXP_SUBSTR(lymph_node, '[/][0-9]+', 1, 13),
                        '/',
                        ''
                    ),
                    '0'
            ) AS slash2_13
        FROM(
                SELECT
                    *,
                    SUBSTRING_INDEX(
                        SUBSTR(
                            병리진단,
                            REGEXP_INSTR(병리진단, '[(][0-9]+[/][0-9]+.')
                        ),
                        ')',
                        1
                    ) AS lymph_node
                FROM
                    biopsy_step_01
            ) a
    ) a