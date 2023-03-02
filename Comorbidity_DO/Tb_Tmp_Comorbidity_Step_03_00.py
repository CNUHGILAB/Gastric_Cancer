import pandas as pd
from base_etl import BaseETL

class TbTmpComorbidityStep03(BaseETL):

    def run(
        self,
    ):
        sql = "SELECT ID FROM gc_protocol.tb_tmp_comorbidity_step_02_00;"
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
                                WHEN b.DM_MD_1 = 'GS' THEN b.DM
                            END AS DM
                    FROM
                        (SELECT 
                            *,
                            COUNT(IF(DM = '-', DM, NULL)) AS Mdate,
                            COUNT(IF(DM = '+', DM, NULL)) AS Pdate
                        FROM
                            gc_protocol.tb_tmp_comorbidity_step_02_00
                        WHERE
                            ID = '{0}')a, 
                        (SELECT 
                            *
                        FROM
                            gc_protocol.tb_tmp_comorbidity_step_02_00
                        WHERE
                            ID = '{0}')b
                    ) c
                WHERE
                    DM IS NOT NULL
                GROUP BY DM
            '''.format(y)
            data2 = self.df_from_sql(db_name="gc_raw", sql=sql)
            df2 = pd.concat([df2,data2],axis = 0, sort=False) 
        df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_DM_2.xlsx')
        self.insert(df2, db_name="gc_protocol", tb_name="tb_tmp_comorbidity_step_03") 
if __name__ == "__main__":
    obj = TbTmpComorbidityStep03()
    obj.run()