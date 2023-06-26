from Base_ETL import BaseETL

class ASAScore02(BaseETL):

    def run(self):

        sql = '''
            SELECT
                환자번호,
                환자명,
                성별,
                나이,
                수술일,
                집도의,
                수술코드,
                수술명,
                수술전진단코드,
                수술전진단명,
                수술후진단코드,
                수술후진단명,
                `ASA Score`,
                CASE
                    WHEN NULLIF(`ASA Score`, '') IS NOT NULL
                    THEN '1'
                    ELSE NULL
                END AS `ASA Number`
            FROM raw_file_2012_2022.asa_score
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "raw_data_edit", tb_name = "asa_score_02")


if __name__ == "__main__":
    obj = ASAScore02()
    obj.run()