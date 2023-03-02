import pandas as pd
from Base_ETL import BaseETL

class TbTmpComorbidityStep06(BaseETL):

    def run(
        self,
    ):
        df = pd.DataFrame()
        o_ID= [64978232076826682195729452139520942020 #Hep_병원공통_외래초진_기본서식
                ,9357299982465506885345042648121960654 #Hep_비뇨의학과
                ,6086180429216142121558531222881370780 # Hep_류마티스내과
                ,100152239 #Hep_공통 초진기록 외래
                ,100432744 #Hep_피부과,정형,성형외과
                ,100494464 #Hep_마취통증
                ,100739451 #Hep_정형외과
                ,100476594 #Hep_안과
                ,100640008 #Liver disease
                ,170634843573027881687732734523061168549 #Liver disease
                ,100152249 #Liver disease
                ]
        for x in o_ID:
            f = open("Comorbidity_Test/L_Hep.txt",'rt',encoding='UTF8')
            sql= ''
            while True:
                line = f.readline()
                if not line: break
                a = str(line)
                sql  = sql + a
            sql = sql.format(x)    
            f.close()
            data = self.df_from_sql(db_name="gc_raw_test", sql=sql)
            df = pd.concat([df,data],axis = 0, sort=False)
            
        df = df.sort_values(['ID','L_Hep_Date'])
        df = df.reset_index(drop= True)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_L_Hep_1.xlsx')
        self.insert(df, db_name="gc_protocol_test", tb_name="tb_tmp_comorbidity_06_00")

if __name__ == "__main__":
    obj = TbTmpComorbidityStep06()
    obj.run()