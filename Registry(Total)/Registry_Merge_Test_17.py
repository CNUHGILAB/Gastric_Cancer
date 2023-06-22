from Base_ETL import BaseETL

class RegistryMerge17(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM registry_merge_15
            WHERE (ID, CHKID, Op_Date) IN (
                SELECT
                    ID,
                    CHKID,
                    Op_Date
                FROM registry_merge_16
            )
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql) 
        df.to_excel('D:/Gastric_Cancer_xlsx/Registry(Total)/Registry_Test(PA).xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_merge_17")

    
if __name__ == "__main__":
    obj = RegistryMerge17()
    obj.run()