SELECT
    ID,
    CHKID,
    Op_Date,
    CASE 
        WHEN NULLIF(POD1, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD1)
        ELSE NULL
    END AS POD1,
    CASE 
        WHEN NULLIF(POD2, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD2)
        ELSE NULL
    END AS POD2,
    CASE 
        WHEN NULLIF(POD3, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD3)
        ELSE NULL
    END AS POD3,
    CASE 
        WHEN NULLIF(POD4, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD4)
        ELSE NULL
    END AS POD4,
    CASE 
        WHEN NULLIF(POD5, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD5)
        ELSE NULL
    END AS POD5,
    CASE 
        WHEN NULLIF(POD6, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD6)
        ELSE NULL
    END AS POD6,
    CASE 
        WHEN NULLIF(POD7, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD7)
        ELSE NULL
    END AS POD7,
    CASE 
        WHEN NULLIF(POD8, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD8)
        ELSE NULL
    END AS POD8,
    CASE 
        WHEN NULLIF(POD9, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD9)
        ELSE NULL
    END AS POD9,
    CASE 
        WHEN NULLIF(POD10, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD10)
        ELSE NULL
    END AS POD10,
    CASE 
        WHEN NULLIF(POD11, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD11)
        ELSE NULL
    END AS POD11,
    CASE 
        WHEN NULLIF(POD12, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD12)
        ELSE NULL
    END AS POD12,
    CASE 
        WHEN NULLIF(POD13, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD13)
        ELSE NULL
    END AS POD13,
    CASE 
        WHEN NULLIF(POD14, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD14)
        ELSE NULL
    END AS POD14,
    CASE 
        WHEN NULLIF(POD15, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD15)
        ELSE NULL
    END AS POD15,
    CASE 
        WHEN NULLIF(POD16, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD16)
        ELSE NULL
    END AS POD16,
    CASE 
        WHEN NULLIF(POD17, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD17)
        ELSE NULL
    END AS POD17,
    CASE 
        WHEN NULLIF(POD18, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD18)
        ELSE NULL
    END AS POD18,
    CASE 
        WHEN NULLIF(POD19, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD19)
        ELSE NULL
    END AS POD19,
    CASE 
        WHEN NULLIF(POD20, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD20)
        ELSE NULL
    END AS POD20,
    CASE 
        WHEN NULLIF(POD21, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD21)
        ELSE NULL
    END AS POD21,
    CASE 
        WHEN NULLIF(POD22, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD22)
        ELSE NULL
    END AS POD22,
    CASE 
        WHEN NULLIF(POD23, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD23)
        ELSE NULL
    END AS POD23,
    CASE 
        WHEN NULLIF(POD24, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD24)
        ELSE NULL
    END AS POD24,
    CASE 
        WHEN NULLIF(POD25, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD25)
        ELSE NULL
    END AS POD25,
    CASE 
        WHEN NULLIF(POD26, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD26)
        ELSE NULL
    END AS POD26,
    CASE 
        WHEN NULLIF(POD27, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD27)
        ELSE NULL
    END AS POD27,
    CASE 
        WHEN NULLIF(POD28, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD28)
        ELSE NULL
    END AS POD28,
    CASE 
        WHEN NULLIF(POD29, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD29)
        ELSE NULL
    END AS POD29,
    CASE 
        WHEN NULLIF(POD30, '') IS NOT NULL
        THEN CONCAT('Seg.Neutro(P): ', POD30)
        ELSE NULL
    END AS POD30,
    `MIN`,
    `MAX`,
    ROUND(MEAN, 1) AS MEAN
FROM registry_48