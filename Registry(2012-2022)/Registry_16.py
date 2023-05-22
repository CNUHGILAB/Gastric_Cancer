from Base_ETL import BaseETL

class Registry16(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                DiSTINCT ID,
                CHKID,
                OP_Date,
                REC_Date,
                Operator AS OP_OPRT,
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
                registry_14 st0
                LEFT JOIN registry_15 st1 ON (
                    st0.환자번호 = st1.ID
                    and st0.원무접수ID = st1.CHKID
                    and st0.REC_Date >= st1.OP_Date
                )
        '''
        
        df = self.df_from_sql(db_name = "registry_protocol", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_16.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_protocol", tb_name = "registry_16")


if __name__ == "__main__":
    obj = Registry16()
    obj.run()