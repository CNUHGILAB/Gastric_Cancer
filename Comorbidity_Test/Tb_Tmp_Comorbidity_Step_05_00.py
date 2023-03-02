import pandas as pd
from Base_ETL import BaseETL

class TbTmpComorbidityStep05(BaseETL):

    def run(
        self,
    ):
        sql = "SELECT ID FROM gc_protocol_test.tb_tmp_comorbidity_04_00;"
        df = self.df_from_sql(db_name="gc_protocol_test", sql=sql) 

        df2 = pd.DataFrame()
        ID_del = df.drop_duplicates(['ID'])

        ID_Data = [x for x in ID_del.loc[:,'ID']]

        for y in ID_Data:
            #print(y)
            sql = '''
                SELECT 
                    *
                FROM
                    (SELECT 
                        a.ID,
                            CASE
                                WHEN Mdate > Pdate THEN '-'
                                WHEN Mdate < Pdate THEN '+'
                                WHEN b.HTN_MD_1 = 'GS' THEN b.HTN
                            END AS HTN
                    FROM
                        (SELECT 
                            *,
                            COUNT(IF(HTN = '-', HTN, NULL)) AS Mdate,
                            COUNT(IF(HTN = '+', HTN, NULL)) AS Pdate
                        FROM
                            gc_protocol_test.tb_tmp_comorbidity_04_00
                        WHERE
                            ID = '{0}')a, 
                        (SELECT 
                            *
                        FROM
                            gc_protocol_test.tb_tmp_comorbidity_04_00
                        WHERE
                            ID = '{0}')b
                    ) c
                WHERE
                    HTN IS NOT NULL
                GROUP BY HTN
            '''.format(y)
            data2 = self.df_from_sql(db_name="gc_raw_test", sql=sql)
            df2 = pd.concat([df2,data2],axis = 0, sort=False)
            
        #df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_HTN_2.xlsx')
        self.insert(df2, db_name="gc_protocol_test", tb_name="tb_tmp_comorbidity_05_00")
        
if __name__ == "__main__":
    obj = TbTmpComorbidityStep05()
    obj.run()