SELECT
    CHKID,
    ID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN Lipase4
        ELSE NULL
    END AS `Lipase POD1`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN Lipase4
        ELSE NULL
    END AS `Lipase POD2`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN Lipase4
        ELSE NULL
    END AS `Lipase POD3`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN Lipase4
        ELSE NULL
    END AS `Lipase POD4`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 1)
            ELSE NULL
        END AS DATE1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 2)
            ELSE NULL
        END AS DATE2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 3)
            ELSE NULL
        END AS DATE3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 4)
            ELSE NULL
        END AS DATE4,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS Lipase1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS Lipase2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS Lipase3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS Lipase4
    FROM lipase_05
) lipase