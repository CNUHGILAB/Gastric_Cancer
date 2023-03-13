
from Base_ETL import BaseETL
from functools import reduce

class Endoscope_ColumnMerge(BaseETL):

    def run(self):
        
        sql01 = '''
            SELECT
                환자번호 as ID,
                원무접수ID as CHKID,
                검사시행일 as DATE,
                CONCAT(
                    TRIM(
                        REPLACE(시술시작일시_Year, "년", "")
                    ), "-",
                    TRIM(
                        REPLACE(시술시작일시_Month, "월", "")
                    ), "-",
                    TRIM(
                        REPLACE(시술시작일시_Day, "일", "")
                    ), " ",
                    TRIM(
                        REPLACE(시술시작일시_Hour, "시", "")
                    ), ":",
                    TRIM(
                        REPLACE(시술시작일시_Minute, "분", "")
                    )
                ) AS 시술시작일시,
                CONCAT(
                    TRIM(
                        REPLACE(시술종료일시_Year, "년", "")
                    ), "-",
                    TRIM(
                        REPLACE(시술종료일시_Month, "월", "")
                    ), "-",
                    TRIM(
                        REPLACE(시술종료일시_Day, "일", "")
                    ), " ",
                    TRIM(
                        REPLACE(시술종료일시_Hour, "시", "")
                    ), ":",
                    TRIM(
                        REPLACE(시술종료일시_Minute, "분", "")
                    )
                ) AS 시술종료일시,
                집도의,
                시술전진단명,
                시술후진단명,
                Esophagus,
                Esophagus_Esophagitis_LA분류,
                Esophagus_Varix_Color,
                Esophagus_Varix_Form,
                Esophagus_Varix_Location,
                Esophagus_Varix_RCS,
                Esophagus_Varix_출혈유무,
                Stomach,
                Stomach_Location AS Stomach_Cancer_Location,
                CONCAT(Stomach_Size_1, Stomach_Size_2) AS Stomach_Cancer_Size,
                CASE
                    WHEN Stomach_AGC_2형 IS NOT NULL
                    THEN "2형"
                    WHEN Stomach_AGC_3형 IS NOT NULL
                    THEN "3형"
                    ELSE Stomach_AGC
                END AS Stomach_Cancer_AGC,
                CASE
                    WHEN Stomach_EGC_I IS NOT NULL
                    THEN "I"
                    WHEN Stomach_EGC_IIc IS NOT NULL
                    THEN "IIc"
                    WHEN Stomach_EGC_III IS NOT NULL
                    THEN "III"
                END AS Stomach_Cancer_EGC,
                Stomach_Cancer_Bx,
                Stomach_Cancer_Description,
                Stomach_General,
                Stomach_Polyp_Location,
                CONCAT(Stomach_Polyp_Size_1, Stomach_Polyp_Size_2) AS Stomach_Polyp_Size,
                Stomach_Polyp_Yamadatype,
                Stomach_Polyp_Bx, Stomach_Ulcer_Size_2) AS Stomach_Ulcer_Size,
                Stomach_Ulcer_BGU,
                Stomach_Ulcer_Bx,
                Stomach_Ulcer_Location,
                CASE
                    WHEN Stomach_Ulcer_Stage_A2 IS NOT NULL
                    THEN "A2"
                    WHEN Stomach_Ulcer_Stage_H1 IS NOT NULL
                    THEN "H1"
                    ELSE Stomach_Ulcer_Stage
                END AS Stomach_Ulcer_Stage,
                Stomach_Varix_Color,
                Stomach_Varix_Form,
                Stomach_Varix_RCS,
                Stomach_Varix_경계,
                Stomach_Varix_Location,
                Stomach_Varix_출혈유무,
                Duodenum,
                Duodenum_General,
                Duodenum_Ulcer_Bx,
                Impression_1,
                Impression_2,
                Impression_3,
                Impression_4,
                Impression_5,
                Impression_6,
                Complication_Moderatebleeding,
                Complication_No,
                Proceduredescription,
                Conclusion,
                Other,
                Site,
                Site_size,
                Site_Bx,
                Bleeding_No,
                Bleeding_Oozing,
                Bleeding_Nobleeding,
                Bleeding_Activebleeding,
                KOHtest,
                CLOtest,
                CASE
                    WHEN 조직검사유무 IS NOT NULL
                    THEN 조직검사유무
                    WHEN 조직검사유무_2 IS NOT NULL
                    THEN "Yes"
                END AS 조직검사유무,
                EMR,
                ESD,
                Polypectomy,
                Esophagealdilatationandstent,
                결과
            FROM endoscope_file_merge;
        '''
        
        df01 = self.df_from_sql(db_name = "gc_protocol", sql = sql01)
        df01 = df01.drop_duplicates()
        df01 = df01.sort_values(['ID', 'DATE'])
        #df01.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/내시경.xlsx')
        
        self.insert(df01, db_name = "gc_protocol", tb_name = "endoscope_column_merge")
        self.instr(df01, db_name = "gc_db", tb_name = "endoscope")
        
if __name__ == "__main__":
    obj = Endoscope_ColumnMerge()
    obj.run()