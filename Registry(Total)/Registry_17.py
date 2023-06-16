from Base_ETL import BaseETL

class Registry17(BaseETL):

    def run(self):
        
        sql = '''
            SELECT *,
            COUNT(*) AS cnt
            FROM registry_16
            GROUP BY
                ID, CHKID, REC_Date, OP_RESC
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_17.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_17")


if __name__ == "__main__":
    obj = Registry17()
    obj.run()