SELECT
    원무접수ID,
    환자번호,
    REBLOCK_YES,
    REBLOCK_ELSE,
    REBLOCK_NO
FROM(
    SELECT *,
        CASE 
            WHEN (INSTR(RE_BLOCK_YES_2, 'consistsof') != 0)
            THEN REPLACE(RE_BLOCK_YES_2, 'consistsof', 'consists of')
            ELSE RE_BLOCK_YES_2
        END AS REBLOCK_YES
    FROM(
        SELECT *,
            CASE 
                WHEN (INSTR(RE_BLOCK_YES_1, 'consisf') != 0)
                THEN REPLACE(RE_BLOCK_YES_1, 'consisf', 'consists')
                ELSE RE_BLOCK_YES_1
            END AS RE_BLOCK_YES_2
        FROM(
            SELECT *,
                CASE
                    WHEN (INSTR(RE_BLOCK_YES, 'conssits') != 0)
                    THEN REPLACE(RE_BLOCK_YES, 'conssits', 'consists')
                    ELSE RE_BLOCK_YES
                END AS RE_BLOCK_YES_1,
                CASE
                    WHEN (NULLIF(RE_BLOCK_ELSE, '') IS NOT NULL)
                    THEN RE_BLOCK_ELSE
                    ELSE NULL
                END AS REBLOCK_ELSE,
                CASE
                    WHEN (NULLIF(RE_BLOCK_NO, '') IS NOT NULL)
                    THEN RE_BLOCK_NO
                    ELSE NULL
                END AS REBLOCK_NO
            FROM test_type6_block_02
        ) a
    ) a
) a