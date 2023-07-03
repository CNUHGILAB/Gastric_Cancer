from Base_ETL import BaseETL

class Registry01_00(BaseETL):

    def run(self):

        sql = '''
            SELECT
                CHKID,
                ID,
                Sex,
                OP_Age AS OP_AGE,
                HT,
                WT,
                BMI,
                ADR_1,
                ADR_2,
                OP_ADM,
                OP_DISC,
                MIN(OP_Date) AS OP_DATE
            FROM gc_database_total.patient
            GROUP BY ID, OP_ADM, OP_DISC
            HAVING COUNT(ID) > 1 AND COUNT(OP_ADM) > 1 AND COUNT(OP_DISC) > 1
        '''
        
        df = self.df_from_sql(db_name = "gc_database_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_01.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_01_00")


if __name__ == "__main__":
    obj = Registry01_00()
    obj.run()