SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    CD31,
    D240
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(CD31)`, '(+)') != 0 OR INSTR(`SUBSTR(CD31)`, '(+,') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(CD31)`, '(-)') != 0 OR INSTR(`SUBSTR(CD31)`, '(-,') != 0
            THEN '-'
            WHEN INSTR(`SUBSTR(CD31)`, '(++)') != 0 OR INSTR(`SUBSTR(CD31)`, '(++,') != 0
            THEN '++'
            WHEN INSTR(`SUBSTR(CD31)`, '(--)') != 0 OR INSTR(`SUBSTR(CD31)`, '(--,') != 0
            THEN '--'
            WHEN INSTR(`SUBSTR(CD31)`, '(+++)') != 0 OR INSTR(`SUBSTR(CD31)`, '(+++,') != 0
            THEN '+++'
            WHEN INSTR(`SUBSTR(CD31)`, '(---)') != 0 OR INSTR(`SUBSTR(CD31)`, '(---,') != 0
            THEN '---'
            ELSE NULL
        END AS CD31,
        CASE 
            WHEN INSTR(`SUBSTR(D240)`, '(+)') != 0 OR INSTR(`SUBSTR(D240)`, '(+,') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(D240)`, '(-)') != 0 OR INSTR(`SUBSTR(D240)`, '(-,') != 0
            THEN '-'
            WHEN INSTR(`SUBSTR(D240)`, '(++)') != 0 OR INSTR(`SUBSTR(D240)`, '(++,') != 0
            THEN '++'
            WHEN INSTR(`SUBSTR(D240)`, '(--)') != 0 OR INSTR(`SUBSTR(D240)`, '(--,') != 0
            THEN '--'
            WHEN INSTR(`SUBSTR(D240)`, '(+++)') != 0 OR INSTR(`SUBSTR(D240)`, '(+++,') != 0
            THEN '+++'
            WHEN INSTR(`SUBSTR(D240)`, '(---)') != 0 OR INSTR(`SUBSTR(D240)`, '(---,') != 0
            THEN '---'
            ELSE NULL
        END AS D240
        FROM genetic_06_01
) a