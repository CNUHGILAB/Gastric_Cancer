SELECT
    CHKID,
    ID,
    Op_Date,
    검사시행일,
    검사시행시간,
    PA
FROM(
    SELECT
        CHKID,
        ID,
        Op_Date,
        CASE 
            WHEN 검사시행일 IS NOT NULL AND 검사시행일_수정 IS NOT NULL AND 검사시행일 != 검사시행일_수정
            THEN 검사시행일_수정
            WHEN 검사시행일 IS NOT NULL AND 검사시행일_수정 IS NULL
            THEN 검사시행일
            ELSE NULL
        END AS 검사시행일,
        검사시행시간,
        PA
    FROM(
        SELECT
            CHKID,
            ID,
            Op_Date,
            검사시행일,
            CASE 
                WHEN INSTR(POD_비고, 'pod1') != 0 AND DATEDIFF(검사시행일, Op_Date) != 1
                THEN DATE_ADD(Op_Date, INTERVAL 1 DAY)
                WHEN INSTR(POD_비고, 'pod2') != 0 AND DATEDIFF(검사시행일, Op_Date) != 2
                THEN DATE_ADD(Op_Date, INTERVAL 2 DAY)
                WHEN INSTR(POD_비고, 'pod3') != 0 AND DATEDIFF(검사시행일, Op_Date) != 3
                THEN DATE_ADD(Op_Date, INTERVAL 3 DAY)
                WHEN INSTR(POD_비고, 'pod4') != 0 AND DATEDIFF(검사시행일, Op_Date) != 4
                THEN DATE_ADD(Op_Date, INTERVAL 4 DAY)
                WHEN INSTR(POD_비고, 'pod5') != 0 AND DATEDIFF(검사시행일, Op_Date) != 5
                THEN DATE_ADD(Op_Date, INTERVAL 5 DAY)
                WHEN INSTR(POD_비고, 'pod6') != 0 AND DATEDIFF(검사시행일, Op_Date) != 6
                THEN DATE_ADD(Op_Date, INTERVAL 6 DAY)
                WHEN INSTR(POD_비고, 'pod7') != 0 AND DATEDIFF(검사시행일, Op_Date) != 7
                THEN DATE_ADD(Op_Date, INTERVAL 7 DAY)
                WHEN INSTR(POD_비고, 'pod13') != 0 AND DATEDIFF(검사시행일, Op_Date) != 13
                THEN DATE_ADD(Op_Date, INTERVAL 13 DAY)
                WHEN DATE_비고 IS NOT NULL
                THEN CONCAT(
                    DATE_FORMAT(검사시행일, '%%Y'), '-', DATE_비고
                )
                WHEN INSTR(NUM_비고, 'pod1') != 0 AND DATEDIFF(검사시행일, Op_Date) != 1
                THEN DATE_ADD(Op_Date, INTERVAL 1 DAY)
                WHEN INSTR(NUM_비고, 'pod2') != 0 AND DATEDIFF(검사시행일, Op_Date) != 2
                THEN DATE_ADD(Op_Date, INTERVAL 2 DAY)
                WHEN INSTR(NUM_비고, 'pod3') != 0 AND DATEDIFF(검사시행일, Op_Date) != 3
                THEN DATE_ADD(Op_Date, INTERVAL 3 DAY)
                WHEN INSTR(NUM_비고, 'pod4') != 0 AND DATEDIFF(검사시행일, Op_Date) != 4
                THEN DATE_ADD(Op_Date, INTERVAL 4 DAY)
                WHEN INSTR(NUM_비고, 'pod5') != 0 AND DATEDIFF(검사시행일, Op_Date) != 5
                THEN DATE_ADD(Op_Date, INTERVAL 5 DAY)
                WHEN INSTR(NUM_비고, 'pod6') != 0 AND DATEDIFF(검사시행일, Op_Date) != 6
                THEN DATE_ADD(Op_Date, INTERVAL 6 DAY)
                WHEN INSTR(NUM_비고, 'pod9') != 0 AND DATEDIFF(검사시행일, Op_Date) != 9
                THEN DATE_ADD(Op_Date, INTERVAL 9 DAY)
                ELSE NULL
            END AS 검사시행일_수정,
            검사시행시간,
            PA
        FROM(
            SELECT
                CHKID,
                ID,
                Op_Date,
                검사시행일,
                검사시행일_비고,
                검사시행시간,
                POD_비고,
                DATE_비고,
                CASE 
                    WHEN 비고내용 IS NOT NULL AND POD_비고 IS NULL AND DATE_비고 IS NULL
                        AND (REGEXP_INSTR(비고내용, 'drain [#][0-9]') != 0 OR REGEXP_INSTR(비고내용, 'drain [0-9]') != 0 OR REGEXP_INSTR(비고내용, 'drain[0-9]') != 0 OR REGEXP_INSTR(비고내용, 'drain d[0-9]') != 0)
                    THEN CONCAT('POD', SUBSTR(비고내용, REGEXP_INSTR(비고내용, '[0-9]'), 1))
                    WHEN 비고내용 IS NOT NULL AND POD_비고 IS NULL AND DATE_비고 IS NULL
                        AND REGEXP_INSTR(비고내용, '^[0-9]') != 0 AND REGEXP_INSTR(비고내용, '[a-z]') = 0 AND REGEXP_INSTR(비고내용, '[:|;|,|.]') = 0 AND REGEXP_INSTR(비고내용, '[가-힣]') = 0
                    THEN CONCAT('POD', SUBSTR(비고내용, REGEXP_INSTR(비고내용, '[0-9]'), 1))
                    ELSE NULL
                END AS NUM_비고,
                비고내용,
                PA
            FROM(
                SELECT
                    CHKID,
                    ID,
                    Op_Date,
                    DATE_FORMAT(검사시행일, '%%Y-%%m-%%d') AS 검사시행일,
                    DATE_FORMAT(검사시행일, '%%m-%%d') AS 검사시행일_비고,
                    DATE_FORMAT(검사시행일, '%%H:%%m:%%s') AS 검사시행시간,
                    CASE
                        WHEN INSTR(비고내용, 'pod') != 0
                        THEN REPLACE(
                            REPLACE(
                                REPLACE(
                                    비고내용, 'pod #', 'pod'
                                ), 'pod#', 'pod'
                            ), 'pod ', 'pod'
                        )
                        ELSE NULL
                    END AS POD_비고,
                    CASE
                        WHEN REGEXP_INSTR(비고내용, '[0-9]+[/][0-9]+') != 0
                        THEN DATE_FORMAT(
                            STR_TO_DATE(
                                REPLACE(
                                    SUBSTR(비고내용, REGEXP_INSTR(비고내용, '[0-9]+[/][0-9]+')),
                                    SUBSTR(SUBSTR(비고내용, REGEXP_INSTR(비고내용, '[0-9]+[/][0-9]+')), INSTR(SUBSTR(비고내용, REGEXP_INSTR(비고내용, '[0-9]+[/][0-9]+')), ' ')),
                                    ''
                                ), '%%m/%%d'
                            ), '%%m-%%d'
                        )
                        ELSE NULL
                    END AS DATE_비고,
                    비고내용,
                    PA
                FROM pancreatic_amylase_03
            ) a
        ) a
    ) a
) a