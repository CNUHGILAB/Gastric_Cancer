SELECT
    CHKID,
    ID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN CRP4
        ELSE NULL
    END AS `CRP POD1`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN CRP4
        ELSE NULL
    END AS `CRP POD2`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN CRP4
        ELSE NULL
    END AS `CRP POD3`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN CRP4
        ELSE NULL
    END AS `CRP POD4`
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
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS CRP1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS CRP2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS CRP3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS CRP4
    FROM crp_13
) crp