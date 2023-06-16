SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `C-Kit`
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(C-Kit)`, '(+)') != 0 OR INSTR(`SUBSTR(C-Kit)`, '(+,') != 0 OR INSTR(`SUBSTR(C-Kit)`, '(+ ') != 0 OR INSTR(`SUBSTR(C-Kit)`, ' +)') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(C-Kit)`, '(-)') != 0 OR INSTR(`SUBSTR(C-Kit)`, '(-,') != 0 OR INSTR(`SUBSTR(C-Kit)`, '(- ') != 0 OR INSTR(`SUBSTR(C-Kit)`, ' -)') != 0
            THEN '-'
            ELSE NULL
        END AS `C-Kit`
    FROM genetic_07_01
) a