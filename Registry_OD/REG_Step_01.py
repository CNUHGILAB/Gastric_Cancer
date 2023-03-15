from base_etl import BaseETL

class REGStep01(BaseETL):

    def run(
        self,
    ):

        sql = "SELECT * FROM gc_db.patient;"

        df = self.df_from_sql(db_name="gc_db", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_Patient.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep01")

    
if __name__ == "__main__":
    obj = REGStep01()
    obj.run()