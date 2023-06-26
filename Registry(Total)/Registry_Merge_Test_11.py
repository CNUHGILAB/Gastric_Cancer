from Base_ETL import BaseETL

class RegistryMerge11(BaseETL):

    def run(self):
        
        sql= '''
            SELECT *
            FROM registry_merge_09
            UNION DISTINCT
            SELECT *
            FROM registry_merge_10
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql) 
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_Merge_01.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_merge_11")

    
if __name__ == "__main__":
    obj = RegistryMerge11()
    obj.run()