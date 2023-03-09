SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    NULLIF(
        REPLACE(
            REPLACE(
                REPLACE(
                    CONCAT(
                        Cardia, ',',
                        Fundus, ',',
                        Upper_Body, ',',
                        Mid_Body, ',',
                        Lower_Body, ',',
                        `Body`, ',',
                        Pylorus, ',',
                        Antrum
                    ), '0,', '' 
                ), ',0', ''
            ), '0', ''
        ), ''
    ) AS Tumor_Location,
    NULLIF(
        REPLACE(
            REPLACE(
                REPLACE(
                    CONCAT(
                        Anterior, ',',
                        Posterior, ',',
                        Greater, ',',
                        Lesser, ',',
                        Anastomosis_Site
                    ), '0,', ''
                ), ',0', ''
            ), '0', ''
        ), ''
    ) AS Tumor_Circumference,
    CASE
        WHEN (NULLIF(Cardia, '0') IS NULL AND NULLIF(Fundus, '0') IS NULL AND NULLIF(Upper_Body, '0') IS NULL AND NULLIF(Mid_Body, '0') IS NULL AND NULLIF(Lower_Body, '0') IS NULL AND NULLIF(Pylorus, '0') IS NULL AND NULLIF(Antrum, '0') IS NULL AND NULLIF(Anterior, '0') IS NULL AND NULLIF(Posterior, '0') IS NULL AND NULLIF(Greater, '0') IS NULL AND NULLIF(Lesser, '0') IS NULL AND NULLIF(Anastomosis_Site, '0') IS NULL AND NULLIF(`Body`, '0') IS NULL AND `Site` IS NOT NULL)
        THEN `Site`
    END AS Location_ETC,
    CASE
        WHEN (NULLIF(Cardia, '0') IS NULL AND NULLIF(Fundus, '0') IS NULL AND NULLIF(Upper_Body, '0') IS NULL AND NULLIF(Mid_Body, '0') IS NULL AND NULLIF(Lower_Body, '0') IS NULL AND NULLIF(Pylorus, '0') IS NULL AND NULLIF(Antrum, '0') IS NULL AND NULLIF(Anterior, '0') IS NULL AND NULLIF(Posterior, '0') IS NULL AND NULLIF(Greater, '0') IS NULL AND NULLIF(Lesser, '0') IS NULL AND NULLIF(Anastomosis_Site, '0') IS NULL AND NULLIF(`Body`, '0') IS NULL)
        THEN 병리진단
    END AS Undecided
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(Upper_Body, '0') IS NULL AND NULLIF(Mid_Body, '0') IS NULL AND NULLIF(Lower_Body, '0') IS NULL AND INSTR(`Site`, 'body') != 0)
            THEN 'Body'
            ELSE 0
        END AS `Body`
    FROM(
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            육안소견,
            병리진단,
            `Site`,
            CASE
                WHEN INSTR(`Site`, 'cardia') != 0
                THEN 'Cardia'
                WHEN INSTR(`Site`, 'carida') != 0
                THEN 'Cardia'
                WHEN INSTR(`Site`, 'cardiac region') != 0 
                THEN 'Cardia'
                WHEN (INSTR(`Site`, 'esophagogastric') != 0 AND INSTR(`Site`, 'junction') != 0)
                THEN 'Cardia'
                WHEN (INSTR(`Site`, 'esophagogastic') != 0 AND INSTR(`Site`, 'junction') != 0)
                THEN 'Cardia'
                WHEN (INSTR(`Site`, 'gastroesophageal') != 0 AND INSTR(`Site`, 'junction') != 0)
                THEN 'Cardia'
                WHEN (INSTR(`Site`, 'EG') != 0 AND INSTR(`Site`, 'junction') != 0)
                THEN 'Cardia'
                WHEN (INSTR(`Site`, 'E-G') != 0 AND INSTR(`Site`, 'junction') != 0)
                THEN 'Cardia'
                WHEN INSTR(`Site`, 'EGJ') != 0
                THEN 'Cardia'
                ELSE 0
            END AS Cardia,
            CASE
                WHEN INSTR(`Site`, 'fundus') != 0
                THEN 'Fundus'
                ELSE 0
            END AS Fundus,
            CASE
                WHEN INSTR(`Site`, 'upper body') != 0
                THEN 'Upper body'
                WHEN INSTR(`Site`, 'upperbody') != 0
                THEN 'Upper body'
                WHEN INSTR(`Site`, 'high body') != 0
                THEN 'Upper body'
                WHEN (INSTR(`Site`, 'upper') != 0 AND INSTR(`Site`, 'body') != 0)
                THEN 'Upper body'
                WHEN (INSTR(`Site`, 'upper') != 0 AND INSTR(`Site`, 'dody') != 0)
                THEN 'Upper body'
                ELSE 0
            END AS Upper_Body,
            CASE
                WHEN INSTR(`Site`, 'mid body') != 0
                THEN 'Mid body'
                WHEN INSTR(`Site`, 'midbody') != 0
                THEN 'Mid body'
                WHEN INSTR(`Site`, 'mid-body') != 0
                THEN 'Mid body'
                WHEN INSTR(`Site`, 'middle body') != 0
                THEN 'Mid body'
                WHEN INSTR(`Site`, 'midd body') != 0
                THEN 'Mid body'
                WHEN INSTR(`Site`, 'midy body') != 0
                THEN 'Mid body'
                WHEN (INSTR(`Site`, 'mild') != 0 AND INSTR(`Site`, 'body') != 0)
                THEN 'Mid body'
                WHEN (INSTR(`Site`, 'mid') != 0 AND INSTR(`Site`, 'body') != 0)
                THEN 'Mid body'
                WHEN (INSTR(`Site`, 'middle') != 0 AND INSTR(`Site`, 'dody') != 0)
                THEN 'Mid body'
                ELSE 0
            END AS Mid_Body,
            CASE
                WHEN INSTR(`Site`, 'lower body') != 0
                THEN 'Lower body'
                WHEN INSTR(`Site`, 'lowerbody') != 0
                THEN 'Lower body'
                WHEN INSTR(`Site`, 'lower-body') != 0
                THEN 'Lower body'
                WHEN INSTR(`Site`, 'low body') != 0
                THEN 'Lower body'
                WHEN (INSTR(`Site`, 'lower') != 0 AND INSTR(`Site`, 'body') != 0)
                THEN 'Lower body'
                ELSE 0
            END AS Lower_Body,
            CASE
                WHEN INSTR(`Site`, 'pylorus') != 0
                THEN 'Pylorus'
                WHEN INSTR(`Site`, 'prepyrolic') != 0
                THEN 'Pylorus'
                WHEN INSTR(`Site`, 'pyloric area') != 0
                THEN 'Pylorus'
                WHEN INSTR(`Site`, 'pyloric ring') != 0
                THEN 'Pylorus'
                ELSE 0
            END AS Pylorus,
            CASE
                WHEN INSTR(`Site`, 'pyloric antrum') != 0
                THEN 'Pyloric antrum'
                WHEN INSTR(`Site`, 'pyloric antru') != 0
                THEN 'Pyloric antrum'
                WHEN INSTR(`Site`, 'antrum') != 0
                THEN'Antrum'
                WHEN INSTR(`Site`, 'angle') != 0
                THEN 'Antrum'
                ELSE 0
            END AS Antrum,
            CASE
                WHEN INSTR(`Site`, 'anterior') != 0
                THEN 'Anterior wall'
                ELSE 0
            END AS Anterior,
            CASE
                WHEN INSTR(`Site`, 'posterior') != 0
                THEN 'Posterior wall'
                WHEN INSTR(`Site`, 'posterir') != 0
                THEN 'Posterior wall'
                ELSE 0
            END AS Posterior,
            CASE
                WHEN INSTR(`Site`, 'greater') != 0
                THEN 'Greater curvature'
                ELSE 0
            END AS Greater,
            CASE
                WHEN INSTR(`Site`, 'lesser') != 0
                THEN 'Lesser curvature'
                ELSE 0
            END AS Lesser,
            CASE
                WHEN INSTR(`Site`, 'anastomosis site') != 0
                THEN 'Anastomosis site'
                WHEN INSTR(`Site`, 'anastomosis') != 0
                THEN 'Anastomosis site'
                ELSE 0
            END AS Anastomosis_Site
        FROM pathology_02
    ) a
) a