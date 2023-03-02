SELECT * FROM(
    SELECT
        원무접수ID,
        환자번호,
        CASE
            WHEN INSTR(육안소견, 'Frozen gross examination') != 0
            THEN REGEXP_REPLACE(육안소견, '★', '')
            WHEN INSTR(육안소견, 'Froze gross examination') != 0
            THEN REGEXP_REPLACE(
                REPLACE(육안소견, 'Froze gross examination', 'Frozen gross examination'
                ), '★', ''
            )
            WHEN INSTR(육안소견, 'Frozen Gross') != 0
            THEN REGEXP_REPLACE(
                REPLACE(육안소견, 'Frozen Gross', 'Frozen gross'
                ), '★', ''
            )
            WHEN INSTR(육안소견, 'Frozen gross examinatio') != 0 AND INSTR(육안소견, 'Frozen gross examination') = 0
            THEN REGEXP_REPLACE(
                REPLACE(육안소견, 'Frozen gross examinatio', 'Frozen gross examination'
                ), '★', ''
            )
            WHEN INSTR(육안소견, 'examaination') != 0
            THEN REGEXP_REPLACE(
                REPLACE(육안소견, 'examaination', 'examination'
                ), '★', ''
            )
            ELSE REPLACE(육안소견, 육안소견, NULL)
        END AS Type_6
    FROM(
        SELECT * FROM result_test.result_m
    ) result
) a