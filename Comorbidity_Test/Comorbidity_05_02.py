import pandas as pd
from Base_ETL import BaseETL

class Comorbidity05_02(BaseETL):

    def run(self):
        
        sql = "SELECT ID FROM comorbidity_protocol.comorbidity_04_02;"
        
        df = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 

        df2 = pd.DataFrame()
        
        ID_del = df.drop_duplicates(['ID'])

        ID_Data = [x for x in ID_del.loc[:, 'ID']]

        for y in ID_Data:
            #print(y)
            
            sql =''' 
                SELECT * FROM comorbidity_protocol.comorbidity_04_02
                WHERE(ID = '{0}' AND INSTR(HTN_MD_1, 'IM') != 0)
                ORDER BY
                    CASE
                        WHEN HTN_MD_1 = 'IM4'
                        THEN 1
                        WHEN HTN_MD_1 = 'IM1'
                        THEN 2
                        WHEN HTN_MD_1 = 'IM5'
                        THEN 3
                        WHEN HTN_MD_1 = 'IM3'
                        THEN 4
                        WHEN HTN_MD_1 = 'IM6'
                        THEN 5
                        WHEN HTN_MD_1 = 'IM7'
                        THEN 6
                        WHEN HTN_MD_1 = 'IM0'
                        THEN 7
                        WHEN HTN_MD_1 = 'CCIM3'
                        THEN 8
                    END
                LIMIT 1
            ''' .format(y)

            data2 = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql)

            if data2.empty == True:
                
                sql = '''
                    SELECT * FROM comorbidity_protocol.comorbidity_04_02
                    WHERE(ID = '{0}' AND INSTR(HTN_MD_1, 'IM') = 0)
                    ORDER BY
                        CASE
                            WHEN HTN_MD_1 = 'GS'
                            THEN 01
                            WHEN HTN_MD_1 = 'CS'
                            THEN 02
                            WHEN HTN_MD_1 = 'NR'
                            THEN 03
                            WHEN HTN_MD_1 = 'NS'
                            THEN 04
                            WHEN HTN_MD_1 = 'TR'
                            THEN 05
                            WHEN HTN_MD_1 = 'UR'
                            THEN 06
                            WHEN HTN_MD_1 = 'ED'
                            THEN 07
                            WHEN HTN_MD_1 = 'ER'
                            THEN 08
                            WHEN HTN_MD_1 = 'SHNR'
                            THEN 09
                            WHEN HTN_MD_1 = 'SHNR2'
                            THEN 10
                            WHEN HTN_MD_1 = 'SHNR5'
                            THEN 11
                            WHEN HTN_MD_1 = 'RM'
                            THEN 12
                            WHEN HTN_MD_1 = 'GHP'
                            THEN 13
                            WHEN HTN_MD_1 = 'NM'
                            THEN 14
                            WHEN HTN_MD_1 = 'ENT'
                            THEN 15
                        END
                    LIMIT 1
                '''.format(y)
                
                data2 = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql)
                
            df2 = pd.concat([df2, data2], axis = 0, sort = False)
        
        #df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_HTN_Duration_2.xlsx')
        #print(df2)
        
        self.insert(df2, db_name = "comorbidity_protocol", tb_name = "comorbidity_05_02") # tb_name = "tb_tmp_comorbidity_05_01"


if __name__ == "__main__":
    obj = Comorbidity05_02()
    obj.run()