SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    Chromogranin
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(Chromogranin)`, '(+)') != 0 OR INSTR(`SUBSTR(Chromogranin)`, '(+,') != 0 OR INSTR(`SUBSTR(Chromogranin)`, '(+ ') != 0 OR INSTR(`SUBSTR(Chromogranin)`, ' +)') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(Chromogranin)`, '(-)') != 0 OR INSTR(`SUBSTR(Chromogranin)`, '(-,') != 0 OR INSTR(`SUBSTR(Chromogranin)`, '(- ') != 0 OR INSTR(`SUBSTR(Chromogranin)`, ' -)') != 0
            THEN '-'
            ELSE NULL
        END AS Chromogranin
    FROM genetic_13_01
) a