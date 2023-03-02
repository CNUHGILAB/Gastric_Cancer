SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    site_num,
    NULLIF(
        REPLACE(
                REPLACE(
                        REPLACE (
                                CONCAT(
                                    cardia,
                                    ',',
                                    fundus,
                                    ',',
                                    upper_body,
                                    ',',
                                    mid_body,
                                    ',',
                                    lower_body,
                                    ',',
                                    body,
                                    ',',
                                    pylorus,
                                    ',',
                                    antrum
                                ),
                                '0,',
                                ''
                            ),
                            ',0',
                            ''
                    ),
                    '0',
                    ''
            ),
            ''
    ) AS TumorLocation,
    NULLIF(
        REPLACE(
                REPLACE(
                        REPLACE (
                                CONCAT(
                                    anterior,
                                    ',',
                                    posterior,
                                    ',',
                                    greater,
                                    ',',
                                    lesser,
                                    ',',
                                    anastomosis_site
                                ),
                                '0,',
                                ''
                            ),
                            ',0',
                            ''
                    ),
                    '0',
                    ''
            ),
            ''
    ) AS TumorCircumference,
    CASE
        WHEN NULLIF(cardia, '0') IS NULL
        AND NULLIF(fundus, '0') IS NULL
        AND NULLIF(upper_body, '0') IS NULL
        AND NULLIF(mid_body, '0') IS NULL
        AND NULLIF(lower_body, '0') IS NULL
        AND NULLIF(pylorus, '0') IS NULL
        AND NULLIF(antrum, '0') IS NULL
        AND NULLIF(anterior, '0') IS NULL
        AND NULLIF(posterior, '0') IS NULL
        AND NULLIF(greater, '0') IS NULL
        AND NULLIF(lesser, '0') IS NULL
        AND NULLIF(anastomosis_site, '0') IS NULL
        AND NULLIF(body, '0') IS NULL 
        AND site_pa IS NOT NULL THEN site_pa
    END AS Location_ETC,
    CASE
        WHEN NULLIF(cardia, '0') IS NULL
        AND NULLIF(fundus, '0') IS NULL
        AND NULLIF(upper_body, '0') IS NULL
        AND NULLIF(mid_body, '0') IS NULL
        AND NULLIF(lower_body, '0') IS NULL
        AND NULLIF(pylorus, '0') IS NULL
        AND NULLIF(antrum, '0') IS NULL
        AND NULLIF(anterior, '0') IS NULL
        AND NULLIF(posterior, '0') IS NULL
        AND NULLIF(greater, '0') IS NULL
        AND NULLIF(lesser, '0') IS NULL
        AND NULLIF(anastomosis_site, '0') IS NULL
        AND NULLIF(body, '0') IS NULL THEN 병리진단
    END AS undecided
