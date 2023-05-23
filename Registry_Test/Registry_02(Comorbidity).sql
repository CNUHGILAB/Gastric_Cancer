SELECT * FROM(
    SELECT
        `ID`,
        OpDate,
        REPLACE(
            REPLACE(
                REPLACE(
                    CONCAT(
                        DM, ',', HTN, ',', L_Hep, ',', TBC, ',', Angina, ',', MI, ',', HF, ',', CRF, ',', COPD, ',', CVA
                    ), '0,', ''
                ), ',0', ''
            ), '0', ''
        ) AS CMB
    FROM(
        SELECT
            CAST(ID AS CHAR) AS `ID`,
            OpDate,
            CASE
                WHEN DM = '+'
                THEN 'DM'
                ELSE 0
            END AS DM,
            CASE
                WHEN HTN = '+'
                THEN 'HTN'
                ELSE 0
            END AS HTN,
            CASE
                WHEN L_Hep = '+'
                THEN 'L_Hep'
                ELSE 0
            END AS L_Hep,
            CASE
                WHEN TBC = '+'
                THEN 'TBC'
                ELSE 0
            END AS TBC,
            CASE
                WHEN Angina = '+'
                THEN 'Angina'
                ELSE 0
            END AS Angina,
            CASE
                WHEN MI = '+'
                THEN 'MI'
                ELSE 0
            END AS MI,
            CASE
                WHEN HF = '+'
                THEN 'HF'
                ELSE 0
            END AS HF,
            CASE
                WHEN CRF = '+'
                THEN 'CRF'
                ELSE 0
            END AS CRF,
            CASE
                WHEN COPD = '+'
                THEN 'COPD'
                ELSE 0
            END AS COPD,
            CASE
                WHEN CVA = '+'
                THEN 'CVA'
                ELSE 0
            END AS CVA
        FROM tb_tmp_comorbidity_step_19
    ) a
) a
WHERE
    NULLIF(CMB, '') IS NOT NULL