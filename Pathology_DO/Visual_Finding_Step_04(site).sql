SELECT
    ID,
    CHKID,
    Date,
    판독의,
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
                WHEN NULLIF(cardia,'0') IS NULL
                AND NULLIF(fundus,'0') IS NULL
                AND NULLIF(upper_body,'0') IS NULL
                AND NULLIF(mid_body,'0') IS NULL
                AND NULLIF(lower_body,'0') IS NULL
                AND NULLIF(pylorus,'0') IS NULL
                AND NULLIF(antrum,'0') IS NULL
                AND NULLIF(anterior,'0') IS NULL
                AND NULLIF(posterior,'0') IS NULL
                AND NULLIF(greater,'0') IS NULL
                AND NULLIF(lesser,'0') IS NULL
                AND NULLIF(anastomosis_site,'0') IS NULL
                AND NULLIF(body,'0') IS NULL 
                THEN 육안소견
            END AS undecided

FROM (
        SELECT
            *,
            CASE
                WHEN NULLIF(upper_body,'0') IS NULL
                AND NULLIF(mid_body,'0') IS NULL
                AND NULLIF(lower_body,'0') IS NULL
                AND INSTR(Tumor_site1, 'body') != 0 THEN 'Body'
                WHEN NULLIF(upper_body,'0') IS NULL
                AND NULLIF(mid_body,'0') IS NULL
                AND NULLIF(lower_body,'0') IS NULL
                AND INSTR(Tumor_site2, 'body') != 0 THEN 'Body'
                WHEN NULLIF(upper_body,'0') IS NULL
                AND NULLIF(mid_body,'0') IS NULL
                AND NULLIF(lower_body,'0') IS NULL
                AND INSTR(Tumor_site3, 'body') != 0 THEN 'Body'
                ELSE 0
            END AS body
        FROM(
                SELECT
                    *,
                    CASE
                        WHEN INSTR(Tumor_site1, 'cardia') != 0 THEN 'Cardia'
                        WHEN INSTR(Tumor_site2, 'cardia') != 0 THEN 'Cardia'
                        WHEN INSTR(Tumor_site3, 'cardia') != 0 THEN 'Cardia'
                        WHEN INSTR(Tumor_site1, 'carida') != 0 THEN 'Cardia'
                        WHEN INSTR(Tumor_site2, 'carida') != 0 THEN 'Cardia'
                        WHEN INSTR(Tumor_site3, 'carida') != 0 THEN 'Cardia'
                        WHEN INSTR(Tumor_site1, 'cardiac region') != 0 THEN 'Cardia'
                        WHEN INSTR(Tumor_site2, 'cardiac region') != 0 THEN 'Cardia'
                        WHEN INSTR(Tumor_site3, 'cardiac region') != 0 THEN 'Cardia'
                        WHEN INSTR(
                            Tumor_site1,
                            'esophagogastric'
                        ) != 0
                        AND INSTR(Tumor_site1, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(
                            Tumor_site2,
                            'esophagogastric'
                        ) != 0
                        AND INSTR(Tumor_site2, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(
                            Tumor_site3,
                            'esophagogastric'
                        ) != 0
                        AND INSTR(Tumor_site3, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(Tumor_site1, 'esophagogastic') != 0
                        AND INSTR(Tumor_site1, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(Tumor_site2, 'esophagogastic') != 0
                        AND INSTR(Tumor_site2, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(Tumor_site3, 'esophagogastic') != 0
                        AND INSTR(Tumor_site3, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(
                            Tumor_site1,
                            'gastroesophageal'
                        ) != 0
                        AND INSTR(Tumor_site1, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(
                            Tumor_site2,
                            'gastroesophageal'
                        ) != 0
                        AND INSTR(Tumor_site2, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(
                            Tumor_site3,
                            'gastroesophageal'
                        ) != 0
                        AND INSTR(Tumor_site3, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(Tumor_site1, 'EG') != 0
                        AND INSTR(Tumor_site1, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(Tumor_site2, 'EG') != 0
                        AND INSTR(Tumor_site2, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(Tumor_site3, 'EG') != 0
                        AND INSTR(Tumor_site3, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(Tumor_site1, 'E-G') != 0
                        AND INSTR(Tumor_site1, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(Tumor_site2, 'E-G') != 0
                        AND INSTR(Tumor_site2, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(Tumor_site3, 'E-G') != 0
                        AND INSTR(Tumor_site3, 'junction') != 0 
                        THEN 'Cardia'
                        WHEN INSTR(Tumor_site1, 'EGJ') != 0 THEN 'Cardia'
                        WHEN INSTR(Tumor_site2, 'EGJ') != 0 THEN 'Cardia'
                        WHEN INSTR(Tumor_site3, 'EGJ') != 0 THEN 'Cardia'
                    ELSE 0
                    END AS cardia,
                    CASE
                        WHEN INSTR(Tumor_site1, 'fundus') != 0 THEN 'Fundus'
                        WHEN INSTR(Tumor_site2, 'fundus') != 0 THEN 'Fundus'
                        WHEN INSTR(Tumor_site3, 'fundus') != 0 THEN 'Fundus'
                    ELSE 0
                    END AS fundus,
                    CASE
                        WHEN INSTR(Tumor_site1, 'upper body') != 0 THEN 'Upper body'
                        WHEN INSTR(Tumor_site2, 'upper body') != 0 THEN 'Upper body'
                        WHEN INSTR(Tumor_site3, 'upper body') != 0 THEN 'Upper body'
                        WHEN INSTR(Tumor_site1, 'upperbody') != 0 THEN 'Upper body'
                        WHEN INSTR(Tumor_site2, 'upperbody') != 0 THEN 'Upper body'
                        WHEN INSTR(Tumor_site3, 'upperbody') != 0 THEN 'Upper body'
                        WHEN INSTR(Tumor_site1, 'high body') != 0 THEN 'Upper body'
                        WHEN INSTR(Tumor_site2, 'high body') != 0 THEN 'Upper body'
                        WHEN INSTR(Tumor_site3, 'high body') != 0 THEN 'Upper body'
                        WHEN INSTR(Tumor_site1, 'upper') != 0
                        AND INSTR(Tumor_site1, 'body') != 0 
                        THEN 'Upper body'
                        WHEN INSTR(Tumor_site2, 'upper') != 0
                        AND INSTR(Tumor_site2, 'body') != 0 
                        THEN 'Upper body'
                        WHEN INSTR(Tumor_site3, 'upper') != 0
                        AND INSTR(Tumor_site3, 'body') != 0 
                        THEN 'Upper body'
                    ELSE 0
                    END AS upper_body,
                    CASE
                        WHEN INSTR(Tumor_site1, 'mid body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site2, 'mid body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site3, 'mid body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site1, 'midbody') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site2, 'midbody') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site3, 'midbody') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site1, 'mid-body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site2, 'mid-body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site3, 'mid-body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site1, 'middle body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site2, 'middle body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site3, 'middle body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site1, 'midd body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site2, 'midd body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site3, 'midd body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site1, 'midy body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site2, 'midy body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site3, 'midy body') != 0 THEN 'Mid body'
                        WHEN INSTR(Tumor_site1, 'mild') != 0
                        AND INSTR(Tumor_site1, 'body') != 0 
                        THEN 'Mid body'
                        WHEN INSTR(Tumor_site2, 'mild') != 0
                        AND INSTR(Tumor_site2, 'body') != 0 
                        THEN 'Mid body'
                        WHEN INSTR(Tumor_site3, 'mild') != 0
                        AND INSTR(Tumor_site3, 'body') != 0 
                        THEN 'Mid body'
                        WHEN INSTR(Tumor_site1, 'mid') != 0
                        AND INSTR(Tumor_site1, 'body') != 0 
                        THEN 'Mid body'
                        WHEN INSTR(Tumor_site2, 'mid') != 0
                        AND INSTR(Tumor_site2, 'body') != 0
                        THEN 'Mid body'
                        WHEN INSTR(Tumor_site3, 'mid') != 0
                        AND INSTR(Tumor_site3, 'body') != 0 
                        THEN 'Mid body'
                    ELSE 0
                    END AS mid_body,
                    CASE
                        WHEN INSTR(Tumor_site1, 'lower body') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site2, 'lower body') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site3, 'lower body') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site1, 'lowerbody') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site2, 'lowerbody') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site3, 'lowerbody') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site1, 'lower-body') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site2, 'lower-body') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site3, 'lower-body') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site1, 'low body') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site2, 'low body') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site3, 'low body') != 0 THEN 'Lower body'
                        WHEN INSTR(Tumor_site1, 'lower') != 0
                        AND INSTR(Tumor_site1, 'body') != 0 
                        THEN 'Lower body'
                        WHEN INSTR(Tumor_site2, 'lower') != 0
                        AND INSTR(Tumor_site2, 'body') != 0 
                        THEN 'Lower body'
                        WHEN INSTR(Tumor_site3, 'lower') != 0
                        AND INSTR(Tumor_site3, 'body') != 0 
                        THEN 'Lower body'
                    ELSE 0
                    END AS lower_body,
                    CASE
                        WHEN INSTR(Tumor_site1, 'pylorus') != 0 THEN 'Pylorus'
                        WHEN INSTR(Tumor_site2, 'pylorus') != 0 THEN 'Pylorus'
                        WHEN INSTR(Tumor_site3, 'pylorus') != 0 THEN 'Pylorus'
                        WHEN INSTR(Tumor_site1, 'prepyrolic') != 0 THEN 'Pylorus'
                        WHEN INSTR(Tumor_site2, 'prepyrolic') != 0 THEN 'Pylorus'
                        WHEN INSTR(Tumor_site3, 'prepyrolic') != 0 THEN 'Pylorus'
                        WHEN INSTR(Tumor_site1, 'pyloric area') != 0 THEN 'Pylorus'
                        WHEN INSTR(Tumor_site2, 'pyloric area') != 0 THEN 'Pylorus'
                        WHEN INSTR(Tumor_site3, 'pyloric area') != 0 THEN 'Pylorus'
                        WHEN INSTR(Tumor_site1, 'pyloric ring') != 0 THEN 'Pylorus'
                        WHEN INSTR(Tumor_site2, 'pyloric ring') != 0 THEN 'Pylorus'
                        WHEN INSTR(Tumor_site3, 'pyloric ring') != 0 THEN 'Pylorus'
                    ELSE 0
                    END AS pylorus,
                    CASE
                        WHEN INSTR(Tumor_site1, 'pyloric antrum') != 0 THEN 'Pyloric antrum'
                        WHEN INSTR(Tumor_site2, 'pyloric antrum') != 0 THEN 'Pyloric antrum'
                        WHEN INSTR(Tumor_site3, 'pyloric antrum') != 0 THEN 'Pyloric antrum'
                        WHEN INSTR(Tumor_site1, 'pyloric antru') != 0 THEN 'Pyloric antrum'
                        WHEN INSTR(Tumor_site2, 'pyloric antru') != 0 THEN 'Pyloric antrum'
                        WHEN INSTR(Tumor_site3, 'pyloric antru') != 0 THEN 'Pyloric antrum'
                        WHEN INSTR(Tumor_site1, 'antrum') != 0 THEN 'Antrum'
                        WHEN INSTR(Tumor_site2, 'antrum') != 0 THEN 'Antrum'
                        WHEN INSTR(Tumor_site3, 'antrum') != 0 THEN 'Antrum'
                        WHEN INSTR(Tumor_site1, 'angle') != 0 THEN 'Antrum'
                        WHEN INSTR(Tumor_site2, 'angle') != 0 THEN 'Antrum'
                        WHEN INSTR(Tumor_site3, 'angle') != 0 THEN 'Antrum'
                    ELSE 0
                    END AS antrum,
                    CASE
                        WHEN INSTR(Tumor_site1, 'anterior') != 0 THEN 'Anterior wall'
                        WHEN INSTR(Tumor_site2, 'anterior') != 0 THEN 'Anterior wall'
                        WHEN INSTR(Tumor_site3, 'anterior') != 0 THEN 'Anterior wall'
                    ELSE 0
                    END AS anterior,
                    CASE
                        WHEN INSTR(Tumor_site1, 'posterior') != 0 THEN 'Posterior wall'
                        WHEN INSTR(Tumor_site2, 'posterior') != 0 THEN 'Posterior wall'
                        WHEN INSTR(Tumor_site3, 'posterior') != 0 THEN 'Posterior wall'
                        WHEN INSTR(Tumor_site1, 'posterir') != 0 THEN 'Posterior wall'
                        WHEN INSTR(Tumor_site2, 'posterir') != 0 THEN 'Posterior wall'
                        WHEN INSTR(Tumor_site3, 'posterir') != 0 THEN 'Posterior wall'
                    ELSE 0
                    END AS posterior,
                    CASE
                        WHEN INSTR(Tumor_site1, 'greater') != 0 THEN 'Greater curvature'
                        WHEN INSTR(Tumor_site2, 'greater') != 0 THEN 'Greater curvature'
                        WHEN INSTR(Tumor_site3, 'greater') != 0 THEN 'Greater curvature'
                    ELSE 0
                    END AS greater,
                    CASE
                        WHEN INSTR(Tumor_site1, 'lesser') != 0 THEN 'Lesser curvature'
                        WHEN INSTR(Tumor_site2, 'lesser') != 0 THEN 'Lesser curvature'
                        WHEN INSTR(Tumor_site3, 'lesser') != 0 THEN 'Lesser curvature'
                    ELSE 0
                    END AS lesser,
                    CASE
                        WHEN INSTR(
                            Tumor_site1,
                            'anastomosis site'
                        ) != 0 
                        THEN 'Anastomosis site'
                        WHEN INSTR(
                            Tumor_site2,
                            'anastomosis site'
                        ) != 0 
                        THEN 'Anastomosis site'
                        WHEN INSTR(
                            Tumor_site3,
                            'anastomosis site'
                        ) != 0 
                        THEN 'Anastomosis site'
                        WHEN INSTR(Tumor_site1, 'anastomosis') != 0 THEN 'Anastomosis site'
                        WHEN INSTR(Tumor_site2, 'anastomosis') != 0 THEN 'Anastomosis site'
                        WHEN INSTR(Tumor_site3, 'anastomosis') != 0 THEN 'Anastomosis site'
                    ELSE 0
                    END AS anastomosis_site
                FROM
                    gc_protocol.visual_findings_step04
            ) a
    ) a