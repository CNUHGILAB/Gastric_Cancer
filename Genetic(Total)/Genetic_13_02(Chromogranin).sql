SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    Chromogranin
FROM(
    SELECT *,
        CASE 
            WHEN INSTR(`SUBSTR(Chromogranin)`, 'chromogranin (+)') != 0 OR INSTR(`SUBSTR(Chromogranin)`, 'chromogranin (+,') != 0
                OR REGEXP_INSTR(REGEXP_SUBSTR(`SUBSTR(Chromogranin)`, '[^:]+', 1, 2), '^ [(][+][)]') != 0 OR INSTR(REGEXP_SUBSTR(`SUBSTR(Chromogranin)`, '[^:]+', 1, 2), 'focal (+)') != 0
            THEN '+'
            WHEN INSTR(`SUBSTR(Chromogranin)`, 'chromogranin (-)') != 0 OR INSTR(`SUBSTR(Chromogranin)`, 'chromogranin (-,') != 0
                OR REGEXP_INSTR(REGEXP_SUBSTR(`SUBSTR(Chromogranin)`, '[^:]+', 1, 2), '^ [(][-][)]') != 0 OR INSTR(REGEXP_SUBSTR(`SUBSTR(Chromogranin)`, '[^:]+', 1, 2), 'focal (-)') != 0
            THEN '-'
            ELSE NULL
        END AS Chromogranin
    FROM genetic_13_01
) a