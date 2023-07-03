from Base_ETL import BaseETL

class Registry13_01(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                ID,
                Checkin,
                MIN(AD_Date) AS From_DT,
                MAX(AD_Date) AS To_DT,
                AD,
                COUNT(*) AS cnt
            FROM(
                SELECT
                    A.*,
                    @rownum := @rownum + 1 AS rownum,
                    DATE_SUB(AD_Date, INTERVAL @rownum DAY) AS AD_Date_1
                FROM registry_total.registry_13_00 A,
                    (
                    SELECT
                        @rownum := 0
                ) B
            ) C
            GROUP BY ID, AD_Date_1
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_21.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_13_01")


if __name__ == "__main__":
    obj = Registry13_01()
    obj.run()