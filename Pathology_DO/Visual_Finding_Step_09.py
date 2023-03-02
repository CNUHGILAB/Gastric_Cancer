from base_etl import BaseETL

class VisualFindingStep09(BaseETL):

    def run(
        self,
    ):
        f = open("Path/Visual_Finding_Step_09(lesion).sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        # df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/lesion.xlsx')
        self.insert(df, db_name="gc_protocol", tb_name="visual_findings_step09") 

if __name__ == "__main__":
    obj = VisualFindingStep09()
    obj.run()
    
