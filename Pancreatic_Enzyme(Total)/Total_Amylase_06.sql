SELECT
    CHKID,
    ID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN TA4
        ELSE NULL
    END AS `T.Amylase POD1`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN TA4
        ELSE NULL
    END AS `T.Amylase POD2`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN TA4
        ELSE NULL
    END AS `T.Amylase POD3`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN TA4
        ELSE NULL
    END AS `T.Amylase POD4`
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
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS TA1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS TA2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS TA3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS TA4
    FROM total_amylase_05
) ta