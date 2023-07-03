SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    EBV
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(EBV)`, '(+)') != 0 OR INSTR(`SUBSTR(EBV)`, '(+,') != 0 OR INSTR(`SUBSTR(EBV)`, '(+ ') != 0 OR INSTR(`SUBSTR(EBV)`, ' +)') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(EBV)`, '(-)') != 0 OR INSTR(`SUBSTR(EBV)`, '(-,') != 0 OR INSTR(`SUBSTR(EBV)`, '(- ') != 0 OR INSTR(`SUBSTR(EBV)`, ' -)') != 0
            THEN '-'
            ELSE NULL
        END AS EBV
    FROM genetic_14_01
) a