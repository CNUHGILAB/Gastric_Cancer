from Base_ETL import BaseETL

class Patient10(BaseETL) :

    def run(self) :
        
        sql = '''
            SELECT
                a. ID,
                CHKID,
                성별 AS Sex,
                Age AS OP_Age,
                Height AS HT,
                Weight AS WT,
                BMI,
                `주소(시,도)` AS ADR_1,
                `주소(시,군,구)` AS ADR_2,
                # 날짜 차이
                DATEDIFF(
                    STR_TO_DATE(`수진(진료)일`, '%%Y-%%m-%%d'),
                    STR_TO_DATE(첫진단일, '%%Y-%%m-%%d')
                ) AS FP,
                입원일 AS OP_ADM,
                퇴원일 AS OP_DISC,
                OP_Date
            FROM
                patient_07 a
                LEFT JOIN patient_08 b ON (a.ID = b.환자번호)
                LEFT JOIN patient_09 c ON (a.ID = c.환자번호)
            ORDER BY ID, OP_Date
        '''
        
        df = self.df_from_sql(db_name = "patient_test", sql = sql)
        self.insert(df, db_name = "patient_test", tb_name = "patient_10") 
    
if __name__ == "__main__":
    obj = Patient10()
    obj.run()