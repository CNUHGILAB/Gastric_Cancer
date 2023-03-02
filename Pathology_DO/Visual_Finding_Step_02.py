from base_etl import BaseETL

class VisualFindingStep02(BaseETL):

    def run(
        self,
    ):
        f = open("Path/Visual_Finding_Step_02(site).sql",'rt',encoding='UTF8')
        sql= ''
        while True:
            line = f.readline()
            if not line: break
            a = str(line)
            sql  = sql + a  
        f.close()
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        # df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/finding_site.xlsx')
        self.insert(df, db_name="gc_protocol", tb_name="visual_findings_step02") 

if __name__ == "__main__":
    obj = VisualFindingStep02()
    obj.run()
    
