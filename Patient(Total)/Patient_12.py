from Base_ETL import BaseETL

class Patient12(BaseETL) :

    def run(self) :
        
        sql = '''
            SELECT
                CHKID,
                ID,
                Sex,
                OP_Age,
                HT,
                WT,
                ROUND((WT / ((HT * 0.01) * (HT * 0.01))), 1) AS BMI,
                ADR_1,
                ADR_2,
                FP,
                OP_ADM,
                OP_DISC,
                OP_Date
            FROM patient_11
        '''
        
        df = self.df_from_sql(db_name = "patient_total", sql = sql)
        df.to_excel('D:/Gastric_Cancer_xlsx/Patient(Total)/Patient.xlsx')
        df.to_excel('D:/Gastric_Cancer_xlsx/Patient(Total)/Patient_12.xlsx')
        
        self.insert(df, db_name = "gc_database_total", tb_name = "patient")
        self.insert(df, db_name = "patient_total", tb_name = "patient_12")


if __name__ == "__main__":
    obj = Patient12()
    obj.run()