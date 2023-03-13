from base_etl import BaseETL
import pandas as pd

class reoperationrecordstep04(BaseETL):
    def run(
        self,
    ):
        
        f = open("OP/re_operation_record_sql4.sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        self.insert(df, db_name="gc_protocol", tb_name="re_operation_record_step_04") 


if __name__ == "__main__":
    obj = reoperationrecordstep04()
    obj.run()

