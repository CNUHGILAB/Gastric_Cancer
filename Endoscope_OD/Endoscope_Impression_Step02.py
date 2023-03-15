import pandas as pd
from base_etl import BaseETL

class EndoscopeImpressionStep02(BaseETL):
    

    def run(
        self,
    ):
        sql = '''
            SELECT
                *,
                CASE
                    WHEN INSTR(Impression, 'esophagitis') THEN 'Esophagitis'
                END AS Esophagitis,
                CASE
                    WHEN INSTR(Impression, 'esophageal') AND INSTR(Impression, 'candidiasis') THEN 'Esophageal Candidiasis'
                END AS Esophageal_Candidiasis,
                CASE
                    WHEN (INSTR(Impression, 'esophageal') OR INSTR(Impression, 'eso')) AND INSTR(Impression, 'varix') THEN 'Esophageal Varix'
                END AS Esophageal_Varix,
                CASE
                    WHEN (INSTR(Impression, 'esophageal') OR INSTR(Impression, 'esophagus')) AND INSTR(Impression, 'ulcer') THEN 'Esophageal Ulcer'
                END AS Esophageal_Ulcer,
                CASE
                    WHEN INSTR(Impression, 'esophageal') AND INSTR(Impression, 'cancer') THEN 'Esophageal Cancer'
                END AS Esophageal_Cancer,
                CASE
                    WHEN INSTR(Impression, 'gastritis') THEN 'Gastritis'
                END AS Gastritis,
                CASE
                    WHEN INSTR(Impression, 'cag') THEN 'CAG'
                END AS CAG,
                CASE
                    WHEN INSTR(Impression, 'erosion') THEN 'Erosion'
                END AS Erosion,
                CASE
                    WHEN (INSTR(Impression, 'stomach') OR INSTR(Impression, 'gastric')) AND INSTR(Impression, 'cancer') THEN 'Stomach Cancer'
                END AS Stomach_Cancer,
                CASE
                    WHEN INSTR(Impression, 'egc') THEN 'Stomach EGC Cancer'
                END AS Stomach_EGC_Cancer,
                CASE
                    WHEN INSTR(Impression, 'agc') THEN 'Stomach AGC Cancer'
                END AS Stomach_AGC_Cancer,
                CASE
                    WHEN ((INSTR(Impression, 'gastric') OR INSTR(Impression, 'stoma')) AND INSTR(Impression, 'ulcer')) OR INSTR(Impression, 'gu ') AND not INSTR(Impression, 'scar') THEN 'Stomach Ulcer'
                END AS Stomach_Ulcer,
                CASE
                    WHEN INSTR(Impression, 'marginal') AND INSTR(Impression, 'ulcer') THEN 'Marginal Ulcer'
                END AS Marginal_Ulcer,
                CASE
                    WHEN (INSTR(Impression, 'Hyperplastic') OR INSTR(Impression, 'gastric')) AND INSTR(Impression, 'polyp') THEN 'Stomach Polyp'
                END AS Stomach_Polyp,
                CASE
                    WHEN INSTR(Impression, 'cardiac') AND INSTR(Impression, 'varix') THEN 'Stomach Varix'
                END AS Stomach_Varix,
                CASE
                    WHEN INSTR(Impression, 'gastric') AND INSTR(Impression, 'adenoma') THEN 'Gastric Adenoma'
                END AS Gastric_Adenoma,
                CASE
                    WHEN INSTR(Impression, 'duodenitis') THEN 'Duodenitis'
                END AS Duodenitis,
                CASE
                    WHEN INSTR(Impression, 'duodenal') AND INSTR(Impression, 'ulcer') THEN 'Duodenum Ulcer'
                END AS Duodenum_Ulcer,
                CASE
                    WHEN INSTR(Impression, 'duodenal') AND INSTR(Impression, 'polyp') THEN 'Duodenum Polyp'
                END AS Duodenum_Polyp,
                CASE
                    WHEN INSTR(Impression, 'jejunal ') AND INSTR(Impression, 'ulcer') THEN 'Jejunal Ulcer'
                END AS Jejunal_Ulcer,
                CASE
                    WHEN INSTR(Impression, 'post') AND INSTR(Impression, 'esd') THEN 'Post ESD'
                END AS Post_ESD,
                CASE
                    WHEN INSTR(Impression, 'post') AND INSTR(Impression, 'emr') THEN 'Post EMR'
                END AS Post_EMR,
                CASE
                    WHEN INSTR(Impression, 'GOO') THEN 'GOO'
                END AS GOO,
                CASE
                    WHEN INSTR(Impression, 'r/o') THEN 'r/o'
                END AS `r/o`,
                CASE
                    WHEN INSTR(Impression, 'scar') THEN 'Scar'
                END AS Scar,
                CASE
                    WHEN INSTR(Impression, 'remnant') THEN 'Remnant'
                END AS Remnant
            FROM endoscope_impression_step01
        '''
        data = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(data, db_name="gc_protocol", tb_name="endoscope_impression_step02") 

if __name__ == "__main__":
    obj = EndoscopeImpressionStep02()
    obj.run()