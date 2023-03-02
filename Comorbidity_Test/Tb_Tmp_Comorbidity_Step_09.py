import pandas as pd
from Base_ETL import BaseETL

class TbTmpComorbidityStep09(BaseETL):

    def run(
        self,
    ):
        sql = "SELECT ID FROM gc_protocol_test.tb_tmp_comorbidity_08_00;"
        df = self.df_from_sql(db_name="gc_protocol_test", sql=sql) 

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
                                WHEN b.TBC_MD_1 = 'GS' THEN b.TBC
                            END AS TBC
                    FROM
                        (SELECT 
                            *,
                            COUNT(IF(TBC = '-', TBC, NULL)) AS Mdate,
                            COUNT(IF(TBC = '+', TBC, NULL)) AS Pdate
                        FROM
                            gc_protocol_test.tb_tmp_comorbidity_08_00
                        WHERE
                            ID = '{0}')a, 
                        (SELECT 
                            *
                        FROM
                            gc_protocol_test.tb_tmp_comorbidity_08_00
                        WHERE
                            ID = '{0}')b
                    ) c
                WHERE
                    TBC IS NOT NULL
                GROUP BY TBC
            '''.format(y)
            data2 = self.df_from_sql(db_name="gc_raw_test", sql=sql)
            df2 = pd.concat([df2,data2],axis = 0, sort=False) 
            
        #df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_TBC_2.xlsx')
        self.insert(df2, db_name="gc_protocol_test", tb_name="tb_tmp_comorbidity_09_00")
        
if __name__ == "__main__":
    obj = TbTmpComorbidityStep09()
    obj.run()