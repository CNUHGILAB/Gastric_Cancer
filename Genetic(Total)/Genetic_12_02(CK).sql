SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    CK,
    CK56,
    CK7,
    CK19,
    CK20
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(CK)`, '(+)') != 0 OR INSTR(`SUBSTR(CK)`, '(+,') != 0 OR INSTR(`SUBSTR(CK)`, '(+ ') != 0 OR INSTR(`SUBSTR(CK)`, ' + ') != 0 OR INSTR(`SUBSTR(CK)`, ' +,') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(CK)`, '(-)') != 0 OR INSTR(`SUBSTR(CK)`, '(-,') != 0 OR INSTR(`SUBSTR(CK)`, '(- ') != 0 OR INSTR(`SUBSTR(CK)`, ' - ') != 0 OR INSTR(`SUBSTR(CK)`, ' -,') != 0
            THEN '-'
            ELSE NULL
        END AS CK,
        CASE 
            WHEN INSTR(`SUBSTR(CK56)`, '(+)') != 0 OR INSTR(`SUBSTR(CK56)`, '(+,') != 0 OR INSTR(`SUBSTR(CK56)`, '(+ ') != 0 OR INSTR(`SUBSTR(CK56)`, ' + ') != 0 OR INSTR(`SUBSTR(CK56)`, ' +,') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(CK56)`, '(-)') != 0 OR INSTR(`SUBSTR(CK56)`, '(-,') != 0 OR INSTR(`SUBSTR(CK56)`, '(- ') != 0 OR INSTR(`SUBSTR(CK56)`, ' - ') != 0 OR INSTR(`SUBSTR(CK56)`, ' -,') != 0
            THEN '-'
            ELSE NULL
        END AS CK56,
        CASE 
            WHEN INSTR(`SUBSTR(CK7)`, '(+)') != 0 OR INSTR(`SUBSTR(CK7)`, '(+,') != 0 OR INSTR(`SUBSTR(CK7)`, '(+ ') != 0 OR INSTR(`SUBSTR(CK7)`, ' + ') != 0 OR INSTR(`SUBSTR(CK7)`, ' +,') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(CK7)`, '(-)') != 0 OR INSTR(`SUBSTR(CK7)`, '(-,') != 0 OR INSTR(`SUBSTR(CK7)`, '(- ') != 0 OR INSTR(`SUBSTR(CK7)`, ' - ') != 0 OR INSTR(`SUBSTR(CK7)`, ' -,') != 0
            THEN '-'
            ELSE NULL
        END AS CK7,
        CASE 
            WHEN INSTR(`SUBSTR(CK19)`, '(+)') != 0 OR INSTR(`SUBSTR(CK19)`, '(+,') != 0 OR INSTR(`SUBSTR(CK19)`, '(+ ') != 0 OR INSTR(`SUBSTR(CK19)`, ' + ') != 0 OR INSTR(`SUBSTR(CK19)`, ' +,') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(CK19)`, '(-)') != 0 OR INSTR(`SUBSTR(CK19)`, '(-,') != 0 OR INSTR(`SUBSTR(CK19)`, '(- ') != 0 OR INSTR(`SUBSTR(CK19)`, ' - ') != 0 OR INSTR(`SUBSTR(CK19)`, ' -,') != 0
            THEN '-'
            ELSE NULL
        END AS CK19,
        CASE 
            WHEN INSTR(`SUBSTR(CK20)`, '(+)') != 0 OR INSTR(`SUBSTR(CK20)`, '(+,') != 0 OR INSTR(`SUBSTR(CK20)`, '(+ ') != 0 OR INSTR(`SUBSTR(CK20)`, ' + ') != 0 OR INSTR(`SUBSTR(CK20)`, ' +,') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(CK20)`, '(-)') != 0 OR INSTR(`SUBSTR(CK20)`, '(-,') != 0 OR INSTR(`SUBSTR(CK20)`, '(- ') != 0 OR INSTR(`SUBSTR(CK20)`, ' - ') != 0 OR INSTR(`SUBSTR(CK20)`, ' -,') != 0
            THEN '-'
            ELSE NULL
        END AS CK20
    FROM genetic_12_01
) a