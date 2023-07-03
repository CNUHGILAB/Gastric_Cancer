SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    HER2
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(HER2)_2`, '(+)') != 0 OR INSTR(`SUBSTR(HER2)_2`, '(+,') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(HER2)_2`, '(-)') != 0 OR INSTR(`SUBSTR(HER2)_2`, '(-,') != 0
            THEN '-'
            WHEN INSTR(`SUBSTR(HER2)_2`, '(++)') != 0 OR INSTR(`SUBSTR(HER2)_2`, '(++,') != 0
            THEN '++'
            WHEN INSTR(`SUBSTR(HER2)_2`, '(--)') != 0 OR INSTR(`SUBSTR(HER2)_2`, '(--,') != 0
            THEN '--'
            WHEN INSTR(`SUBSTR(HER2)_2`, '(+++)') != 0 OR INSTR(`SUBSTR(HER2)_2`, '(+++,') != 0
            THEN '+++'
            WHEN INSTR(`SUBSTR(HER2)_2`, '(---)') != 0 OR INSTR(`SUBSTR(HER2)_2`, '(---,') != 0
            THEN '---'
            ELSE NULL
        END AS HER2
    FROM genetic_02_01
) a
WHERE HER2 IS NOT NULL