SELECT
    원무접수ID,
    환자번호,
    육_안_소_견,
    병리진단,
    CASE 
        WHEN NULLIF(병_리_진_단, '') IS NOT NULL AND NULLIF(병리진단, '') IS NULL
        THEN 병_리_진_단
        ELSE NULL
    END AS ELSE_병리진단
FROM(
    SELECT *,
        CASE 
            WHEN REGEXP_INSTR(병_리_진_단, '[S|s]tomach') != 0
            THEN 병_리_진_단
            ELSE NULL
        END AS 병리진단
    FROM result_test.result_all
) result