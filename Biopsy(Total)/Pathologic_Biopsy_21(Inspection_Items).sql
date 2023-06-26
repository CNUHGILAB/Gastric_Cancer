SELECT
    DISTINCT
    원무접수ID,
    환자번호,
    검사시행일,
    REPLACE(REPLACE(검사항목, '0/ ', ''), '/ 0', '') AS 검사항목
FROM(
    SELECT
        원무접수ID,
        환자번호,
        검사시행일,
        CONCAT(
            Inspection_Item_1, '/ ',
            Inspection_Item_2, '/ ',
            Inspection_Item_3, '/ ',
            Inspection_Item_4, '/ ',
            Inspection_Item_5, '/ ',
            Inspection_Item_6, '/ ',
            Inspection_Item_7, '/ ',
            Inspection_Item_8, '/ ',
            Inspection_Item_9, '/ ',
            Inspection_Item_10, '/ ',
            Inspection_Item_11, '/ ',
            Inspection_Item_12, '/ ',
            Inspection_Item_13, '/ ',
            Inspection_Item_14, '/ ',
            Inspection_Item_15, '/ ',
            Inspection_Item_16, '/ ',
            Inspection_Item_17, '/ ',
            Inspection_Item_18, '/ ',
            Inspection_Item_19, '/ ',
            Inspection_Item_20, '/ ',
            Inspection_Item_21, '/ ',
            Inspection_Item_22, '/ ',
            Inspection_Item_23
        ) AS 검사항목
    FROM(
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 1
                ), 0
            ) AS Inspection_Item_1,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 2
                ), 0
            ) AS Inspection_Item_2,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 3
                ), 0
            ) AS Inspection_Item_3,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 4
                ), 0
            ) AS Inspection_Item_4,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 5
                ), 0
            ) AS Inspection_Item_5,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 6
                ), 0
            ) AS Inspection_Item_6,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 7
                ), 0
            ) AS Inspection_Item_7,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 8
                ), 0
            ) AS Inspection_Item_8,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 9
                ), 0
            ) AS Inspection_Item_9,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 10
                ), 0
            ) AS Inspection_Item_10,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 11
                ), 0
            ) AS Inspection_Item_11,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 12
                ), 0
            ) AS Inspection_Item_12,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 13
                ), 0
            ) AS Inspection_Item_13,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 14
                ), 0
            ) AS Inspection_Item_14,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 15
                ), 0
            ) AS Inspection_Item_15,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 16
                ), 0
            ) AS Inspection_Item_16,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 17
                ), 0
            ) AS Inspection_Item_17,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 18
                ), 0
            ) AS Inspection_Item_18,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 19
                ), 0
            ) AS Inspection_Item_19,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 20
                ), 0
            ) AS Inspection_Item_20,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 21
                ), 0
            ) AS Inspection_Item_21,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 22
                ), 0
            ) AS Inspection_Item_22,
            IFNULL(
                REGEXP_SUBSTR(
                    REGEXP_REPLACE(
                        REGEXP_REPLACE(
                            REPLACE(
                                검사항목, '검사항목', ''
                            ), '[(|;|:|-]', ''
                        ), '[:space:]', '/'
                    ), '[A-z]{1,2}+[0-9]{4,5}|CX574', 1, 23
                ), 0
            ) AS Inspection_Item_23
        FROM(
            SELECT
                원무접수ID,
                환자번호,
                검사시행일,
                SUBSTR(병리진단, INSTR(병리진단, '검사항목')) AS 검사항목
            FROM pathologic_biopsy_03
        ) biopsy
    ) biopsy
) biopsy