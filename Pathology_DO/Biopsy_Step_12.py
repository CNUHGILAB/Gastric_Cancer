from base_etl import BaseETL

class BiopsyStep12(BaseETL):

        def run(
                self,
        ):
                sql = '''
                        SELECT
                                DISTINCT
                                원무접수ID,
                                환자번호,
                                검사시행일,
                                case
                                        when endoscopic is null then 'OP'
                                        else 'ESD'
                                end as endoscopic
                        FROM
                                (
                                        SELECT
                                                원무접수ID,
                                                환자번호,
                                                검사시행일,  
                                                case
                                                        when nullif(endoscopic, '') is null then null
                                                        else REGEXP_REPLACE(
                                                                TRIM(
                                                                        TRAILING substr(endoscopic, instr(endoscopic, '\n'))
                                                                        from
                                                                                endoscopic
                                                                ),
                                                                '[(|.|;|:|)]',
                                                                ''
                                                        )
                                                end as endoscopic
                                        FROM
                                                (
                                                        SELECT
                                                                원무접수ID,
                                                                환자번호,
                                                                검사시행일,
                                                                substr(병리진단, instr(병리진단, 'endoscopic')) as endoscopic
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
                self.insert(df, db_name="gc_protocol", tb_name="biopsy_step_12") 

if __name__ == "__main__":
        obj = BiopsyStep12()
        obj.run()