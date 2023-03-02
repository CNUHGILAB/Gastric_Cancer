from Base_ETL import BaseETL

class Biopsy_Merge(BaseETL):

    def run(self):
        
        sql = '''
            # 병리검사 기록지만 해당
            SELECT
                st.원무접수ID,
                st.검사시행일,
                st.환자번호,
                ENDOSCOPIC,
                SITE_NUM,
                #COALESCE(st0.TumorLocation, st14.TumorLocation) AS TumorLocation,
                TUMOR_LOCATION,
                #COALESCE(st0.TumorCircumference, st14.TumorCircumference) AS TumorCircumference,
                TUMOR_CIRCUMFERENCE,
                LOCATION_ETC,
                #COALESCE(st1.TumorSize, st15.TumorSize) AS TumorSize,
                TUMOR_SIZE,
                SIZE_CMT,
                HISTOLOGIC_TYPE,
                -- histologic_type_etc,
                LAUREN_TYPE,
                DIFFERENTIATION,
                DIFF_NUM,
                DIFF_MAJ,
                DIFF_P,
                MSI_TEST,
                GROSS_TYPE_O,
                GROSS_TYPE,
                GROSS_TYPE_INT,
                pPROX_MARGIN,
                pDIST_MARGIN,
                pSAFE_MARGIN ,
                pTNM_VER,
                #COALESCE(pT,T_stage) AS pT,
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
                STAGING,
                pTNM_COMMENT,
                MET_LN,
                HARV_LN,
                LVI,
                LVI_2,
                PNI,
                PNI_2,
                DYSPLASIA,
                ADENOMA,
                GIST,
                검사항목
            FROM
                biopsy_01 st
                left join biopsy_03 st0 on (
                    st.환자번호 = st0.환자번호
                    and st.원무접수ID = st0.원무접수ID
                    and st.검사시행일 = st0.검사시행일
                )
                left join biopsy_04 st1 on (
                    st.환자번호 = st1.환자번호
                    and st.원무접수ID = st1.원무접수ID
                    and st.검사시행일 = st1.검사시행일
                )
                left join biopsy_05 st2 on (
                    st.환자번호 = st2.환자번호
                    and st.원무접수ID = st2.원무접수ID
                    and st.검사시행일 = st2.검사시행일
                )
                left join biopsy_07 st3 on (
                    st.환자번호 = st3.환자번호
                    and st.원무접수ID = st3.원무접수ID
                    and st.검사시행일 = st3.검사시행일
                )
                left join biopsy_09 st4 on (
                    st.환자번호 = st4.환자번호
                    and st.원무접수ID = st4.원무접수ID
                    and st.검사시행일 = st4.검사시행일
                )
                left join biopsy_10 st5 on (
                    st.환자번호 = st5.환자번호
                    and st.원무접수ID = st5.원무접수ID
                    and st.검사시행일 = st5.검사시행일
                )
                left join biopsy_11 st6 on (
                    st.환자번호 = st6.환자번호
                    and st.원무접수ID = st6.원무접수ID
                    and st.검사시행일 = st6.검사시행일
                )
                left join biopsy_12 st7 on (
                    st.환자번호 = st7.환자번호
                    and st.원무접수ID = st7.원무접수ID
                    and st.검사시행일 = st7.검사시행일
                )
                left join biopsy_13 st8 on (
                    st.환자번호 = st8.환자번호
                    and st.원무접수ID = st8.원무접수ID
                    and st.검사시행일 = st8.검사시행일
                )
                left join biopsy_15 st9 on (
                    st.환자번호 = st9.환자번호
                    and st.원무접수ID = st9.원무접수ID
                    and st.검사시행일 = st9.검사시행일
                )
                left join biopsy_16 st10 on (
                    st.환자번호 = st10.환자번호
                    and st.원무접수ID = st10.원무접수ID
                    and st.검사시행일 = st10.검사시행일
                )
                left join biopsy_17 st11 on (
                    st.환자번호 = st11.환자번호
                    and st.원무접수ID = st11.원무접수ID
                    and st.검사시행일 = st11.검사시행일
                )
                left join biopsy_18 st12 on (
                    st.환자번호 = st12.환자번호
                    and st.원무접수ID = st12.원무접수ID
                    and st.검사시행일 = st12.검사시행일
                )
                left join biopsy_19 st13 on (
                    st.환자번호 = st13.환자번호
                    and st.원무접수ID = st13.원무접수ID
                    and st.검사시행일 = st13.검사시행일
                )
                /*
                left join visual_findings_04 st14 on (
                    st.환자번호 = st14.ID
                    and st.원무접수ID = st14.CHKID
                    and st.검사시행일 = st14.Date
                )
                left join visual_findings_08 st15 on (
                    st.환자번호 = st15.ID
                    and st.원무접수ID = st15.CHKID
                    and st.검사시행일 = st15.Date
                )
                left join visual_findings_12 st16 on (
                    st.환자번호 = st16.환자번호
                    and st.원무접수ID = st16.원무접수ID
                    and st.검사시행일 = st16.검사시행일
                )
                */
        '''
        
        df = self.df_from_sql(db_name = 'gc_protocol_test', sql = sql)
        
        self.insert(df, db_name = 'gc_protocol_test', tb_name = 'biopsy_merge') 

if __name__ == "__main__":
    obj = Biopsy_Merge()
    obj.run()
    
#pyinstaller -F -n Biopsy_Merge.exe -w Biopsy_Merge.py