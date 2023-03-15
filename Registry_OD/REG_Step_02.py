from base_etl import BaseETL

class REGStep02(BaseETL):

    def run(
        self,
    ):

        f = open("Registry/Comorbidity.sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_Comorbidity.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep02")

    
if __name__ == "__main__":
    obj = REGStep02()
    obj.run()