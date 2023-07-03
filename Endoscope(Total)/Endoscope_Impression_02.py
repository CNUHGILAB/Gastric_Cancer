import pandas as pd
from Base_ETL import BaseETL

class EndoscopeImpression02(BaseETL):
    
    def run(self):
        
        sql = '''
            SELECT *,
                CASE
                    WHEN INSTR(Impression, 'esophagitis') != 0
                    THEN 'Esophagitis'
                END AS Esophagitis,
                CASE
                    WHEN (INSTR(Impression, 'esophageal') != 0 AND INSTR(Impression, 'candidiasis') != 0)
                    THEN 'Esophageal Candidiasis'
                END AS Esophageal_Candidiasis,
                CASE
                    WHEN ((INSTR(Impression, 'esophageal') != 0 OR INSTR(Impression, 'eso') != 0) AND INSTR(Impression, 'varix') != 0)
                    THEN 'Esophageal Varix'
                END AS Esophageal_Varix,
                CASE
                    WHEN ((INSTR(Impression, 'esophageal') != 0 OR INSTR(Impression, 'esophagus') != 0) AND INSTR(Impression, 'ulcer') != 0)
                    THEN 'Esophageal Ulcer'
                END AS Esophageal_Ulcer,
                CASE
                    WHEN (INSTR(Impression, 'esophageal') != 0 AND INSTR(Impression, 'cancer') != 0)
                    THEN 'Esophageal Cancer'
                END AS Esophageal_Cancer,
                CASE
                    WHEN INSTR(Impression, 'gastritis') != 0
                    THEN 'Gastritis'
                END AS Gastritis,
                CASE
                    WHEN INSTR(Impression, 'cag') != 0
                    THEN 'CAG'
                END AS CAG,
                CASE
                    WHEN INSTR(Impression, 'erosion') != 0
                    THEN 'Erosion'
                END AS Erosion,
                CASE
                    WHEN ((INSTR(Impression, 'stomach') != 0 OR INSTR(Impression, 'gastric') != 0) AND INSTR(Impression, 'cancer') != 0)
                    THEN 'Stomach Cancer'
                END AS Stomach_Cancer,
                CASE
                    WHEN INSTR(Impression, 'egc') != 0
                    THEN 'Stomach EGC Cancer'
                END AS Stomach_EGC_Cancer,
                CASE
                    WHEN INSTR(Impression, 'agc') != 0
                    THEN 'Stomach AGC Cancer'
                END AS Stomach_AGC_Cancer,
                CASE
                    WHEN (((INSTR(Impression, 'gastric') != 0 OR INSTR(Impression, 'stoma') != 0) AND INSTR(Impression, 'ulcer') != 0) OR INSTR(Impression, 'gu ') != 0 AND NOT INSTR(Impression, 'scar') != 0)
                    THEN 'Stomach Ulcer'
                END AS Stomach_Ulcer,
                CASE
                    WHEN (INSTR(Impression, 'marginal') != 0 AND INSTR(Impression, 'ulcer') != 0)
                    THEN 'Marginal Ulcer'
                END AS Marginal_Ulcer,
                CASE
                    WHEN ((INSTR(Impression, 'Hyperplastic') != 0 OR INSTR(Impression, 'gastric') != 0) AND INSTR(Impression, 'polyp') != 0)
                    THEN 'Stomach Polyp'
                END AS Stomach_Polyp,
                CASE
                    WHEN (INSTR(Impression, 'cardiac') != 0 AND INSTR(Impression, 'varix') != 0)
                    THEN 'Stomach Varix'
                END AS Stomach_Varix,
                CASE
                    WHEN (INSTR(Impression, 'gastric') != 0 AND INSTR(Impression, 'adenoma') != 0)
                    THEN 'Gastric Adenoma'
                END AS Gastric_Adenoma,
                CASE
                    WHEN INSTR(Impression, 'duodenitis') != 0
                    THEN 'Duodenitis'
                END AS Duodenitis,
                CASE
                    WHEN (INSTR(Impression, 'duodenal') != 0 AND INSTR(Impression, 'ulcer') != 0)
                    THEN 'Duodenum Ulcer'
                END AS Duodenum_Ulcer,
                CASE
                    WHEN (INSTR(Impression, 'duodenal') != 0 AND INSTR(Impression, 'polyp') != 0)
                    THEN 'Duodenum Polyp'
                END AS Duodenum_Polyp,
                CASE
                    WHEN (INSTR(Impression, 'jejunal ') != 0 AND INSTR(Impression, 'ulcer') != 0)
                    THEN 'Jejunal Ulcer'
                END AS Jejunal_Ulcer,
                CASE
                    WHEN (INSTR(Impression, 'post') != 0 AND INSTR(Impression, 'esd') != 0)
                    THEN 'Post ESD'
                END AS Post_ESD,
                CASE
                    WHEN (INSTR(Impression, 'post') != 0 AND INSTR(Impression, 'emr') != 0)
                    THEN 'Post EMR'
                END AS Post_EMR,
                CASE
                    WHEN INSTR(Impression, 'GOO') != 0
                    THEN 'GOO'
                END AS GOO,
                CASE
                    WHEN INSTR(Impression, 'r/o') != 0
                    THEN 'r/o'
                END AS `r/o`,
                CASE
                    WHEN INSTR(Impression, 'scar') != 0
                    THEN 'Scar'
                END AS Scar,
                CASE
                    WHEN INSTR(Impression, 'remnant') != 0
                    THEN 'Remnant'
                END AS Remnant
            FROM endoscope_impression_01
        '''
        
        data = self.df_from_sql(db_name = "endoscope_total", sql = sql)
        
        self.insert(data, db_name = "endoscope_total", tb_name = "endoscope_impression_02") 


if __name__ == "__main__":
    obj = EndoscopeImpression02()
    obj.run()