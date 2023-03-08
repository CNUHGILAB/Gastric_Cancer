import pandas as pd
from Base_ETL import BaseETL

class Comorbidity14(BaseETL):

    def run(self):
        
        sql = "SELECT ID FROM gc_protocol_test.comorbidity_13;"
        
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
                            WHEN b.COPD_MD_1 = 'GS'
                            THEN b.COPD
                        END AS COPD
                    FROM(
                        SELECT *,
                            COUNT(IF(COPD = '-', COPD, NULL)) AS Mdate,
                            COUNT(IF(COPD = '+', COPD, NULL)) AS Pdate
                        FROM gc_protocol_test.comorbidity_13
                        WHERE ID = '{0}'
                    ) a, (
                        SELECT * FROM gc_protocol_test.comorbidity_13
                        WHERE ID = '{0}'
                    ) b
                ) c
                WHERE COPD IS NOT NULL
                GROUP BY COPD
            '''.format(y)
            
            data2 = self.df_from_sql(db_name = "gc_raw_test", sql = sql)
            
            df2 = pd.concat([df2, data2], axis = 0, sort = False)
            
        #df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_COPD_2.xlsx')
        
        self.insert(df2, db_name = "gc_protocol_test", tb_name = "comorbidity_14") # tb_name = "tb_tmp_comorbidity_14"
        
if __name__ == "__main__":
    obj = Comorbidity14()
    obj.run()