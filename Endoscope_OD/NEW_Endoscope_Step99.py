
from base_etl import BaseETL
from functools import reduce

class NEWEndoscopeStep99(BaseETL):

    def run(
        self,
    ):
        sql01 = '''
                SELECT
                    환자번호 as ID,
                    원무접수ID as CHKID,
                    검사시행일 as DATE,
                    concat(
                        trim(
                            replace (시술시작일시_Year, "년", "")
                        ),
                        "-",
                        trim(
                            replace (시술시작일시_Month, "월", "")
                        ),
                        "-",
                        trim(
                            replace (시술시작일시_Day, "일", "")
                        ),
                        " ",
                        trim(
                            replace (시술시작일시_Hour, "시", "")
                        ),
                        ":",
                        trim(
                            replace (시술시작일시_Minute, "분", "")
                        )
                    ) as 시술시작일시,
                    concat(
                        trim(
                            replace (시술종료일시_Year, "년", "")
                        ),
                        "-",
                        trim(
                            replace (시술종료일시_Month, "월", "")
                        ),
                        "-",
                        trim(
                            replace (시술종료일시_Day, "일", "")
                        ),
                        " ",
                        trim(
                            replace (시술종료일시_Hour, "시", "")
                        ),
                        ":",
                        trim(
                            replace (시술종료일시_Minute, "분", "")
                        )
                    ) as 시술종료일시,
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
                    Stomach_Location as Stomach_Cancer_Location,
                    concat(
                        Stomach_Size_1,
                        Stomach_Size_2
                    ) as Stomach_Cancer_Size,
                    case
                        when Stomach_AGC_2형 is not null then "2형"
                        when Stomach_AGC_3형 is not null then "3형"
                        else Stomach_AGC
                    end as Stomach_Cancer_AGC,
                    case
                        when Stomach_EGC_I is not null then "I"
                        when Stomach_EGC_IIc is not null then "IIc"
                        when Stomach_EGC_III is not null then "III"
                    end as Stomach_Cancer_EGC,
                    Stomach_Cancer_Bx,
                    Stomach_Cancer_Description,
                    Stomach_General,
                    Stomach_Polyp_Location,
                    concat(
                        Stomach_Polyp_Size_1,
                        Stomach_Polyp_Size_2
                    ) as Stomach_Polyp_Size,
                    Stomach_Polyp_Yamadatype,
                    Stomach_Polyp_Bx,
                    concat(
                        Stomach_Ulcer_Size_1,
                        Stomach_Ulcer_Size_2
                    ) as Stomach_Ulcer_Size,
                    Stomach_Ulcer_BGU,
                    Stomach_Ulcer_Bx,
                    Stomach_Ulcer_Location,
                    case
                        when Stomach_Ulcer_Stage_A2 is not null then "A2"
                        when Stomach_Ulcer_Stage_H1 is not null then "H1"
                        else Stomach_Ulcer_Stage
                    end as Stomach_Ulcer_Stage,
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
                    case
                        when 조직검사유무 is not null then 조직검사유무
                        when 조직검사유무_2 is not null then "Yes"
                    end as 조직검사유무,
                    EMR,
                    ESD,
                    Polypectomy,
                    Esophagealdilatationandstent,
                    결과
                FROM
                    newendoscopestep98;
        '''
        
        df01 = self.df_from_sql(db_name="gc_protocol", sql=sql01)
        df01 = df01.drop_duplicates()
        df01 = df01.sort_values(['ID','DATE'])
        df01.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/내시경.xlsx')
        self.insert(df01, db_name="gc_db", tb_name="newendoscope") 
        

if __name__ == "__main__":
    obj = NEWEndoscopeStep99()
    obj.run()