SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `SMA`
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(SMA)`, '(+)') != 0 OR INSTR(`SUBSTR(SMA)`, '(+,') != 0 OR INSTR(`SUBSTR(SMA)`, '(+ ') != 0 OR INSTR(`SUBSTR(SMA)`, ' +)') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(SMA)`, '(-)') != 0 OR INSTR(`SUBSTR(SMA)`, '(-,') != 0 OR INSTR(`SUBSTR(SMA)`, '(- ') != 0 OR INSTR(`SUBSTR(SMA)`, ' -)') != 0
            THEN '-'
            ELSE NULL
        END AS `SMA`
    FROM genetic_11_01
) a