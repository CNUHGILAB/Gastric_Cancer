from Base_ETL import BaseETL

class RegistryMerge07(BaseETL):

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
                FP,
                CMB,
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
                st0.OP_Date
            FROM
                registry_merge_06 st0
                LEFT JOIN registry_24 st1 ON (st0.ID = st1.ID
                AND st0.OP_Date = st1.OP_Date
                )
        '''

        df = self.df_from_sql(db_name = "registry_protocol", sql = sql) 
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_Merge_07.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_protocol", tb_name = "registry_merge_07")


if __name__ == "__main__":
    obj = RegistryMerge07()
    obj.run()