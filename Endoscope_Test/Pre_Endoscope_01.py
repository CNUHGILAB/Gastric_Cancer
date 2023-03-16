import pandas as pd
from Base_ETL import BaseETL

class PreEndoscope01(BaseETL):

    def run(self):
        
        df = pd.DataFrame()
        
        o_ID= ['E7630B:235430216819733528134548093260256988196'
                'E7630B:138464863319489177111985489646293131364',
                'E7630B:133360832279311269813581712356524094157',
                'E7630L:138464863319489177111985489646293131364',
                'E7630L:327119586256517697136859126516202259275',
                'E7630:238696155712014780076823092317390066502',
                'E7630B:100373555',
                'E7630L:100373555',
                'E7630B:100373559',
                'E7630B:100373557',
                'E7630L:100373559',
                'E7630L:100373557',
                'E7630B:100373561',
                'E7630L:100373561',
                'E7630:100414467',
                'E7630B:100373563'
        ]
        
        for x in o_ID:
            
            sql = '''
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    검사결과
                FROM gc_raw.endoscope
                WHERE 검사서식세부항목ID = '{0}'
            '''.format(x)
            
            data = self.df_from_sql(db_name = "gc_raw", sql = sql)
            df = pd.concat([df, data], axis = 0, sort = False) 
        
        df = df.sort_values(['환자번호','검사시행일'])
        df = df.reset_index(drop = True)
        #print(df)
        # df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_DM_1.xlsx')
        
        self.insert(df, db_name = "endoscope_protocol", tb_name = "pre_endoscope_01") 


if __name__ == "__main__":
    obj = PreEndoscope01()
    obj.run()