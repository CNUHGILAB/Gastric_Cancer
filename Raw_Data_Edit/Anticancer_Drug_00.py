from Base_ETL import BaseETL

class AnticancerDrug00(BaseETL):

    def run(self):

        sql = '''
            SELECT *
            FROM gc_raw.anticancer_drug
            UNION DISTINCT
            SELECT
                원무접수ID, 환자번호, 환자명, 성별, 생년월일, 약품처방일, 약품코드, 대표약품코드, `약품명(성분명)`, `약품명(일반명)`, 포장단위1일약품투여량,
                포장단위1회약품투여량, 처방단위, 1일처방량, 1회처방량, 투약일수, `간호사 수행여부`, `약품 처방의사번`, `약품 처방의`, 원내처방여부, 투약위치, 보험구분
            FROM raw_file_2012_2022.anticancer_drug
        '''
        
        df = self.df_from_sql(db_name = "raw_data_edit", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_03.xlsx')
        #print(df)
        
        self.insert(df, db_name = "raw_data_total", tb_name = "anticancer_drug")
        self.insert(df, db_name = "raw_data_edit", tb_name = "anticancer_drug_00")


if __name__ == "__main__":
    obj = AnticancerDrug00()
    obj.run()