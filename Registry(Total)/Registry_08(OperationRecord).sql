SELECT
    DISTINCT 원무접수ID,
    환자번호,
    REC_Date,
    TrocarNo5mm + TrocarNo10mm AS OP_TROC,
    Op AS OP_RESC,
    CASE
        WHEN NULLIF(
            REPLACE(
                REPLACE(
                    REPLACE(
                        CONCAT(
                            REPLACE(`Billroth 1`, '1', 'Billroth 1'),
                            ',',
                            REPLACE(`Billroth 2 with Braun`, '1', 'Billroth 2 with Braun'),
                            ',',
                            REPLACE(`Billroth 2 without Braun`, '1', 'Billroth 2 without Braun'),
                            ',',
                            REPLACE(`Uncut RYGJ`, '1', 'Uncut RYGJ'),
                            ',',
                            REPLACE(`RY`, '1', 'RY'),
                            ',',
                            REPLACE(`Modified uncut RY`, '1', 'Modified uncut RY'),
                            ',',
                            REPLACE(`Loop EJ`, '1', 'Loop EJ'),
                            ',',
                            REPLACE(`Double tract anastomosis`, '1', 'Double tract anastomosis'),
                            ',',
                            REPLACE(`Gastrogastrostomy`, '1', 'Gastrogastrostomy'),
                            ',',
                            REPLACE(`Esophagogastrostomy`, '1', 'Esophagogastrostomy')
                        ), '0,', ''
                    ), ',0', ''
                ), '0', ''
            ), ''
        ) IS NULL
        THEN NULL
        ELSE REPLACE(
            REPLACE(
                REPLACE(
                    CONCAT(
                        REPLACE(`Billroth 1`, '1', 'Billroth 1'),
                        ',',
                        REPLACE(`Billroth 2 with Braun`, '1', 'Billroth 2 with Braun'),
                        ',',
                        REPLACE(`Billroth 2 without Braun`, '1', 'Billroth 2 without Braun'),
                        ',',
                        REPLACE(`Uncut RYGJ`, '1', 'Uncut RYGJ'),
                        ',',
                        REPLACE(`RY`, '1', 'RY'),
                        ',',
                        REPLACE(`Modified uncut RY`, '1', 'Modified uncut RY'),
                        ',',
                        REPLACE(`Loop EJ`, '1', 'Loop EJ'),
                        ',',
                        REPLACE(`Double tract anastomosis`, '1', 'Double tract anastomosis'),
                        ',',
                        REPLACE(`Gastrogastrostomy`, '1', 'Gastrogastrostomy'),
                        ',',
                        REPLACE(`Esophagogastrostomy`, '1', 'Esophagogastrostomy')
                    ), '0,', ''
                ), ',0', ''
            ), '0', ''
        )
    END AS OP_RECO,
    Braun AS OP_BRN,
    Interposition AS OP_INTP,
    Antecolic AS OP_ANTC,
    ProxMargin AS OP_PRM,
    DistMargin AS OP_DRM,
    Co_resection AS OP_RESC_CO,
    Co_resectionSite AS OP_RESC_CO_ST,
    Omentectomy AS OP_OMEN,
    Radicality AS OP_CURA,
    DrainNo_O + DrainNo_C AS OP_DRAN_NO,
    DrainType AS OP_DRAN_TP
