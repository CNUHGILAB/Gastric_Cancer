from Base_ETL import BaseETL

class Registry09(BaseETL):

    def run(self):
        
        sql = '''
            SELECT DiSTINCT
                ID,
                CHKID,
                OP_DATE,
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
                registry_08 st0
                LEFT JOIN registry_02 st1 ON (
                    st0.환자번호 = st1.ID
                    AND st0.원무접수ID = st1.CHKID
                    AND st0.REC_Date >= st1.OP_DATE
                )
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_16.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_09")


if __name__ == "__main__":
    obj = Registry09()
    obj.run()