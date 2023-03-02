SELECT
    ID,
    CHKID,
    DATE,
    Impression,
    Post_ESD,
    Post_EMR,
    CASE
        WHEN Esophagitis IS NOT NULL THEN 'YES'
        WHEN Esophageal_Candidiasis IS NOT NULL THEN 'YES'
        WHEN Esophageal_Varix IS NOT NULL THEN 'YES'
        WHEN Esophageal_Ulcer IS NOT NULL THEN 'YES'
        WHEN Esophageal_Cancer IS NOT NULL THEN 'YES'
    END AS Esophagus,
    CASE
        WHEN Gastritis IS NOT NULL THEN 'YES'
        WHEN CAG IS NOT NULL THEN 'YES'
        WHEN Stomach_Cancer IS NOT NULL THEN 'YES'
        WHEN Stomach_EGC_Cancer IS NOT NULL THEN 'YES'
        WHEN Stomach_AGC_Cancer IS NOT NULL THEN 'YES'
        WHEN Stomach_Ulcer IS NOT NULL THEN 'YES'
        WHEN Marginal_Ulcer IS NOT NULL THEN 'YES'
        WHEN Stomach_Polyp IS NOT NULL THEN 'YES'
        WHEN Stomach_Varix IS NOT NULL THEN 'YES'
        WHEN Gastric_Adenoma IS NOT NULL THEN 'YES'
    END AS Esophagus,
    CASE
        WHEN Duodenitis IS NOT NULL THEN 'YES'
        WHEN Duodenum_Ulcer IS NOT NULL THEN 'YES'
        WHEN Duodenum_Polyp IS NOT NULL THEN 'YES'
    END AS Esophagus,
    Esophagitis,
    Esophageal_Candidiasis,
    Esophageal_Varix,
    Esophageal_Ulcer,
    Esophageal_Cancer,
    Gastritis,
    CAG,
    Stomach_Varix,
    Stomach_Ulcer Stomach_Cancer,
    Stomach_EGC_Cancer,
    Stomach_AGC_Cancer,
    Gastric_Adenoma,
    Stomach_Polyp,
    Erosion,
    Duodenitis,
    Duodenum_Ulcer,
    Jejunal_Ulcer,
    Duodenum_Polyp,
    GOO,
    `r/o`,
    Scar,
    Remnant
FROM
    gc_protocol.endoscope_impression_step02;