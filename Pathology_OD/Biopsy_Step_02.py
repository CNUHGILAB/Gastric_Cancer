from base_etl import BaseETL

class BiopsyStep02(BaseETL):

    def run(
        self,
    ):
        sql = '''
            SELECT
                원무접수ID,
                환자번호,
                검사시행일,
                육안소견,
                병리진단,
                site_pa,
                CASE
                    WHEN instr(site_find, ' v)') != 0 THEN 5
                    WHEN instr(site_find, ' iv)') != 0 THEN 4
                    WHEN instr(site_find, ' iii)') != 0 THEN 3
                    WHEN instr(site_find, ' ii)') != 0 THEN 2
                    WHEN NULLIF(site_find, ' ') IS NOT NULL THEN 1
                END AS site_num
            FROM(
                    SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        육안소견,
                        병리진단,
                        CASE
                            WHEN site_pa LIKE BINARY '%%site%%' 
                            THEN REGEXP_REPLACE(
                                replace (
                                        TRIM(
                                            TRAILING substr(site_pa, instr(site_pa, '\n'))
                                            from
                                                site_pa
                                        ),
                                        'site',
                                        ''
                                    ),
                                    '[(|.|;|:|)]',
                                    ''
                            )
                            WHEN site_pa LIKE BINARY '%%Site%%' 
                            THEN REGEXP_REPLACE(
                                replace (
                                        TRIM(
                                            TRAILING substr(site_pa, instr(site_pa, '\n'))
                                            from
                                                site_pa
                                        ),
                                        'Site',
                                        ''
                                    ),
                                    '[(|.|;|:|)]',
                                    ''
                            )
                        END AS site_pa,
                        TRIM(
                            TRAILING substr(
                                site_find,
                                instr(site_find, 'size')
                            )
                            from
                                site_find
                        ) AS site_find
                    FROM (
                            SELECT
                                원무접수ID,
                                환자번호,
                                검사시행일,
                                육안소견,
                                병리진단,
                                substr(육안소견, instr(육안소견, 'site:')) as site_find,
                                substr(병리진단, instr(병리진단, 'site:')) as site_pa
                            FROM biopsy_step_01
                        ) biopsy
                ) biopsy
        '''
        df = self.df_from_sql(db_name="gc_protocol", sql=sql)
        self.insert(df, db_name="gc_protocol", tb_name="biopsy_step_02") 

if __name__ == "__main__":
    obj = BiopsyStep02()
    obj.run()