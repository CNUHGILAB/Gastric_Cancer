SELECT
    원무접수ID,
    COUNT_1,
    COUNT_2
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(원무접수ID, '') IS NOT NULL)
            THEN CONCAT(원무접수ID, '_2')
            ELSE NULL
        END AS COUNT_2
    FROM(
        SELECT *,
            CASE
                WHEN (NULLIF(원무접수ID, '') IS NOT NULL)
                THEN CONCAT(원무접수ID, '_1')
                ELSE NULL
            END AS COUNT_1
        FROM test_type1_1
    ) a
) a