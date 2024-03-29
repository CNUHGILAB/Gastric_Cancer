import pandas as pd
from Base_ETL import BaseETL

class Comorbidity10_04(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                st0.ID,
                st0.Angina_Date AS Heart_Disease_Date,
                st0.Angina_MD_1 AS Heart_Disease_MD_1,
                st0.Angina_MD_2 AS Heart_Disease_MD_2,
                st0.Angina,
                st1.MI
            FROM
                comorbidity_protocol.comorbidity_10_01 st0
                LEFT JOIN comorbidity_protocol.comorbidity_10_02 st1 ON(
                    st0.ID = st1.ID
                    OR (st0.Angina_Date = st1.MI_Date
                        AND st0.Angina_MD_1 = st1.MI_MD_1
                        AND st0.Angina_MD_2 = st1.MI_MD_2
                    )
                )
            WHERE(
                st1.ID IS NULL
                OR st1.MI_Date IS NULL
                AND st1.MI_MD_1 IS NULL
                AND st1.MI_MD_2 IS NULL
            )
            UNION
            ALL
            SELECT
                st1.ID,
                st1.MI_Date AS Heart_Disease_Date,
                st1.MI_MD_1 AS Heart_Disease_MD_1,
                st1.MI_MD_2 AS Heart_Disease_MD_2,
                st0.Angina,
                st1.MI
            FROM
                comorbidity_protocol.comorbidity_10_01 st0
                RIGHT JOIN comorbidity_protocol.comorbidity_10_02 st1 ON(
                    st0.ID = st1.ID
                    OR (st0.Angina_Date = st1.MI_Date
                        AND st0.Angina_MD_1 = st1.MI_MD_1
                        AND st0.Angina_MD_2 = st1.MI_MD_2
                    )
                )
            WHERE(
                st0.ID IS NULL
                OR st0.Angina_Date IS NULL
                AND st0.Angina_MD_1 IS NULL
                AND st0.Angina_MD_2 IS NULL
            )
            UNION
            ALL
            SELECT
                DISTINCT st0.ID,
                st0.Angina_Date AS Heart_Disease_Date,
                st0.Angina_MD_1 AS Heart_Disease_MD_1,
                st0.Angina_MD_2 AS Heart_Disease_MD_2,
                st0.Angina,
                st1.MI
            FROM
                comorbidity_protocol.comorbidity_10_01 st0
                INNER JOIN comorbidity_protocol.comorbidity_10_02 st1 ON(
                    st0.ID = st1.ID OR (
                        st0.Angina_Date = st1.MI_Date
                        AND st0.Angina_MD_1 = st1.MI_MD_1
                        AND st0.Angina_MD_2 = st1.MI_MD_2
                    )
                )
            ORDER BY ID ASC
        '''
        
        df = self.df_from_sql(db_name = "comorbidity_protocol", sql = sql) 
        #print(df)
        
        self.insert(df, db_name = "comorbidity_protocol", tb_name = "comorbidity_10_04")


if __name__ == "__main__":
    obj = Comorbidity10_04()
    obj.run()