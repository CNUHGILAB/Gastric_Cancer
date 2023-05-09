SELECT
    원무접수ID,
    환자번호,
    NULL_BLOCK,
    ELSE_BLOCK,
    `병리진단(9)`
FROM(
    SELECT *
    FROM(
        SELECT *
        FROM(
            SELECT *,
                CASE 
                    WHEN NULLIF(`NONE_KEY(9)`, '') IS NOT NULL AND NULLIF(ELSE_BLOCK, '') IS NULL
                    THEN `NONE_KEY(9)`
                    ELSE NULL
                END AS NULL_BLOCK
            FROM(
                SELECT *,
                    CASE 
                        WHEN (REGEXP_INSTR(`병리진단(9)`, '[(]A[)]') != 0
                            OR REGEXP_INSTR(`병리진단(9)`, '[(]A[0-9]+') != 0)
                        THEN `NONE_KEY(9)`
                        ELSE NULL
                    END AS ELSE_BLOCK
                FROM block_mapping_00
            ) a
        ) a
    ) a
) a