from Base_ETL import BaseETL

class Registry19(BaseETL):

    def run(self):
        
        sql = '''
            SELECT * FROM(
                SELECT *,
                    COUNT(*) AS cnt
                FROM(
                    SELECT
                        ID,
                        CHKID,
                        OP_Date,
                        검사시행일,
                        CASE
                            WHEN ID IS NOT NULL
                            THEN 'YES'
                        END AS WashCytology,
                        CASE
                            WHEN GENERAL_CATEGORIZATION_2 = 'Positive'
                            THEN 'Pos'
                            WHEN GENERAL_CATEGORIZATION_2 = 'Negative'
                            THEN 'Neg'
                            WHEN GENERAL_CATEGORIZATION_1 = 'Atypical cells'
                            THEN 'Atypical cells'
                            WHEN GENERAL_CATEGORIZATION_1 = 'Benign cellular changes'
                            THEN 'Pos'
                            WHEN GENERAL_CATEGORIZATION_2 IS NULL
                            THEN 'Unsatisfactory'
                        END AS WC_Result
                    FROM gc_database_total.washcytology
                ) c
                GROUP BY
                    ID, CHKID, OP_Date, WC_Result
                ORDER BY
                    ID,
                    (CASE
                        WHEN WC_Result = 'Pos'
                        THEN 1
                        WHEN WC_Result = 'Atypical cells'
                        THEN 2
                        WHEN WC_Result = 'Neg'
                        THEN 3
                        ELSE 4
                    END
                ) ASC
            ) AS x
            GROUP BY
                ID, OP_Date
        '''
        
        df = self.df_from_sql(db_name = "registry_total", sql = sql)
        #df.to_excel('D:/Gastric_Cancer_xlsx/Registry(2012-2022)/Registry_19.xlsx')
        #print(df)
        
        self.insert(df, db_name = "registry_total", tb_name = "registry_19")


if __name__ == "__main__":
    obj = Registry19()
    obj.run()