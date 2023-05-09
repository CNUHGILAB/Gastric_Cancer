SELECT * FROM data_else_00
WHERE 육_안_소_견 NOT IN(
    SELECT
        육_안_소_견
    FROM data_else_01
);