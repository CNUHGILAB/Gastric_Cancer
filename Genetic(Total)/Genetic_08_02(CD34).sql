SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    CD34
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(CD34)`, '(+)') != 0 OR INSTR(`SUBSTR(CD34)`, '(+,') != 0 OR INSTR(`SUBSTR(CD34)`, '(+ ') != 0 OR INSTR(`SUBSTR(CD34)`, ' +)') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(CD34)`, '(-)') != 0 OR INSTR(`SUBSTR(CD34)`, '(-,') != 0 OR INSTR(`SUBSTR(CD34)`, '(- ') != 0 OR INSTR(`SUBSTR(CD34)`, ' -)') != 0
            THEN '-'
            ELSE NULL
        END AS `CD34`
    FROM genetic_08_01
) a