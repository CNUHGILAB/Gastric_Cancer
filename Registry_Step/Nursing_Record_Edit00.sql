SELECT
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(기록종류명_임상관찰기록, '') IS NOT NULL
            THEN 간호기록/진술문명
            ELSE NULL
        END AS `임상관찰기록_간호기록/진술문명`,
        CASE 
            WHEN NULLIF(기록종류명_임상관찰기록, '') IS NOT NULL
            THEN Entity
            ELSE NULL
        END AS 임상관찰기록_Entity,
        CASE 
            WHEN NULLIF(기록종류명_임상관찰기록, '') IS NOT NULL
            THEN `Attribute`
            ELSE NULL
        END AS 임상관찰기록_Attribute,
        CASE 
            WHEN NULLIF(기록종류명_임상관찰기록, '') IS NOT NULL
            THEN `Value`
            ELSE NULL
        END AS 임상관찰기록_Value
    FROM(
        SELECT *,
            CASE 
                WHEN NULLIF(기록종류명_임상관찰기록, '') IS NOT NULL
                THEN 간호기록/진술문명
                ELSE NULL
            END AS `임상관찰기록_간호기록/진술문명`,
            CASE 
                WHEN NULLIF(기록종류명_임상관찰기록, '') IS NOT NULL
                THEN Entity
                ELSE NULL
            END AS 임상관찰기록_Entity,
            CASE 
                WHEN NULLIF(기록종류명_임상관찰기록, '') IS NOT NULL
                THEN `Attribute`
                ELSE NULL
            END AS 임상관찰기록_Attribute,
            CASE 
                WHEN NULLIF(기록종류명_임상관찰기록, '') IS NOT NULL
                THEN `Value`
                ELSE NULL
            END AS 임상관찰기록_Value
        FROM(
            SELECT *,
                CASE 
                    WHEN INSTR(기록종류명, '임상관찰기록') != 0
                    THEN 기록종류명
                    ELSE NULL
                END AS 기록종류명_임상관찰기록,
                CASE 
                    WHEN INSTR(기록종류명, '간호일지') != 0
                    THEN 기록종류명
                    ELSE NULL
                END AS 기록종류명_간호일지
            FROM gc_raw.nursing_record
        ) a
    ) a
) a