FROM(
    SELECT
        원무접수ID,
        환자번호,
        STR_TO_DATE(의무기록작성일, '%%Y-%%m-%%d') AS REC_Date,
        CASE
            WHEN TrocarNo5mm IS NOT NULL
            THEN REPLACE(TrocarNo5mm, '개', '')
            ELSE 0
        END AS TrocarNo5mm,
        CASE
            WHEN TrocarNo10mm IS NOT NULL
            THEN REPLACE(TrocarNo10mm, '개', '')
            ELSE 0
        END AS TrocarNo10mm,
        CASE
            WHEN Op = 'DSG'
            THEN 'Distal gastrectomy'
            WHEN Op = 'PG'
            THEN 'Proximal gastrectomy'
            WHEN Op = 'PpG (Central G)'
            THEN 'Pylorus preserving gastrectomy'
            WHEN Op = 'TG'
            THEN 'Total gastrectomy'
            WHEN Op = 'Near TG'
            THEN 'Near Total gastrectomy'
            WHEN Op = 'Wedge'
            THEN 'Wedge resection'
            WHEN Op = 'Bypass GJ'
            THEN 'Bypass'
        END Op,
        INSTR(Reconstruction, 'BⅠ') != 0 AS `Billroth 1`,
        (INSTR(Reconstruction, 'BⅡ') != 0 AND Braun = 'Braun') AS `Billroth 2 with Braun`,
        (INSTR(Reconstruction, 'BⅡ') != 0 AND Braun = 'No braun') AS `Billroth 2 without Braun`,
        (INSTR(Reconstruction, 'RY') != 0 AND NOT INSTR(Reconstruction, 'Uncut RY') != 0) AS `RY`,
        (INSTR(Reconstruction, 'Modified uncut RY') != 0) AS `Modified uncut RY`,
        (INSTR(Reconstruction, 'Uncut RY') != 0) AS `Uncut RYGJ`,
        (INSTR(Reconstruction, 'Loop EJ') != 0) AS `Loop EJ`,
        (INSTR(Reconstruction, 'Double tract anastomosis') != 0) AS `Double tract anastomosis`,
        (INSTR(Reconstruction, 'Other') != 0
            AND (INSTR(Other_1, 'gastrogastrostomy') != 0
                OR INSTR(Other_1, 'gastro-gastrostomy') != 0
                OR INSTR(Other_1, 'gastrogastrostoym') != 0
                OR INSTR(Other_1, 'GG') != 0
            )) AS Gastrogastrostomy,
        (INSTR(Reconstruction, 'Other') != 0
            AND (INSTR(Other_1, 'esophagogastrostomy') != 0
                OR INSTR(Other_1, 'EG') != 0
            )) AS Esophagogastrostomy,
        CASE
            WHEN Braun = 'No braun'
            THEN 'No'
            WHEN Braun = 'Braun'
            THEN 'Yes'
            ELSE Braun
        END AS Braun,
        CASE
            WHEN Interposition = 'No interposition'
            THEN 'No'
            WHEN Interposition = 'Interposition'
            THEN 'Yes'
        END AS Interposition,
        CASE
            WHEN Antecolic = 'Retrocolic'
            THEN 'No'
            WHEN Antecolic = 'Antecolic'
            THEN 'Yes'
        END AS Antecolic,
        ProxMargin,
        DistMargin,
        CASE
            WHEN Co_resection = '0'
            THEN 'No'
            WHEN Co_resection != '0'
            THEN 'Yes'
        END AS Co_resection,
        Co_resectionSite,
        CASE
            WHEN Omentectomy = 'Partial'
            THEN 'Partial'
            WHEN Omentectomy = 'Complete'
            THEN 'Total'
            ELSE 'None'
        END Omentectomy,
        CASE
            WHEN DrainNo_O IS NOT NULL 
            THEN REPLACE(DrainNo_O, '개', '')
            ELSE 0
        END AS DrainNo_O,
        CASE
            WHEN DrainNo_C IS NOT NULL 
            THEN REPLACE(DrainNo_C, '개', '')
            ELSE 0
        END AS DrainNo_C,
        CASE
            WHEN DrainType_O = '1' AND DrainType_C = '1'
            THEN 'Closed & Open'
            WHEN DrainType_O = '1'
            THEN 'Open sump'
            WHEN DrainType_C = '1'
            THEN 'Closed suction'
        END AS DrainType,
        Radicality
    FROM(
        SELECT * FROM gc_database_total.operation_record
    ) b
) b