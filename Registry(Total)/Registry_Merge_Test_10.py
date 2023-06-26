from Base_ETL import BaseETL

class RegistryMerge10(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM registry_merge_08
            WHERE NOT EXISTS (
                SELECT
                    CHKID,
                    ID,
                    Op_Date
                FROM registry_merge_09
                WHERE (
                    registry_merge_08.CHKID = registry_merge_09.CHKID
                    AND registry_merge_08.ID = registry_merge_09.ID
                    AND registry_merge_08.Op_Date = registry_merge_09.Op_Date
                )
            )
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql) 
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_Merge_01.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_merge_10")

    
if __name__ == "__main__":
    obj = RegistryMerge10()
    obj.run()