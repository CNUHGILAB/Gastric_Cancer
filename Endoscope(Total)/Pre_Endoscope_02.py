import pandas as pd
from Base_ETL import BaseETL

class PreEndoscope02(BaseETL):

    def run(self):
        
        sql = "SELECT * FROM pre_endoscope_01"
        
        data_df = self.df_from_sql(db_name = "endoscope_total", sql = sql)
        #print(data_df)
        
        data_df_list = list(data_df['검사결과'])
        data_list = []
        ID_list = []
        CHKID_list = []
        date_list = []
        
        for x in data_df_list:
            
            list1 = []
            # print(data_df_list.index(x))
            # print(x)
            
            y = x.split("->")
            
            for z in y:
                
                if "EGC" in z:
                    i = data_df_list.index(x)
                    list1.append(z)
                    #print(i)
                    
                    data_list.append(" ".join(list1))
                    ID_list.append(data_df['환자번호'].loc[i])
                    CHKID_list.append(data_df['원무접수ID'].loc[i])
                    date_list.append(data_df['검사시행일'].loc[i])
                    
                elif "AGC" in z:
                    i = data_df_list.index(x)
                    list1.append(z)
                    #print(i)
                    
                    data_list.append(" ".join(list1))
                    ID_list.append(data_df['환자번호'].loc[i])
                    CHKID_list.append(data_df['원무접수ID'].loc[i])
                    date_list.append(data_df['검사시행일'].loc[i])
                    
        df = pd.DataFrame(ID_list, columns=['ID'])
        df['CHKID'] = pd.DataFrame(CHKID_list)
        df['Date'] = pd.DataFrame(date_list)
        df["검사결과"] = pd.DataFrame(data_list)
        
        df = df.drop_duplicates()
        #print(df)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/endoscope.xlsx')
        
        self.insert(df, db_name = "endoscope_total", tb_name = "pre_endoscope_02") 


if __name__ == "__main__":
    obj = PreEndoscope02()
    obj.run()