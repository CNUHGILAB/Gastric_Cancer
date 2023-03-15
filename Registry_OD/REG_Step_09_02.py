from base_etl import BaseETL

class REGStep09_02(BaseETL):

    def run(
        self,
    ):

        sql = '''
            SELECT
                DiSTINCT ID,
                CHKID,
                OP_Date,
                REC_Date,
                Operator as OP_OPRT,
                OP_TROC,
                OP_RESC,
                OP_RECO,
                OP_BRN,
                OP_INTP,
                OP_ANTC,
                OP_PRM,
                OP_DRM,
                OP_RESC_CO,
                OP_RESC_CO_ST,
                OP_OMEN,
                OP_CURA,
                OP_DRAN_NO,
                OP_DRAN_TP
            FROM
                regstep09_00 st0
                left join regstep09_01 st1 on (
                    st0.환자번호 = st1.ID
                    and st0.원무접수ID = st1.CHKID
                    and st0.REC_Date >= st1.OP_Date
                )
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_Op.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep09_02")

    
if __name__ == "__main__":
    obj = REGStep09_02()
    obj.run()