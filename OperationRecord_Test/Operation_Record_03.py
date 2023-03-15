from Base_ETL import BaseETL
import pandas as pd

class OpRecord03(BaseETL):
    
    def run(self):
        
        sql = "SELECT * FROM operation_record_02;"
        
        df = self.df_from_sql(db_name = "operation_record_protocol", sql = sql)

        one = [100471628, 100471631, 100471635, 100471645, 100471646, 
                100471647, 100471648, 100471654, 100471710, 100471711,
                100471713, 100471714, 100471715, 100471716, 100471719,
                100471595, 100471596, 100471447, 100471450, 100471451,
                100471452, 100471453, 100471458, 100471459, 100471695,
                100471696, 100471697, 100471700, 100471701, 100471702
        ]

        for x in one:
            
            f = open("OperationRecord_Test/Operation_Record_03.sql", 'rt', encoding = 'UTF8')
            
            sql= ''
            
            while True:
                
                line = f.readline()
                
                if not line:
                    break
                
                a = str(line)
                
                sql  = sql + a
                
            sql = sql.format(x)
            
            f.close()
            
            data = self.df_from_sql(db_name = "gc_raw", sql = sql)
            
            df = pd.merge(df, data, how = 'left', on = ['원무접수ID', '의무기록작성일', '진료서식ID', '환자번호'])
            #print(df)
            
        self.insert(df, db_name = "operation_record_protocol", tb_name = "operation_record_03") 


if __name__ == "__main__":
    obj = OpRecord03()
    obj.run()