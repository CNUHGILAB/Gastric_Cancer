SELECT
    원무접수ID,
    COUNT(원무접수ID)
FROM data_type_1
GROUP BY 원무접수ID
HAVING COUNT(원무접수ID) > 1