SELECT
        DISTINCT
        원무접수ID,
        환자번호,
        검사시행일,
        replace(replace(검사항목, '0/ ', ''), '/ 0', '') as 검사항목
FROM
        (
                SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        concat(
                                Inspection_item_1,
                                '/ ',
                                Inspection_item_2,
                                '/ ',
                                Inspection_item_3,
                                '/ ',
                                Inspection_item_4,
                                '/ ',
                                Inspection_item_5,
                                '/ ',
                                Inspection_item_6,
                                '/ ',
                                Inspection_item_7,
                                '/ ',
                                Inspection_item_8,
                                '/ ',
                                Inspection_item_9,
                                '/ ',
                                Inspection_item_10,
                                '/ ',
                                Inspection_item_11,
                                '/ ',
                                Inspection_item_12,
                                '/ ',
                                Inspection_item_13,
                                '/ ',
                                Inspection_item_14,
                                '/ ',
                                Inspection_item_15,
                                '/ ',
                                Inspection_item_16,
                                '/ ',
                                Inspection_item_17,
                                '/ ',
                                Inspection_item_18,
                                '/ ',
                                Inspection_item_19,
                                '/ ',
                                Inspection_item_20,
                                '/ ',
                                Inspection_item_21,
                                '/ ',
                                Inspection_item_22,
                                '/ ',
                                Inspection_item_23
                        ) as 검사항목
                FROM
                        (
                                SELECT
                                        원무접수ID,
                                        환자번호,
                                        검사시행일,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        1
                                                ),
                                                0
                                        ) as Inspection_item_1,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        2
                                                ),
                                                0
                                        ) as Inspection_item_2,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        3
                                                ),
                                                0
                                        ) as Inspection_item_3,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        4
                                                ),
                                                0
                                        ) as Inspection_item_4,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        5
                                                ),
                                                0
                                        ) as Inspection_item_5,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        6
                                                ),
                                                0
                                        ) as Inspection_item_6,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        7
                                                ),
                                                0
                                        ) as Inspection_item_7,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        8
                                                ),
                                                0
                                        ) as Inspection_item_8,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        9
                                                ),
                                                0
                                        ) as Inspection_item_9,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        10
                                                ),
                                                0
                                        ) as Inspection_item_10,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        11
                                                ),
                                                0
                                        ) as Inspection_item_11,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        12
                                                ),
                                                0
                                        ) as Inspection_item_12,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        13
                                                ),
                                                0
                                        ) as Inspection_item_13,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        14
                                                ),
                                                0
                                        ) as Inspection_item_14,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        15
                                                ),
                                                0
                                        ) as Inspection_item_15,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        16
                                                ),
                                                0
                                        ) as Inspection_item_16,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        17
                                                ),
                                                0
                                        ) as Inspection_item_17,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        18
                                                ),
                                                0
                                        ) as Inspection_item_18,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        19
                                                ),
                                                0
                                        ) as Inspection_item_19,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        20
                                                ),
                                                0
                                        ) as Inspection_item_20,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        21
                                                ),
                                                0
                                        ) as Inspection_item_21,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        22
                                                ),
                                                0
                                        ) as Inspection_item_22,
                                        IFNULL(
                                                REGEXP_SUBSTR(
                                                        REGEXP_REPLACE(
                                                                REGEXP_REPLACE(replace(검사항목, '검사항목', ''), '[(|;|:|-]', ''),
                                                                '[:space:]',
                                                                '/'
                                                        ),
                                                        '[A-z]{1,2}+[0-9]{4,5}|CX574',
                                                        1,
                                                        23
                                                ),
                                                0
                                        ) as Inspection_item_23
                                FROM
                                        (
                                                SELECT
                                                        원무접수ID,
                                                        환자번호,
                                                        검사시행일,
                                                        substr(병리진단, instr(병리진단, '검사항목')) as 검사항목
                                                FROM
                                                        biopsy_step_01
                                        ) biopsy
                        ) biopsy
        ) biopsy