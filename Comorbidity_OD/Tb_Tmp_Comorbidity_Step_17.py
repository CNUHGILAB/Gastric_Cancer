import pandas as pd
from base_etl import BaseETL

class TbTmpComorbidityStep17(BaseETL):

    def run(
        self,
    ):
        sql = "SELECT ID FROM gc_protocol.tb_tmp_comorbidity_step_16;"
        df = self.df_from_sql(db_name="gc_protocol", sql=sql) 

        df2 = pd.DataFrame()
        ID_del = df.drop_duplicates(['ID'])

        ID_Data = [x for x in ID_del.loc[:,'ID']]

        for y in ID_Data:
            print(y)
            sql = '''
                SELECT 
                    *
                FROM
                    (SELECT 
                        a.ID,
                            CASE
                                WHEN Mdate > Pdate THEN '-'
                                WHEN Mdate < Pdate THEN '+'
                                WHEN b.CVA_MD_1 = 'GS' THEN b.CVA
                            END AS CVA
                    FROM
                        (SELECT 
                            *,
                            COUNT(IF(CVA = '-', CVA, NULL)) AS Mdate,
                            COUNT(IF(CVA = '+', CVA, NULL)) AS Pdate
                        FROM
                            gc_protocol.tb_tmp_comorbidity_step_16
                        WHERE
                            ID = '{0}')a, 
                        (SELECT 
                            *
                        FROM
                            gc_protocol.tb_tmp_comorbidity_step_16
                        WHERE
                            ID = '{0}')b
                    ) c
                WHERE
                    CVA IS NOT NULL
                GROUP BY CVA
            '''.format(y)
            data2 = self.df_from_sql(db_name="gc_raw", sql=sql)
            df2 = pd.concat([df2,data2],axis = 0, sort=False) 
        df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_CVA_2.xlsx')
        self.insert(df2, db_name="gc_protocol", tb_name="tb_tmp_comorbidity_step_17") 
if __name__ == "__main__":
    obj = TbTmpComorbidityStep17()
    obj.run()