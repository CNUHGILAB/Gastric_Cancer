SELECT
    CHKID,
    ID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN SNP1
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN SNP2
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN SNP3
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN SNP4
        ELSE NULL
    END AS `Seg.Neutro.P POD1`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN SNP1
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN SNP2
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN SNP3
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN SNP4
        ELSE NULL
    END AS `Seg.Neutro.P POD2`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN SNP1
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN SNP2
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN SNP3
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN SNP4
        ELSE NULL
    END AS `Seg.Neutro.P POD3`,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN SNP1
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN SNP2
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN SNP3
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN SNP4
        ELSE NULL
    END AS `Seg.Neutro.P POD4`
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
            WHEN NULLIF(REGEXP_SUBSTR(SNP_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SNP_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS SNP1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SNP_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SNP_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS SNP2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SNP_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SNP_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS SNP3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SNP_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SNP_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS SNP4
    FROM seg_neutro_p_13
) snp