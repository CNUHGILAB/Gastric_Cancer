SELECT
    원무접수ID,
    환자번호,
    육안소견
FROM(
    SELECT
        원무접수ID,
        환자번호,
        육_안_소_견,
        CASE
            WHEN INSTR(육_안_소_견, '◎') != 0 OR INSTR(육_안_소_견, '◈') != 0
            THEN REGEXP_REPLACE(육_안_소_견, '[◎|◈]', '★')
            ELSE 육_안_소_견
        END AS 육안소견
    FROM result_test.result_all
) a