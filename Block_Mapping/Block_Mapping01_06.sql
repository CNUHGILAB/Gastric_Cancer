SELECT
    원무접수ID,
    환자번호,
    VALUE_A,
    VALUE_FROZEN,
    BLOCK_ELSE,
    `병리진단(6)`
FROM(
    SELECT *
    FROM(
        SELECT *,
            CASE 
                WHEN (NULLIF(`ELSE_NONE_BLOCK_SLIDE(6)`, '') IS NOT NULL AND NULLIF(VALUE_A, '') IS NULL)
                THEN `ELSE_NONE_BLOCK_SLIDE(6)`
                ELSE NULL
            END AS BLOCK_ELSE
        FROM(
            SELECT *,
                CASE 
                    WHEN NULLIF(`ELSE_NONE_BLOCK_SLIDE(6)`, '') IS NOT NULL
                    THEN `ELSE_NONE_BLOCK_SLIDE(6)`
                    ELSE NULL
                END AS VALUE_A
            FROM(
                SELECT *,
                    CASE 
                        WHEN (NULLIF(`RE_NONE_BLOCK_SLIDE(6)`, '') IS NOT NULL AND NULLIF(VALUE_FROZEN, '') IS NULL)
                        THEN `RE_NONE_BLOCK_SLIDE(6)`
                        ELSE NULL
                    END AS `ELSE_NONE_BLOCK_SLIDE(6)`
                FROM(
                    SELECT *,
                        CASE 
                            WHEN (INSTR(`RE_NONE_BLOCK_SLIDE(6)`, 'Frozen Gross') != 0
                                OR INSTR(`RE_NONE_BLOCK_SLIDE(6)`, 'Frozen Diagnosis') != 0)
                            THEN `RE_NONE_BLOCK_SLIDE(6)`
                            ELSE NULL
                        END AS VALUE_FROZEN
                    FROM(
                        SELECT *,
                            CASE 
                                WHEN NULLIF(`NONE_BLOCK_SLIDE(6)`, '') IS NOT NULL
                                THEN REPLACE(`NONE_BLOCK_SLIDE(6)`, ':', ';')
                                ELSE NULL
                            END AS `RE_NONE_BLOCK_SLIDE(6)`
                        FROM block_mapping_00
                    ) a
                ) a
            ) a
        ) a
    ) a
) a