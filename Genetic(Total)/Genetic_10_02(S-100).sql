SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `S-100`
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(S-100)`, '(+)') != 0 OR INSTR(`SUBSTR(S-100)`, '(+,') != 0 OR INSTR(`SUBSTR(S-100)`, '(+ ') != 0 OR INSTR(`SUBSTR(S-100)`, ' +)') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(S-100)`, '(-)') != 0 OR INSTR(`SUBSTR(S-100)`, '(-,') != 0 OR INSTR(`SUBSTR(S-100)`, '(- ') != 0 OR INSTR(`SUBSTR(S-100)`, ' -)') != 0
            THEN '-'
            ELSE NULL
        END AS `S-100`
    FROM genetic_10_01
) a