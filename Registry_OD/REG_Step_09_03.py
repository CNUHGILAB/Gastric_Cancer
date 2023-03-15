from base_etl import BaseETL

class REGStep09_03(BaseETL):

    def run(
        self,
    ):

        sql = '''
            SELECT 
                *, COUNT(*) AS cnt
            FROM
                regstep09_02
            GROUP BY ID , CHKID , REC_Date , OP_RESC
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_Op.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep09_03")

    
if __name__ == "__main__":
    obj = REGStep09_03()
    obj.run()