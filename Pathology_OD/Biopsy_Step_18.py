from base_etl import BaseETL

class BiopsyStep18(BaseETL):

        def run(
                self,
        ):
                sql = '''
                SELECT
                        DISTINCT 원무접수ID,
                        환자번호,
                        검사시행일,
                        replace(
                                replace(
                                        replace(
                                                concat(dysplasia_1, ',', dysplasia_2),
                                                '0,',
                                                ''
                                        ),
                                        ',0',
                                        ''
                                ),
                                '0',
                                ''
                        ) as dysplasia,
                        adenoma,
                        gist
                FROM
                        (
                                SELECT
                                        원무접수ID,
                                        환자번호,
                                        검사시행일,
                                        case
                                                when nullif(dysplasia_1, '') is not null then 'Low Grade Dysplasia'
                                                else 0
                                        end as dysplasia_1,
                                        case
                                                when nullif(dysplasia_2, '') is not null then 'High Grade Dysplasia'
                                                else 0
                                        end as dysplasia_2,
                                        case
                                                when nullif(adenoma, '') is not null then 'adenoma'
                                        end as adenoma,
                                        case
                                                when nullif(gist, '') is not null then 'gist'
                                        end as gist
                                FROM
                                        (
                                                SELECT
                                                        원무접수ID,
                                                        환자번호,
                                                        검사시행일,
                                                        substr(병리진단, instr(병리진단, 'low grade dysplasia')) as dysplasia_1,
                                                        substr(병리진단, instr(병리진단, 'high grade dysplasia')) as dysplasia_2,
                                                        substr(병리진단, instr(병리진단, 'adenoma')) as adenoma,
                                                        substr(병리진단, instr(병리진단, 'gist')) as gist
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
                self.insert(df, db_name="gc_protocol", tb_name="biopsy_step_18") 

if __name__ == "__main__":
        obj = BiopsyStep18()
        obj.run()