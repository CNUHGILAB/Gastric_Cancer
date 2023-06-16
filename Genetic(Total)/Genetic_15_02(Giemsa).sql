SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    Giemsa
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(Giemsa)`, '(+)') != 0 OR INSTR(`SUBSTR(Giemsa)`, '(+,') != 0 OR INSTR(`SUBSTR(Giemsa)`, '(+ ') != 0 OR INSTR(`SUBSTR(Giemsa)`, ' +)') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(Giemsa)`, '(-)') != 0 OR INSTR(`SUBSTR(Giemsa)`, '(-,') != 0 OR INSTR(`SUBSTR(Giemsa)`, '(- ') != 0 OR INSTR(`SUBSTR(Giemsa)`, ' -)') != 0
            THEN '-'
            ELSE NULL
        END AS Giemsa
    FROM genetic_15_01
) a