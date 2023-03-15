import pandas as pd
from Base_ETL import BaseETL

class Comorbidity05_01(BaseETL):

    def run(self):
        
        sql = "SELECT ID FROM comorbidity_protocol.comorbidity_04_01;"
        
        df = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

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
                            WHEN b.HTN_MD_1 = 'GS'
                            THEN b.HTN
                        END AS HTN
                    FROM(
                        SELECT *,
                            COUNT(IF(HTN = '-', HTN, NULL)) AS Mdate,
                            COUNT(IF(HTN = '+', HTN, NULL)) AS Pdate
                        FROM comorbidity_protocol.comorbidity_04_01
                        WHERE ID = '{0}'
                    )a, (
                        SELECT * FROM comorbidity_protocol.comorbidity_04_01
                        WHERE ID = '{0}'
                    )b
                ) c
                WHERE HTN IS NOT NULL
                GROUP BY HTN
            '''.format(y)
            
            data2 = self.df_from_sql(db_name = "gc_raw", sql = sql)
            
            df2 = pd.concat([df2, data2], axis = 0, sort = False)
            
        #df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_HTN_2.xlsx')
        
        self.insert(df2, db_name = "comorbidity_protocol", tb_name = "comorbidity_05_01") # tb_name = "tb_tmp_comorbidity_05_00"


if __name__ == "__main__":
    obj = Comorbidity05_01()
    obj.run()