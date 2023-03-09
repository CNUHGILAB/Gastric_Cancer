import pandas as pd
from Base_ETL import BaseETL

class EndoscopeImpression03(BaseETL):

    def run(self):
        
        sql = '''
            SELECT
                ID,
                CHKID,
                DATE,
                Impression,
                Post_ESD,
                Post_EMR,
                CASE
                    WHEN Esophagitis IS NOT NULL THEN 'YES'
                    WHEN Esophageal_Candidiasis IS NOT NULL THEN 'YES'
                    WHEN Esophageal_Varix IS NOT NULL THEN 'YES'
                    WHEN Esophageal_Ulcer IS NOT NULL THEN 'YES'
                    WHEN Esophageal_Cancer IS NOT NULL THEN 'YES'
                END AS Esophagus,
                CASE
                    WHEN Gastritis IS NOT NULL THEN 'YES'
                    WHEN CAG IS NOT NULL THEN 'YES'
                    WHEN Stomach_Cancer IS NOT NULL THEN 'YES'
                    WHEN Stomach_EGC_Cancer IS NOT NULL THEN 'YES'
                    WHEN Stomach_AGC_Cancer IS NOT NULL THEN 'YES'
                    WHEN Stomach_Ulcer IS NOT NULL THEN 'YES'
                    WHEN Marginal_Ulcer IS NOT NULL THEN 'YES'
                    WHEN Stomach_Polyp IS NOT NULL THEN 'YES'
                    WHEN Stomach_Varix IS NOT NULL THEN 'YES'
                    WHEN Gastric_Adenoma IS NOT NULL THEN 'YES'
                END AS Stomach,
                CASE
                    WHEN Duodenitis IS NOT NULL THEN 'YES'
                    WHEN Duodenum_Ulcer IS NOT NULL THEN 'YES'
                    WHEN Duodenum_Polyp IS NOT NULL THEN 'YES'
                END AS Duodenum,
                Esophagitis,
                Esophageal_Candidiasis,
                Esophageal_Varix,
                Esophageal_Ulcer,
                Esophageal_Cancer,
                Gastritis,
                CAG,
                Stomach_Varix,
                Stomach_Ulcer Stomach_Cancer,
                Stomach_EGC_Cancer,
                Stomach_AGC_Cancer,
                Gastric_Adenoma,
                Stomach_Polyp,
                Erosion,
                Duodenitis,
                Duodenum_Ulcer,
                Jejunal_Ulcer,
                Duodenum_Polyp,
                GOO,
                `r/o`,
                Scar,
                Remnant
            FROM
                endoscope_impression_step02
        '''
        data = self.df_from_sql(db_name="gc_protocol", sql=sql)
        data.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/endoscope.xlsx')
        self.insert(data, db_name="gc_protocol", tb_name="endoscope_impression_step03") 

if __name__ == "__main__":
    obj = EndoscopeImpression03()
    obj.run()