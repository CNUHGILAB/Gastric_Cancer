from Base_ETL import BaseETL

class RegistryMerge06(BaseETL):

    def run(self):
        
        sql= '''
            SELECT
                st0.ID,
                st0.CHKID,
                Sex,
                OP_AGE,
                HT,
                WT,
                BMI,
                ADR_1,
                ADR_2,
                CASE
                    WHEN PRE_ESD IS NULL
                    THEN 'No'
                    ELSE PRE_ESD
                END AS PRE_ESD,
                Alb,
                Hb,
                CEA,
                CA199,
                AFP,
                OP_ADM,
                OP_DISC,
                st0.OP_DATE
            FROM
                registry_merge_05 st0
                LEFT JOIN registry_14_01 st1 ON (st0.ID = st1.ID
                AND st0.OP_DATE = st1.OP_DATE
                )
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql) 
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_Merge_01.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_merge_06")

    
if __name__ == "__main__":
    obj = RegistryMerge06()
    obj.run()