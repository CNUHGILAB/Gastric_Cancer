from Base_ETL import BaseETL
import pandas as pd

class Registry22(BaseETL):

    def run(self):
        
        sql = "SELECT ID FROM registry_protocol.registry_21;"
        
        df = self.df_from_sql(db_name = "registry_protocol", sql = sql) 

        df2 = pd.DataFrame()
        ID_del = df.drop_duplicates(['ID'])

        ID_Data = [x for x in ID_del.loc[:, 'ID']]

        for y in ID_Data:
            
            sql ='''
                SELECT
                    A.*,
                    @rownum := @rownum + 1 AS rownum
                FROM(
                    SELECT
                        ID,
                        Checkin,
                        MIN(From_DT) AS From_DT,
                        MAX(To_DT) AS To_DT,
                        AD,
                        COUNT(*) AS Count
                    FROM registry_protocol.registry_21 A
                    WHERE
                        ID = '{0}'
                    GROUP BY
                        AD
                ) A,
                (
                    SELECT
                        @rownum := 0
                ) B
            '''.format(y)
            
            data2 = self.df_from_sql(db_name = "registry_protocol", sql = sql)
            
            df2 = pd.concat([df2, data2], axis = 0, sort = False)
            df2.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_22.xlsx')
        
        self.insert(df, db_name = "registry_protocol", tb_name = "registry_22")


if __name__ == "__main__":
    obj = Registry22()
    obj.run()