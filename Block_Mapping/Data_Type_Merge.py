import pandas as pd
from Base_ETL import BaseETL

class DataMerge(BaseETL):

    def run(self):
        
        sql = '''
            SELECT * FROM result_test.test_type1_merge_step
            UNION DISTINCT
            SELECT * FROM result_test.test_type2_merge_step
        '''
        
        df = self.df_from_sql(db_name = "result_test", sql = sql)
        
        self.insert(df, db_name = "result_test", tb_name = "data_merge") 

if __name__ == "__main__":
    obj = DataMerge()
    obj.run()