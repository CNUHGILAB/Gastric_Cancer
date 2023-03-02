SELECT * FROM(
    SELECT
        원무접수ID,
        환자번호,
        CASE
            WHEN(INSTR(육안소견, '1) Main') != 0 OR INSTR(육안소견, '1) main') != 0)
            AND INSTR(육안소견, 'Frozen gross') = 0
            AND INSTR(육안소견, 'Froze gross') = 0
            AND INSTR(육안소견, 'No.1') = 0
            AND (INSTR(육안소견, '1. Specimen status') = 0 OR INSTR(육안소견, '1. specimen status') = 0)
            THEN REGEXP_REPLACE(
                육안소견, '★', ''
                )
            ELSE REPLACE(육안소견, 육안소견, NULL)
        END AS Type_2
    FROM(
        SELECT * FROM result_test.result_m
    ) result
) a