SELECT
    CHKID,
    ID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN PA4
        ELSE NULL
    END AS `P.Amylase POD1`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN PA4
        ELSE NULL
    END AS `P.Amylase POD2`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN PA4
        ELSE NULL
    END AS `P.Amylase POD3`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN PA4
        ELSE NULL
    END AS `P.Amylase POD4`
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
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS PA1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS PA2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS PA3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS PA4
    FROM pancreatic_amylase_09
) pa