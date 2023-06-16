SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    `PKC-Theta`
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(PKC-Theta)`, '(+)') != 0 OR INSTR(`SUBSTR(PKC-Theta)`, '(+,') != 0 OR INSTR(`SUBSTR(PKC-Theta)`, '(+ ') != 0 OR INSTR(`SUBSTR(PKC-Theta)`, ' +)') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(PKC-Theta)`, '(-)') != 0 OR INSTR(`SUBSTR(PKC-Theta)`, '(-,') != 0 OR INSTR(`SUBSTR(PKC-Theta)`, '(- ') != 0 OR INSTR(`SUBSTR(PKC-Theta)`, ' -)') != 0
            THEN '-'
            ELSE NULL
        END AS `PKC-Theta`
    FROM genetic_09_01
) a