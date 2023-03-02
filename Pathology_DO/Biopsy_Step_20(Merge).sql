SELECT
    st.원무접수ID,
    st.검사시행일,
    st.환자번호,
    endoscopic,
    site_num,
    COALESCE(st0.TumorLocation, st14.TumorLocation) AS TumorLocation,
    COALESCE(st0.TumorCircumference, st14.TumorCircumference) AS TumorCircumference,
    Location_ETC,
    COALESCE(st1.TumorSize, st15.TumorSize)TumorSize,
    Size_Cmt,
    histologic_type,
    -- histologic_type_etc,
    LaurenType,
    differentiation,
    diff_num,
    diff_maj,
    diff_p,
    MSI_Test,
    gross_type_o,
    gross_type,
    gross_type_int,
    pProxMargin,
    pDistMargin,
    pSafeMargin ,
    pTNM_VER,
    COALESCE(pT,T_stage) AS pT,
    CASE
    WHEN pN != "None" THEN pN
    WHEN metLN = 0 THEN "N0"
    WHEN metLN BETWEEN 1 AND 2 THEN "N1"
    WHEN metLN BETWEEN 3 AND 6 THEN "N2"
    WHEN metLN BETWEEN 7 AND 15 THEN "N3a"
    WHEN metLN >= 16 THEN "N3b"
    END AS pN,
    pM,
    Staing,
    pTNM_Comment,
    metLN,
    harvLN,
    LVI,
    LVI_2,
    PNI,
    PNI_2,
    dysplasia,
    adenoma,
    gist,
    검사항목
FROM
    biopsy_step_01 st
    left join biopsy_step_03 st0 on (
        st.환자번호 = st0.환자번호
        and st.원무접수ID = st0.원무접수ID
        and st.검사시행일 = st0.검사시행일
    )
    left join biopsy_step_04 st1 on (
        st.환자번호 = st1.환자번호
        and st.원무접수ID = st1.원무접수ID
        and st.검사시행일 = st1.검사시행일
    )
    left join biopsy_step_05 st2 on (
        st.환자번호 = st2.환자번호
        and st.원무접수ID = st2.원무접수ID
        and st.검사시행일 = st2.검사시행일
    )
    left join biopsy_step_07 st3 on (
        st.환자번호 = st3.환자번호
        and st.원무접수ID = st3.원무접수ID
        and st.검사시행일 = st3.검사시행일
    )
    left join biopsy_step_09 st4 on (
        st.환자번호 = st4.환자번호
        and st.원무접수ID = st4.원무접수ID
        and st.검사시행일 = st4.검사시행일
    )
    left join biopsy_step_10 st5 on (
        st.환자번호 = st5.환자번호
        and st.원무접수ID = st5.원무접수ID
        and st.검사시행일 = st5.검사시행일
    )
    left join biopsy_step_11 st6 on (
        st.환자번호 = st6.환자번호
        and st.원무접수ID = st6.원무접수ID
        and st.검사시행일 = st6.검사시행일
    )
    left join biopsy_step_12 st7 on (
        st.환자번호 = st7.환자번호
        and st.원무접수ID = st7.원무접수ID
        and st.검사시행일 = st7.검사시행일
    )
    left join biopsy_step_13 st8 on (
        st.환자번호 = st8.환자번호
        and st.원무접수ID = st8.원무접수ID
        and st.검사시행일 = st8.검사시행일
    )
    left join biopsy_step_15 st9 on (
        st.환자번호 = st9.환자번호
        and st.원무접수ID = st9.원무접수ID
        and st.검사시행일 = st9.검사시행일
    )
    left join biopsy_step_16 st10 on (
        st.환자번호 = st10.환자번호
        and st.원무접수ID = st10.원무접수ID
        and st.검사시행일 = st10.검사시행일
    )
    left join biopsy_step_17 st11 on (
        st.환자번호 = st11.환자번호
        and st.원무접수ID = st11.원무접수ID
        and st.검사시행일 = st11.검사시행일
    )
    left join biopsy_step_18 st12 on (
        st.환자번호 = st12.환자번호
        and st.원무접수ID = st12.원무접수ID
        and st.검사시행일 = st12.검사시행일
    )
    left join biopsy_step_19 st13 on (
        st.환자번호 = st13.환자번호
        and st.원무접수ID = st13.원무접수ID
        and st.검사시행일 = st13.검사시행일
    )
    left join visual_findings_step04 st14 on (
        st.환자번호 = st14.ID
        and st.원무접수ID = st14.CHKID
        and st.검사시행일 = st14.Date
    )
    left join visual_findings_step08 st15 on (
        st.환자번호 = st15.ID
        and st.원무접수ID = st15.CHKID
        and st.검사시행일 = st15.Date
    )
    left join visual_findings_step12 st16 on (
        st.환자번호 = st16.환자번호
        and st.원무접수ID = st16.원무접수ID
        and st.검사시행일 = st16.검사시행일
    )