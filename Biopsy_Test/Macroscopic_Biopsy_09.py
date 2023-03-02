from Base_ETL import BaseETL

class VisualFindingStep09(BaseETL):

    def run(
        self,
    ):
        f = open("Biopsy_Test/Visual_Finding_Step_09(lesion).sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol_test", sql=sql)
        # df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/lesion.xlsx')
        self.insert(df, db_name="gc_protocol_test", tb_name="visual_findings_09") 

if __name__ == "__main__":
    obj = VisualFindingStep09()
    obj.run()
    
