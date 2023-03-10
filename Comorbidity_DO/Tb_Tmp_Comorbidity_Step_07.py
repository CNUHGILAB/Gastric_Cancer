import pandas as pd
from base_etl import BaseETL

class TbTmpComorbidityStep07(BaseETL):

    def run(
        self,
    ):
        sql = "SELECT ID FROM gc_protocol.tb_tmp_comorbidity_step_06;"
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
                                WHEN b.L_Hep_MD_1 = 'GS' THEN b.L_Hep
                            END AS L_Hep
                    FROM
                        (SELECT 
                            *,
                            COUNT(IF(L_Hep = '-', L_Hep, NULL)) AS Mdate,
                            COUNT(IF(L_Hep = '+', L_Hep, NULL)) AS Pdate
                        FROM
                            gc_protocol.tb_tmp_comorbidity_step_06
                        WHERE
                            ID = '{0}')a, 
                        (SELECT 
                            *
                        FROM
                            gc_protocol.tb_tmp_comorbidity_step_06
                        WHERE
                            ID = '{0}')b
                    ) c
                WHERE
                    L_Hep IS NOT NULL
                GROUP BY L_Hep
            '''.format(y)
            data2 = self.df_from_sql(db_name="gc_raw", sql=sql)
            df2 = pd.concat([df2,data2],axis = 0, sort=False) 
        df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_L_Hep_2.xlsx')
        self.insert(df2, db_name="gc_protocol", tb_name="tb_tmp_comorbidity_step_07") 
if __name__ == "__main__":
    obj = TbTmpComorbidityStep07()
    obj.run()