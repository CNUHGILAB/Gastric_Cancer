from base_etl import BaseETL

class REGStep11(BaseETL):

    def run(
        self,
    ):

        sql = '''
            SELECT
                *
            FROM
                (
                    SELECT
                        *,
                        count(*) as cnt
                    FROM
                        (
                            SELECT
                                ID,
                                CHKID,
                                OP_Date,
                                검사시행일,
                                CASE
                                    WHEN ID IS NOT NULL THEN 'YES'
                                END AS WashCytology,
                                CASE
                                    WHEN GENERAL_CATEGORIZATION_2 = 'Positive' THEN 'Pos'
                                    WHEN GENERAL_CATEGORIZATION_2 = 'Negative' THEN 'Neg'
                                    WHEN GENERAL_CATEGORIZATION_1 = 'Atypical cells' THEN 'Atypical cells'
                                    WHEN GENERAL_CATEGORIZATION_1 = 'Benign cellular changes' THEN 'Pos'
                                    WHEN GENERAL_CATEGORIZATION_2 IS NULL THEN 'Unsatisfactory'
                                END AS WCresult
                            FROM
                                gc_db.washcytology
                        ) c
                    group by
                        ID,
                        CHKID,
                        OP_Date,
                        WCresult
                    order by
                        ID,
                        (
                            case
                                when WCresult = 'Pos' then 1
                                when WCresult = 'Atypical cells' then 2
                                when WCresult = 'Neg' then 3
                                else 4
                            end
                        ) asc
                ) as x
            group by
                ID,
                OP_Date
        '''

        df = self.df_from_sql(db_name="gc_test", sql=sql) 
        df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/REG_Washcytology.xlsx')
        print(df)
        self.insert(df, db_name="gc_protocol", tb_name="regstep11")

    
if __name__ == "__main__":
    obj = REGStep11()
    obj.run()