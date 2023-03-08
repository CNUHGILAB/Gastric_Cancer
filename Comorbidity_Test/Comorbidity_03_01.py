import pandas as pd
from Base_ETL import BaseETL

class Comorbidity03_01(BaseETL):

    def run(self):
        
        sql = "SELECT ID FROM gc_protocol_test.comorbidity_02_01;"
        
        df = self.df_from_sql(db_name = "gc_protocol_test", sql = sql) 

        df2 = pd.DataFrame()
        
        ID_del = df.drop_duplicates(['ID'])

        ID_Data = [x for x in ID_del.loc[:, 'ID']]

        for y in ID_Data:
            #print(y)
            
            sql = '''
                SELECT * FROM(
                    SELECT 
                        a.ID,
                        CASE
                            WHEN Mdate > Pdate
                            THEN '-'
                            WHEN Mdate < Pdate
                            THEN '+'
                            WHEN b.DM_MD_1 = 'GS'
                            THEN b.DM
                        END AS DM
                    FROM(
                        SELECT *,
                            COUNT(IF(DM = '-', DM, NULL)) AS Mdate,
                            COUNT(IF(DM = '+', DM, NULL)) AS Pdate
                        FROM gc_protocol_test.comorbidity_02_01
                        WHERE ID = '{0}'
                    ) a, (
                        SELECT * FROM gc_protocol_test.comorbidity_02_01
                        WHERE ID = '{0}'
                    ) b
                ) c
                WHERE DM IS NOT NULL
                GROUP BY DM
            '''.format(y)
            
            data2 = self.df_from_sql(db_name = "gc_raw_test", sql = sql)
            
            df2 = pd.concat([df2, data2], axis = 0, sort = False)
            
        #df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_DM_2.xlsx')
        
        self.insert(df2, db_name = "gc_protocol_test", tb_name = "comorbidity_03_01")
        
if __name__ == "__main__":
    obj = Comorbidity03_01()
    obj.run()