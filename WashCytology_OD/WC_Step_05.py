from base_etl import BaseETL


class WCStep05(BaseETL):

    def run(
        self,
    ):
        f = open("Washcytology/Washcytology.sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()

        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        self.insert(df, db_name="gc_db", tb_name="washcytology")

if __name__ == "__main__":
    obj = WCStep05()
    obj.run()