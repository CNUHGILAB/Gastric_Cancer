from base_etl import BaseETL

class REGStep15_00(BaseETL):

    def run(
        self,
    ):
        sql= '''
            SELECT
                환자번호,
                수술일, 
                수술코드,
                수술명,
                수술전진단명,
                수술후진단명,
                IFNULL(`EMR ASA class`,0) as `EMR ASA class`,
                IFNULL(`차세대 ASA class`,0) as `차세대 ASA class`
            FROM
                asa_score
        '''

        df = self.df_from_sql(db_name="gc_raw", sql=sql) 
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep15_00")

    
if __name__ == "__main__":
    obj = REGStep15_00()
    obj.run()