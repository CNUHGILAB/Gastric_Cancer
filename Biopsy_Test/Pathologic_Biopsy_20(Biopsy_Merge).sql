SELECT
    st.원무접수ID,
    st.검사시행일,
    st.환자번호,
    Endoscopic,
    Site_Num,
    #COALESCE(st0.TumorLocation, st14.TumorLocation) AS TumorLocation,
    Tumor_Location,
    #COALESCE(st0.TumorCircumference, st14.TumorCircumference) AS TumorCircumference,
    Tumor_Circumference,
    Location_etc,
    #COALESCE(st1.TumorSize, st15.TumorSize) AS TumorSize,
    Tumor_Size,
    Size_Cmt,
    Histologic_Type,
    -- histologic_type_etc,
    Lauren_Type,
    Differentiation,
    Diff_NUM,
    Diff_MAJ,
    Diff_P,
    MSI_Test,
    Gross_Type_O,
    Gross_Type,
    Gross_Type_Int,
    pProx_Margin,
    pDist_Margin,
    pSafe_Margin,
    pTNM_VER,
    COALESCE(pT, T_stage) AS pT,
    pT,
    CASE
        WHEN pN != "None"
        THEN pN
        WHEN MET_LN = 0
        THEN "N0"
        WHEN (MET_LN BETWEEN 1 AND 2)
        THEN "N1"
        WHEN (MET_LN BETWEEN 3 AND 6)
        THEN "N2"
        WHEN (MET_LN BETWEEN 7 AND 15)
        THEN "N3a"
        WHEN MET_LN >= 16
        THEN "N3b"
    END AS pN,
    pM,
    Staging,
    pTNM_Comment,
    metLN,
    harvLN,
    LVI,
    LVI_2,
    PNI,
    PNI_2,
    Dysplasia,
    Adenoma,
    Gist,
    검사항목
FROM
    pathologic_biopsy_01 st
    LEFT JOIN pathologic_biopsy_03 st0 ON (
        st.환자번호 = st0.환자번호
        AND st.원무접수ID = st0.원무접수ID
        AND st.검사시행일 = st0.검사시행일
    )
    LEFT JOIN pathologic_biopsy_04 st1 ON (
        st.환자번호 = st1.환자번호
        AND st.원무접수ID = st1.원무접수ID
        AND st.검사시행일 = st1.검사시행일
    )
    LEFT JOIN pathologic_biopsy_05 st2 ON (
        st.환자번호 = st2.환자번호
        AND st.원무접수ID = st2.원무접수ID
        AND st.검사시행일 = st2.검사시행일
    )
    LEFT JOIN pathologic_biopsy_07 st3 ON (
        st.환자번호 = st3.환자번호
        AND st.원무접수ID = st3.원무접수ID
        AND st.검사시행일 = st3.검사시행일
    )
    LEFT JOIN pathologic_biopsy_09 st4 ON (
        st.환자번호 = st4.환자번호
        AND st.원무접수ID = st4.원무접수ID
        AND st.검사시행일 = st4.검사시행일
    )
    LEFT JOIN pathologic_biopsy_10 st5 ON (
        st.환자번호 = st5.환자번호
        AND st.원무접수ID = st5.원무접수ID
        AND st.검사시행일 = st5.검사시행일
    )
    LEFT JOIN pathologic_biopsy_11 st6 ON (
        st.환자번호 = st6.환자번호
        AND st.원무접수ID = st6.원무접수ID
        AND st.검사시행일 = st6.검사시행일
    )
    LEFT JOIN pathologic_biopsy_12 st7 ON (
        st.환자번호 = st7.환자번호
        AND st.원무접수ID = st7.원무접수ID
        AND st.검사시행일 = st7.검사시행일
    )
    LEFT JOIN pathologic_biopsy_13 st8 ON (
        st.환자번호 = st8.환자번호
        AND st.원무접수ID = st8.원무접수ID
        AND st.검사시행일 = st8.검사시행일
    )
    LEFT JOIN pathologic_biopsy_15 st9 ON (
        st.환자번호 = st9.환자번호
        AND st.원무접수ID = st9.원무접수ID
        AND st.검사시행일 = st9.검사시행일
    )
    LEFT JOIN pathologic_biopsy_16 st10 ON (
        st.환자번호 = st10.환자번호
        AND st.원무접수ID = st10.원무접수ID
        AND st.검사시행일 = st10.검사시행일
    )
    LEFT JOIN pathologic_biopsy_17 st11 ON (
        st.환자번호 = st11.환자번호
        AND st.원무접수ID = st11.원무접수ID
        AND st.검사시행일 = st11.검사시행일
    )
    LEFT JOIN pathologic_biopsy_18 st12 ON (
        st.환자번호 = st12.환자번호
        AND st.원무접수ID = st12.원무접수ID
        AND st.검사시행일 = st12.검사시행일
    )
    LEFT JOIN pathologic_biopsy_19 st13 ON (
        st.환자번호 = st13.환자번호
        AND st.원무접수ID = st13.원무접수ID
        AND st.검사시행일 = st13.검사시행일
    )