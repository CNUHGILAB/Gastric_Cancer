from base_etl import BaseETL
import pandas as pd
from functools import reduce

class REGStep13(BaseETL):

    def run(
        self,
    ):

        sql = "SELECT * FROM gc_protocol_1.regstep01;"
        df01 = self.df_from_sql(db_name="gc_protocol_1", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM gc_protocol_1.regstep02;"
        df02 = self.df_from_sql(db_name="gc_protocol_1", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM gc_protocol_1.regstep04_01;"
        df03 = self.df_from_sql(db_name="gc_protocol_1", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM gc_protocol_1.regstep05_01;"
        df04 = self.df_from_sql(db_name="gc_protocol_1", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM gc_protocol_1.regstep06_01;"
        df05 = self.df_from_sql(db_name="gc_protocol_1", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM gc_protocol_1.regstep07_01;"
        df06 = self.df_from_sql(db_name="gc_protocol_1", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM gc_protocol_1.regstep08_01;"
        df07 = self.df_from_sql(db_name="gc_protocol_1", sql=sql) 

        #-------------------------------------------------------------

        sql = "SELECT * FROM gc_protocol_1.regstep09;"
        df08 = self.df_from_sql(db_name="gc_protocol_1", sql=sql) 

        #-------------------------------------------------------------
        
        sql = "SELECT * FROM gc_protocol_1.regstep10;"
        df09= self.df_from_sql(db_name="gc_protocol_1", sql=sql) 

        #-------------------------------------------------------------
        
        # sql = "SELECT * FROM gc_protocol_1.regstep11;"
        # df10 = self.df_from_sql(db_name="gc_protocol_1", sql=sql) 

        #-------------------------------------------------------------

        dfs = [df01,df02,df03,df04,df05,df06,df07,df08,df09]
        data = reduce(lambda left, right: pd.merge(left, right, how='outer' ), dfs)
        data = data.sort_values('ID')
        data1 = data.drop_duplicates()
        data1.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_Merge_1.xlsx')
        self.insert(data1, db_name="gc_protocol_1", tb_name="regstep13")

    
if __name__ == "__main__":
    obj = REGStep13()
    obj.run()