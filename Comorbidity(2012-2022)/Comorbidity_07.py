import pandas as pd
from Base_ETL import BaseETL

class Comorbidity07(BaseETL):

    def run(self):
        
        sql = "SELECT `ID` FROM comorbidity_protocol.comorbidity_06;"
        
        df = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

        df2 = pd.DataFrame()
        
        ID_del = df.drop_duplicates(['ID'])

        ID_Data = [x for x in ID_del.loc[:, 'ID']]

        for y in ID_Data:
            #print(y)
            
            sql = '''
                SELECT * FROM(
                    SELECT 
                        a.`ID`,
                        CASE
                            WHEN Mdate > Pdate
                            THEN '-'
                            WHEN Mdate < Pdate
                            THEN '+'
                            WHEN b.L_Hep_MD_1 = 'GS'
                            THEN b.L_Hep
                        END AS L_Hep
                    FROM(
                        SELECT *,
                            COUNT(IF(L_Hep = '-', L_Hep, NULL)) AS Mdate,
                            COUNT(IF(L_Hep = '+', L_Hep, NULL)) AS Pdate
                        FROM comorbidity_protocol.comorbidity_06
                        WHERE `ID` = '{0}'
                    ) a, (
                        SELECT * FROM comorbidity_protocol.comorbidity_06
                        WHERE `ID` = '{0}'
                    ) b
                ) c
                WHERE L_Hep IS NOT NULL
                GROUP BY L_Hep
            '''.format(y)
            
            data2 = self.df_from_sql(db_name = "raw_file_2012_2022", sql = sql)
            
            df2 = pd.concat([df2, data2], axis = 0, sort = False)
            
        #df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_L_Hep_2.xlsx')
        
        self.insert(df2, db_name = "comorbidity_protocol", tb_name = "comorbidity_07") # tb_name = "tb_tmp_comorbidity_step_07"


if __name__ == "__main__":
    obj = Comorbidity07()
    obj.run()