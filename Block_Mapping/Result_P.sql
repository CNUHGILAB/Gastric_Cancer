SELECT
    원무접수ID,
    환자번호,
    병리진단
FROM(
    SELECT
        원무접수ID,
        병_리_진_단,
        환자번호,
        CASE
            WHEN INSTR(병_리_진_단, '◎') != 0 OR INSTR(병_리_진_단, '◈') != 0
            THEN REGEXP_REPLACE(병_리_진_단, '[◎|◈]', '')
            ELSE 병_리_진_단
        END AS 병리진단
    FROM result_all
) a