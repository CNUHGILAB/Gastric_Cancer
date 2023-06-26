SELECT
    CHKID,
    ID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN WBC1
        ELSE NULL
    END AS `WBC POD1`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN WBC2
        ELSE NULL
    END AS `WBC POD2`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN WBC3
        ELSE NULL
    END AS `WBC POD3`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN WBC4
        ELSE NULL
    END AS `WBC POD4`
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
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS WBC1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS WBC2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS WBC3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS WBC4
    FROM wbc_13
) wbc