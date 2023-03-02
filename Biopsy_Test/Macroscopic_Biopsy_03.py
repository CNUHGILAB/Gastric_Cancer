from dataclasses import replace
import pandas as pd
from Base_ETL import BaseETL
from nltk.tokenize import sent_tokenize

class VisualFindingStep03(BaseETL):

    def run(
        self,
    ):
        sql = '''
            SELECT
                원무접수ID,
                환자번호,
                검사시행일,
                육안소견,
                판독의,
                biopsy_1
            FROM
                visual_findings_02
            WHERE
                biopsy_1 IS NOT NULL
			ORDER BY
                환자번호,검사시행일
                
        '''
        data_1 = self.df_from_sql(db_name="gc_protocol_test", sql=sql)
        #print(data_1)
        
        
        data_df_list = list(data_1['biopsy_1'])
        data_list = []
        ID_list = []
        CHKID_list = []
        date_list = []
        
        for sent in data_df_list:
            i = data_df_list.index(sent)
            sent_del = sent.replace("\n",' ')
            sent_del = sent_del.replace("No.",'No;')
            sent_del = sent_del.replace("    ",' ')
            sent_del = sent_del.replace("◎",'')
            
            token = sent_del.split(". ")
            sent_list = []
            if "stomach" in token[0]:
                for x in token[1:]:
                    if "Slide key" not in x:
                        y = x.lower().split(" ")
                        for z in y:
                            if "cardia" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "fundus" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "body" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "midbody" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "antrum" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x) 
                            elif "pylorus" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "incisura" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "sulcus" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "anastomosis" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "anterior" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "posterior" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "greater" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "lesser" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "curvature" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "pyloric" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "angle" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "junction" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "esophagogastric" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "egj" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            elif "cardiac" == z:
                                i = data_df_list.index(sent)
                                sent_list.append(x)
                            else:
                                i = data_df_list.index(sent)
            data_list.append("|".join(set(sent_list)))
            ID_list.append(data_1['환자번호'].loc[i])
            CHKID_list.append(data_1['원무접수ID'].loc[i])
            date_list.append(data_1['검사시행일'].loc[i])
        #print(data_list)
        
        df = pd.DataFrame(ID_list,columns=['ID'])
        df['CHKID'] = pd.DataFrame(CHKID_list)
        df['Date'] = pd.DataFrame(date_list)
        df["Tumor_site3"] = pd.DataFrame(data_list)
        df = df.drop_duplicates()
        #print(df)
        
        sql = "SELECT 환자번호 AS ID, 원무접수ID AS CHKID,  검사시행일 AS Date, 육안소견, 판독의, Tumor_site1, Tumor_site2 FROM gc_protocol_test.visual_findings_02 ORDER BY 환자번호,검사시행일"

        data_2 = self.df_from_sql(db_name="gc_protocol_test", sql=sql)
        
        
        final = pd.merge(data_2, df, how="left", on=['ID','CHKID','Date'])
        final = final.dropna(subset=['Tumor_site1', 'Tumor_site2', 'Tumor_site3'], how='all')
        final = final.drop_duplicates()
        final = final.reset_index()
        
        #final.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/finding_site_final.xlsx')
        
        self.insert(final, db_name="gc_protocol_test", tb_name="visual_findings_03") 

if __name__ == "__main__":
    obj = VisualFindingStep03()
    obj.run()
    
