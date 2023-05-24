import pandas as pd
from Base_ETL import BaseETL

class Comorbidity03_02(BaseETL):

    def run(self):
        
        sql = "SELECT `ID` FROM comorbidity_02_02;"
        
        df = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

        df2 = pd.DataFrame()
        
        ID_del = df.drop_duplicates(['ID'])

        ID_Data = [x for x in ID_del.loc[:, 'ID']]

        for y in ID_Data:
            #print(y)
            
            sql =''' 
                SELECT * FROM comorbidity_02_02
                WHERE (ID = '{0}' AND INSTR(DM_MD_1, 'IM') != 0)
                ORDER BY
                    CASE
                        WHEN DM_MD_1 = 'IM4'
                        THEN 1
                        WHEN DM_MD_1 = 'IM1'
                        THEN 2
                        WHEN DM_MD_1 = 'IM5'
                        THEN 3
                        WHEN DM_MD_1 = 'IM3'
                        THEN 4
                        WHEN DM_MD_1 = 'IM6'
                        THEN 5
                        WHEN DM_MD_1 = 'IM7'
                        THEN 6
                        WHEN DM_MD_1 = 'IM0'
                        THEN 7
                        WHEN DM_MD_1 = 'CCIM3'
                        THEN 8
                    END
                LIMIT 1
            ''' .format(y)

            data2 = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql)

            if data2.empty == True:
                
                sql = '''
                    SELECT * FROM comorbidity_02_02
                    WHERE (ID = '{0}' AND INSTR(DM_MD_1, 'IM') = 0)
                    ORDER BY
                        CASE
                            WHEN DM_MD_1 = 'GS'
                            THEN 1
                            WHEN DM_MD_1 = 'NR'
                            THEN 2
                            WHEN DM_MD_1 = 'NS'
                            THEN 3
                            WHEN DM_MD_1 = 'TR'
                            THEN 4
                            WHEN DM_MD_1 = 'UR'
                            THEN 5
                            WHEN DM_MD_1 = 'ED'
                            THEN 6
                            WHEN DM_MD_1 = 'ER'
                            THEN 7
                            WHEN DM_MD_1 = 'SHNR'
                            THEN 8
                            WHEN DM_MD_1 = 'SHNR2'
                            THEN 9
                            WHEN DM_MD_1 = 'SHNR5'
                            THEN 10
                            WHEN DM_MD_1 = 'RM'
                            THEN 11
                            WHEN DM_MD_1 = 'GHP'
                            THEN 12
                        END
                    LIMIT 1
                '''.format(y)
                
                data2 = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql)
                
            df2 = pd.concat([df2, data2], axis = 0, sort = False)
        
        df2.to_excel('D:/Gastric_Cancer_xlsx/Comorbidity(2012-2022)/Comorbidity_03_02.xlsx')
        #print(df)
        
        self.insert(df2, db_name = "comorbidity_protocol", tb_name = "comorbidity_03_02") #tb_name = "tb_tmp_comorbidity_step_03_01"


if __name__ == "__main__":
    obj = Comorbidity03_02()
    obj.run()