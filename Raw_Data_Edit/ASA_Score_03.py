from Base_ETL import BaseETL

class ASAScore03(BaseETL):

    def run(self):

        sql = '''
            SELECT *
            FROM asa_score_00
            UNION DISTINCT
            SELECT *
            FROM asa_score_02
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        df.to_excel('D:/GC Raw File/ASA Score Total.xlsx')
        #print(df)
        
        self.insert(df, db_name = "raw_data_edit", tb_name = "asa_score_03")
        self.insert(df, db_name = "raw_data_total", tb_name = "asa_score")


if __name__ == "__main__":
    obj = ASAScore03()
    obj.run()