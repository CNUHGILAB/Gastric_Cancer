from Base_ETL import BaseETL

class RegistryMerge01(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                DISTINCT
                st0.ID,
                st0.CHKID,
                Sex,
                OP_AGE,
                HT,
                WT,
                BMI,
                ADR_1,
                ADR_2,
                FP,
                CMB,
                OP_ADM,
                OP_DISC,
                OP_Date
            FROM
                registry_01 st0
                LEFT JOIN registry_02 st1 ON (st0.ID = st1.ID
                AND st0.OP_Date = st1.OpDate
                )
        '''

        df = self.df_from_sql(db_name = "registry_test", sql = sql) 
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_Merge_01.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_test", tb_name = "registry_merge_01")

    
if __name__ == "__main__":
    obj = RegistryMerge01()
    obj.run()