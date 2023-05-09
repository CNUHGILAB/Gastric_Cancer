SELECT
    원무접수ID,
    환자번호,
    SLIDE_VALUE_A1,
    SLIDE_VALUE_A2,
    PARAFFIN_VALUE_A1,
    PARAFFIN_VALUE_A2,
    ELSE_BLOCK,
    `병리진단(4)`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(`ELSE_SLIDE_PARAFFIN_BLOCK(3)`, '') IS NOT NULL
            THEN `ELSE_SLIDE_PARAFFIN_BLOCK(3)`
            ELSE NULL
        END AS ELSE_BLOCK
    FROM(
        SELECT *,
            CASE 
                WHEN (NULLIF(`RE_SLIDE_PARAFFIN_BLOCK(4)`, '') IS NOT NULL AND NULLIF(SLIDE_VALUE_A1, '') IS NULL AND NULLIF(SLIDE_VALUE_A2, '') IS NULL AND NULLIF(PARAFFIN_VALUE_A1, '') IS NULL AND NULLIF(PARAFFIN_VALUE_A2, '') IS NULL)
                THEN `RE_SLIDE_PARAFFIN_BLOCK(4)`
                ELSE NULL
            END AS `ELSE_SLIDE_PARAFFIN_BLOCK(3)`
        FROM(
            SELECT *,
                CASE 
                    WHEN (REGEXP_INSTR(SUBSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, REGEXP_INSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, '[S|s]lide key')), '[A-z]+[|,|.|;| ]A[0-9]+') != 0
                        OR REGEXP_INSTR(SUBSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, REGEXP_INSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, '[S|s]lide key')), '[A-z]+[|,|.|;| ][|,|.|;| ]A[0-9]+') != 0)
                    THEN `RE_SLIDE_PARAFFIN_BLOCK(4)`
                    ELSE NULL
                END AS SLIDE_VALUE_A1,
                CASE 
                    WHEN REGEXP_INSTR(SUBSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, REGEXP_INSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, '[S|s]lide key')), '[A-z]+ [(]A[0-9]+[)]') != 0
                    THEN `RE_SLIDE_PARAFFIN_BLOCK(4)`
                    ELSE NULL
                END AS SLIDE_VALUE_A2,
                CASE 
                    WHEN (REGEXP_INSTR(SUBSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, REGEXP_INSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, '[P|p]araffin block key')), '[A-z]+[|,|.|;| ]A[0-9]+') != 0
                        OR REGEXP_INSTR(SUBSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, REGEXP_INSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, '[P|p]araffin block key')), '[A-z]+[|,|.|;| ][|,|.|;| ]A[0-9]+') != 0)
                    THEN `RE_SLIDE_PARAFFIN_BLOCK(4)`
                    ELSE NULL
                END AS PARAFFIN_VALUE_A1,
                CASE 
                    WHEN REGEXP_INSTR(SUBSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, REGEXP_INSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, '[P|p]araffin block key')), '[A-z]+ [(]A[0-9]+[)]') != 0
                    THEN `RE_SLIDE_PARAFFIN_BLOCK(4)`
                    ELSE NULL
                END AS PARAFFIN_VALUE_A2
            FROM(
                SELECT *,
                    CASE 
                        WHEN (INSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, 'Frozen Gross') != 0
                            OR INSTR(`RE_SLIDE_PARAFFIN_BLOCK(4)`, 'Frozen Diagnosis') != 0)
                        THEN `RE_SLIDE_PARAFFIN_BLOCK(4)`
                        ELSE NULL
                    END AS VALUE_FROZEN
            FROM(
                SELECT *,
                    CASE
                        WHEN NULLIF(`SLIDE_PARAFFIN_BLOCK(4)`, '') IS NOT NULL
                        THEN REPLACE(`SLIDE_PARAFFIN_BLOCK(4)`, ':', ';')
                        ELSE NULL
                    END AS `RE_SLIDE_PARAFFIN_BLOCK(4)`
                FROM block_mapping_00
                ) a
            ) a
        ) a
    ) a
) a