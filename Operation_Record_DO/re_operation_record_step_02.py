from base_etl import BaseETL
import pandas as pd

class reoperationrecordstep02(BaseETL):
    def run(
        self,
    ):
        sql = "SELECT * FROM re_operation_record_step_01;"
         
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)

        one = [100471621, 100471622, 100471650, 100471651, 100471653,
                100471656, 100471657, 100471659, 100471660, 100471706,
                100471707]
        two = [86092705630213265017134269898563106934,
                86092705630213265017134269898563106934,
                45317023053708546402621550354827160118,
                45317023053708546402621550354827160118,
                59037546074930122533820346283656971733,
                195705497771919193430544233907396047241,
                195705497771919193430544233907396047241,
                132217054411863578176209850889416765800,
                132217054411863578176209850889416765800,
                291052357263576992034318048493816611476,
                291052357263576992034318048493816611476
               ]
        three = ['Yes', 'No', 'Braun', 'No braun', '0',
                'Interposition', 'No interposition', 'Intra-corporeal', 'Extra-corporeal', 'Partial',
                'Complete']
        four = ['No', 'Yes', 'No braun', 'Braun', 'Antecolic',
                'No interposition', 'Interposition', 'Extra-corporeal', 'Intra-corporeal', 'Complete',
                'Partial']
        
        

        for x, y, z, q in zip(one, two, three, four):
            f = open("OP/re_operation_record_sql2.sql",'rt',encoding='UTF8')
            sql= ''
            while True:
                line = f.readline()
                if not line: break
                a = str(line)
                sql  = sql + a
            sql = sql.format(x,y,z,q)
            f.close()
            data = self.df_from_sql(db_name="gc_raw", sql=sql)
            df = pd.merge(df, data, how='left',on=['원무접수ID','의무기록작성일','진료서식ID','환자번호'])

        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="re_operation_record_step_02") 


if __name__ == "__main__":
    obj = reoperationrecordstep02()
    obj.run()

