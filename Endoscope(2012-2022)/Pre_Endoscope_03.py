import pandas as pd
import re
from Base_ETL import BaseETL

class PreEndoscope03(BaseETL):

    def run(self):
        
        sql = "SELECT * FROM pre_endoscope_02"
        
        data = self.df_from_sql(db_name = "endoscope_protocol", sql = sql)
        #print(data)
        data_df_list = list(data['검사결과'])
        
        data_list = []
        data_list_2 = []
        ID_list = []
        CHKID_list = []
        date_list = []
        list_1 = []
        
        for x in data_df_list:
            
            int = []
            int2 = []

            x1 = re.sub(r"\([^)]*\)", '', x)
            x1 = re.sub(r"([0-9]\.)", '', x1)
            x1 = re.sub(r"([0-9]\))", '', x1)
            x1 = re.sub(r"([0-9]\:)", '', x1)
            x1 = re.sub(r"[^a-zA-Z0-9]", ' ', x1)
            
            x1 = x1.replace("EGC", "EGC ")
            x1 = x1.replace("AGC", "AGC ")
            #print(x1)
            
            y = x1.lower().split(" ")
            
            for z in y:
                #print(z)
                
                if "i" == z:
                    int.append(z)
                elif "l" == z:
                    int.append(z)
                elif "1" == z:
                    int.append(z)
                elif "ii" == z:
                    int.append(z)
                elif "2" == z:
                    int.append(z)
                elif "ll" == z:
                    int.append(z)
                elif "iia" == z:
                    int.append(z)
                elif "lla" == z:
                    int.append(z)
                elif "iib" == z:
                    int.append(z)
                elif "llb" == z:
                    int.append(z)
                elif "iic" == z:
                    int.append(z)
                elif "llc" == z:
                    int.append(z)
                elif "ilc" == z:
                    int.append(z)
                elif "iii" == z:
                    int.append(z)
                elif "3" == z:
                    int.append(z)
                elif "lll" == z:
                    int.append(z)  
                elif "iv" == z:
                    int.append(z)
                elif "4" == z:
                    int.append(z)
                elif "v" == z:
                    int.append(z)
                elif "5" == z:
                    int.append(z)
                
                if "egc" == z:
                    int2.append(z)
                elif "agc" == z:
                    int2.append(z)
            
            data_list_2.append('+'.join(int2))
            data_list.append('+'.join(int))
            
            i = data_df_list.index(x)
            
            ID_list.append(data['ID'].loc[i])
            CHKID_list.append(data['CHKID'].loc[i])
            date_list.append(data['Date'].loc[i])
            list_1.append(data['검사결과'].loc[i])

        df = pd.DataFrame(ID_list, columns = ['ID'])
        df['CHKID'] = pd.DataFrame(CHKID_list)
        df['Date'] = pd.DataFrame(date_list)
        df["검사결과"] = pd.DataFrame(list_1) 
        df['type'] = pd.DataFrame(data_list_2)           
        df['int'] = pd.DataFrame(data_list)
        
        df = df.drop_duplicates()
        #print(df)
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/endoscope_EGC.xlsx')
        
        self.insert(df, db_name = "endoscope_protocol", tb_name = "pre_endoscope_03") 


if __name__ == "__main__":
    obj = PreEndoscope03()
    obj.run()