SELECT * FROM data_else_02
WHERE 원무접수ID NOT IN(
    SELECT
        DISTINCT 원무접수ID
    FROM data_else_03
);