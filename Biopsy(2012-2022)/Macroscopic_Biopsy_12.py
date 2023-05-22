from Base_ETL import BaseETL

class VisualFindingStep12(BaseETL):

    def run(
        self,
    ):
        sql = '''
            SELECT
                *,
                CASE
                    WHEN (
                        INSTR(first, 'confined')
                        OR INSTR(first, 'inva')
                    )
                    AND INSTR(first, 'submucosa') THEN 'T1b'
                    WHEN (
                        INSTR(first, 'confined')
                        OR INSTR(first, 'inva')
                    )
                    AND INSTR(first, 'mucosa') THEN 'T1a'
                    WHEN (
                        INSTR(first, 'confined')
                        OR INSTR(first, 'inva')
                    )
                    AND INSTR(first, 'propria')
                    AND INSTR(first, 'muscularis') THEN 'T2'
                    WHEN (
                        INSTR(first, 'confined')
                        OR INSTR(first, 'inva')
                    )
                    AND INSTR(first, 'subserosa') THEN 'T3'
                    WHEN (
                        INSTR(first, 'confined')
                        OR INSTR(first, 'inva')
                    )
                    AND INSTR(first, 'serosa') THEN 'T4'
                    WHEN INSTR(first, 'no')
                    AND INSTR(first, 'residual') THEN 'Tx'
                END AS T_stage
            FROM
                visual_findings_11;
        '''
        df = self.df_from_sql(db_name="gc_protocol_test", sql=sql)
        df = df.sort_values(['검사시행일'])
        #df.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/pT_Sentence.xlsx')
        self.insert(df, db_name="gc_protocol_test", tb_name="visual_findings_12") 

if __name__ == "__main__":
    obj = VisualFindingStep12()
    obj.run()
    
