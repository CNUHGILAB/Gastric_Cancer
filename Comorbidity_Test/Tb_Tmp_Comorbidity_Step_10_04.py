import pandas as pd
from Base_ETL import BaseETL

class TbTmpComorbidityStep10_04(BaseETL):

    def run(
        self,
    ):
        sql = '''
        SELECT
            st0.ID,
            st0.Heart_disease_Date,
            st0.Heart_disease_MD_1,
            st0.Heart_disease_MD_2,
            st0.Angina,
            st0.MI,
            st1.HF
        FROM
            gc_protocol_test.tb_tmp_comorbidity_10_03 st0
            LEFT JOIN gc_protocol_test.tb_tmp_comorbidity_10_02 st1 ON st0.ID = st1.ID
            OR (
                st0.Heart_disease_Date = st1.HF_Date
                AND st0.Heart_disease_MD_1 = st1.HF_MD_1
                AND st0.Heart_disease_MD_2 = st1.HF_MD_2
            )
        WHERE
            st1.ID IS NULL
            OR st1.HF_Date IS NULL
            AND st1.HF_MD_1 IS NULL
            AND st1.HF_MD_2 IS NULL
        UNION
        ALL
        SELECT
            st1.ID,
            st1.HF_Date as Heart_disease_Date,
            st1.HF_MD_1 as Heart_disease_MD_1,
            st1.HF_MD_2 as Heart_disease_MD_2,
            st0.Angina,
            st0.MI,
            st1.HF
        FROM
            gc_protocol_test.tb_tmp_comorbidity_10_03 st0
            RIGHT JOIN gc_protocol_test.tb_tmp_comorbidity_10_02 st1 ON st0.ID = st1.ID
            OR (
                st0.Heart_disease_Date = st1.HF_Date
                AND st0.Heart_disease_MD_1 = st1.HF_MD_1
                AND st0.Heart_disease_MD_2 = st1.HF_MD_2
            )
        WHERE
            st0.ID IS NULL
            OR st0.Heart_disease_Date IS NULL
            AND st0.Heart_disease_MD_1 IS NULL
            AND st0.Heart_disease_MD_2 IS NULL
        UNION
        ALL
        SELECT
            DISTINCT st0.ID,
            st0.Heart_disease_Date,
            st0.Heart_disease_MD_1,
            st0.Heart_disease_MD_2,
            st0.Angina,
            st0.MI,
            st1.HF
        FROM
            gc_protocol_test.tb_tmp_comorbidity_10_03 st0
            INNER JOIN gc_protocol_test.tb_tmp_comorbidity_10_02 st1 ON st0.ID = st1.ID
            OR (
                st0.Heart_disease_Date = st1.HF_Date
                AND st0.Heart_disease_MD_1 = st1.HF_MD_1
                AND st0.Heart_disease_MD_2 = st1.HF_MD_2
            )
        ORDER BY
            ID ASC
        '''
        df = self.df_from_sql(db_name="gc_protocol_test", sql=sql) 
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/Comorbidity_Heart_disease_Merge.xlsx')
        #print(df)
        self.insert(df, db_name="gc_protocol_test", tb_name="tb_tmp_comorbidity_10_04")

if __name__ == "__main__":
    obj = TbTmpComorbidityStep10_04()
    obj.run()