from base_etl import BaseETL

class BiopsyStep11(BaseETL):

        def run(
        self,
        ):
                sql = '''
                        SELECT
                                distinct 원무접수ID,
                                환자번호,
                                검사시행일,
                                SUBSTRING_INDEX(SUBSTRING_INDEX(MSI_Test, ')', 1), '(', -1) as MSI_Test
                        FROM
                                (
                                        SELECT
                                                원무접수ID,
                                                환자번호,
                                                검사시행일,
                                                REGEXP_REPLACE(
                                                        replace(
                                                                TRIM(
                                                                        TRAILING substr(MSI_Test, instr(MSI_Test, '\n'))
                                                                        from
                                                                                MSI_Test
                                                                ),
                                                                'size',
                                                                ''
                                                        ),
                                                        '[|;|:|-]',
                                                        ''
                                                ) as MSI_Test
                                        FROM
                                                (
                                                        SELECT
                                                                원무접수ID,
                                                                환자번호, 
                                                                검사시행일,
                                                                substr(병리진단, instr(병리진단, 'Microsatellite')) as MSI_Test
                                                        FROM
                                                                (
                                                                        SELECT
                                                                                *
                                                                        FROM
                                                                                biopsy_step_01
                                                                ) biopsy
                                                ) biopsy
                                ) biopsy
                '''
                df = self.df_from_sql(db_name="gc_protocol", sql=sql)
                self.insert(df, db_name="gc_protocol", tb_name="biopsy_step_11") 

if __name__ == "__main__":
        obj = BiopsyStep11()
        obj.run()