FROM (
        SELECT
            *,
            CASE
                WHEN NULLIF(upper_body, '0') IS NULL
                AND NULLIF(mid_body, '0') IS NULL
                AND NULLIF(lower_body, '0') IS NULL
                AND INSTR(site_pa, 'body') != 0 THEN 'Body'
                ELSE 0
            END AS body
        FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    육안소견,
                    병리진단,
                    site_num,
                    site_pa,
                    CASE
                        WHEN INSTR(site_pa, 'cardia') != 0 THEN 'Cardia'
                        WHEN INSTR(site_pa, 'carida') != 0 THEN 'Cardia'
                        WHEN INSTR(site_pa, 'cardiac region') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(site_pa, 'esophagogastric') != 0
                        AND INSTR(site_pa, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(site_pa, 'esophagogastic') != 0
                        AND INSTR(site_pa, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(site_pa, 'gastroesophageal') != 0
                        AND INSTR(site_pa, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(site_pa, 'EG') != 0
                        AND INSTR(site_pa, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(site_pa, 'E-G') != 0
                        AND INSTR(site_pa, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(site_pa, 'EGJ') != 0 THEN 'Cardia'
                        ELSE 0
                    END AS cardia,
                    CASE
                        WHEN INSTR(site_pa, 'fundus') != 0 THEN 'Fundus'
                        ELSE 0
                    END AS fundus,
                    CASE
                        WHEN INSTR(site_pa, 'upper body') != 0 THEN 'Upper body'
                        WHEN INSTR(site_pa, 'upperbody') != 0 THEN 'Upper body'
                        WHEN INSTR(site_pa, 'high body') != 0 THEN 'Upper body'
                        WHEN INSTR(site_pa, 'upper') != 0
                        AND INSTR(site_pa, 'body') != 0 
                        THEN 'Upper body'
                        WHEN INSTR(site_pa, 'upper') != 0
                        AND INSTR(site_pa, 'dody') != 0 
                        THEN 'Upper body'
                        ELSE 0
                    END AS upper_body,
                    CASE
                        WHEN INSTR(site_pa, 'mid body') != 0 THEN 'Mid body'
                        WHEN INSTR(site_pa, 'midbody') != 0 THEN 'Mid body'
                        WHEN INSTR(site_pa, 'mid-body') != 0 THEN 'Mid body'
                        WHEN INSTR(site_pa, 'middle body') != 0 THEN 'Mid body'
                        WHEN INSTR(site_pa, 'midd body') != 0 THEN 'Mid body'
                        WHEN INSTR(site_pa, 'midy body') != 0 THEN 'Mid body'
                        WHEN INSTR(site_pa, 'mild') != 0
                        AND INSTR(site_pa, 'body') != 0 
                        THEN 'Mid body'
                        WHEN INSTR(site_pa, 'mid') != 0
                        AND INSTR(site_pa, 'body') != 0 
                        THEN 'Mid body'
                        WHEN INSTR(site_pa, 'middle') != 0
                        AND INSTR(site_pa, 'dody') != 0 
                        THEN 'Mid body'
                        ELSE 0
                    END AS mid_body,
                    CASE
                        WHEN INSTR(site_pa, 'lower body') != 0 THEN 'Lower body'
                        WHEN INSTR(site_pa, 'lowerbody') != 0 THEN 'Lower body'
                        WHEN INSTR(site_pa, 'lower-body') != 0 THEN 'Lower body'
                        WHEN INSTR(site_pa, 'low body') != 0 THEN 'Lower body'
                        WHEN INSTR(site_pa, 'lower') != 0
                        AND INSTR(site_pa, 'body') != 0 
                        THEN 'Lower body'
                        ELSE 0
                    END AS lower_body,
                    CASE
                        WHEN INSTR(site_pa, 'pylorus') != 0 THEN 'Pylorus'
                        WHEN INSTR(site_pa, 'prepyrolic') != 0 THEN 'Pylorus'
                        WHEN INSTR(site_pa, 'pyloric area') != 0 THEN 'Pylorus'
                        WHEN INSTR(site_pa, 'pyloric ring') != 0 THEN 'Pylorus'
                        ELSE 0
                    END AS pylorus,
                    CASE
                        WHEN INSTR(site_pa, 'pyloric antrum') != 0 THEN 'Pyloric antrum'
                        WHEN INSTR(site_pa, 'pyloric antru') != 0 THEN 'Pyloric antrum'
                        WHEN INSTR(site_pa, 'antrum') != 0 THEN 'Antrum'
                        WHEN INSTR(site_pa, 'angle') != 0 THEN 'Antrum'
                        ELSE 0
                    END AS antrum,
                    CASE
                        WHEN INSTR(site_pa, 'anterior') != 0 THEN 'Anterior wall'
                        ELSE 0
                    END AS anterior,
                    CASE
                        WHEN INSTR(site_pa, 'posterior') != 0 THEN 'Posterior wall'
                        WHEN INSTR(site_pa, 'posterir') != 0 THEN 'Posterior wall'
                        ELSE 0
                    END AS posterior,
                    CASE
                        WHEN INSTR(site_pa, 'greater') != 0 THEN 'Greater curvature'
                        ELSE 0
                    END AS greater,
                    CASE
                        WHEN INSTR(site_pa, 'lesser') != 0 THEN 'Lesser curvature'
                        ELSE 0
                    END AS lesser,
                    CASE
                        WHEN INSTR(site_pa, 'anastomosis site') != 0 THEN 'Anastomosis site'
                        WHEN INSTR(site_pa, 'anastomosis') != 0 THEN 'Anastomosis site'
                        ELSE 0
                    END AS anastomosis_site
                FROM
                    biopsy_step_02
            ) a
    ) a