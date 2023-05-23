SELECT
    환자번호 AS `ID`,
    원무접수ID AS Checkin,
    Test_Date,
    TumorLesion,
    TumorLocation,
    CASE
        WHEN INSTR(TumorLocation, ',') != 0
        THEN 'Large lesion'
    END AS TumorLocation_1,
    TumorCircumference,
    TumorSize,
    Histology,
    LaurenType,
    Diff,
    Diff_Mix,
    GrossType,
    /*
    HER2,
    p53,
    EBV,
    */
    MSI_Test,
    pT,
    pN,
    pM,
    Staging,
    metLN,
    harvLN,
    LVI,
    PNI,
    pProxMargin,
    pDistMargin,
    pSafeMargin
FROM(
    SELECT
        환자번호,
        원무접수ID,
        STR_TO_DATE(검사시행일, '%%Y-%%m-%%d') AS Test_Date,
        Site_Num AS TumorLesion,
        #TumorLocation_2 AS TumorLesion,
        Tumor_Location AS TumorLocation,
        Tumor_Circumference AS TumorCircumference,
        Tumor_Size AS TumorSize,
        Histologic_Type AS Histology,
        Lauren_Type AS LaurenType,
        CONCAT(Gross_Type, ' ', Gross_Type_Int) AS GrossType,
        /*
        CASE
            WHEN INSTR(HER2, '+') != 0
            THEN 'Pos'
            WHEN INSTR(HER2, '-') != 0
            THEN 'Neg'
            WHEN NULLIF(HER2, '') IS NULL
            THEN 'None'
        END AS HER2,
        CASE
            WHEN INSTR(p53, '+') != 0
            THEN 'Pos'
            WHEN NULLIF(p53_p, '') IS NOT NULL
            THEN 'Pos'
            WHEN INSTR(p53, '-') != 0
            THEN 'Neg'
            WHEN NULLIF(p53, '') IS NULL
            THEN 'None'
        END AS p53,
        CASE
            WHEN INSTR(EBV, '+') != 0
            THEN 'Pos'
            WHEN INSTR(EBV, '-') != 0
            THEN 'Neg'
            WHEN nullif(EBV, '') IS NULL
            THEN 'None'
        END AS EBV,
        */
        CASE
            WHEN (MSI_Test = 'MSS') = 1
            THEN 'Neg(MSS)'
            WHEN (MSI_Test = 'MSI') = 1
            THEN 'Pos(MSI)'
            ELSE 'None'
        END MSI_Test,
        pT,
        pN,
        pM,
        Staging,
        metLN,
        harvLN,
        LVI,
        PNI,
        pProx_Margin AS pProxMargin,
        pDist_Margin AS pDistMargin,
        pSafe_Margin AS pSafeMargin,
        /*
        CASE
            WHEN (NULLIF(pProxMargin, '') IS NULL AND NULLIF(pDistMargin, '') IS NULL)
            THEN 'No'
            WHEN (pProxMargin IS NOT NULL AND NULLIF(pDistMargin, '') IS NULL)
            THEN 'No'
            WHEN (NULLIF(pProxMargin, '') IS NULL AND pDistMargin IS NOT NULL)
            THEN 'No'
            WHEN (pProxMargin IS NOT NULL AND pDistMargin IS NOT NULL)
            THEN 'Yes'
        END AS pSafeMargin,
        */
        CASE
            WHEN Diff_Maj = 'well'
            THEN 'WD'
            WHEN Diff_Maj = 'moderately'
            THEN 'MD'
            WHEN Diff_Maj = 'poorly'
            THEN 'PD'
        END AS Diff,
        CASE 
            WHEN Diff_Num = 2
            THEN 'Yes'
            ELSE 'No'
        END AS Diff_Mix
    FROM gc_database.pathologic_biopsy
    WHERE(
        환자번호 IN (
            SELECT
                환자번호
            FROM raw_file_2012_2022.operation
            WHERE(
                환자번호 IN (
                    SELECT
                        DISTINCT 환자번호
                    FROM raw_file_2012_2022.operation_record
                )
            )
        )
    )
) c