SELECT
    원무접수ID,
    환자번호,
    의무기록작성일,
    진료서식ID,
    `Method`,
    TrocarNo5mm,
    TrocarNo10mm,
    CASE
        WHEN NULLIF(
            REPLACE(
                REPLACE(
                    REPLACE(
                        CONCAT(
                            `DSG`, ',', TG, ',', `Near TG`, ',', PG, ',', `PpG (Central G)`, ',', Wedge, ',', `Bypass GJ`, ',', ther
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
                        `DSG`, ',', TG, ',', `Near TG`, ',', PG, ',', `PpG (Central G)`, ',', Wedge, ',', `Bypass GJ`, ',', ther
                    ), '0,', ''
                ), ',0', ''
            ), '0', ''
        )
    END AS Op,
    Other_1,
    CASE
        WHEN NULLIF(
            REPLACE(
                REPLACE(
                    REPLACE(
                        CONCAT(
                            B_I, ',', B_II, ',', RY, ',', `Other`, ',', `Uncut RY`, ',', `Modified uncut RY`, ',', `Loop EJ`, ',', `Double tract anastomosis`
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
                        B_I, ',', B_II, ',', RY, ',', `Other`, ',', `Uncut RY`, ',', `Modified uncut RY`, ',', `Loop EJ`, ',', `Double tract anastomosis`
                    ), '0,', ''
                ), ',0', ''
            ), '0', ''
        )
    END AS Reconstruction,
    ReconMethod,
    Braun,
    Interposition,
    Antecolic,
    Anastomosis,
    ProxMargin,
    DistMargin,
    CASE
        WHEN NULLIF(
            (`No` != '0') + (Spleen != '0') + (`Panc tail` != '0') + (GB != '0') + (Colon != '0') + (Adrenal != '0') + (Ovary != '0') + (Liver != '0') + (`Others` != '0'), ''
        ) IS NULL
        THEN NULL
        ELSE ((Spleen != '0') + (`Panc tail` != '0') + (GB != '0') + (Colon != '0') + (Adrenal != '0') + (Ovary != '0') + (Liver != '0') + (`Others` != '0'))
    END AS Co_resection,
    CASE
        WHEN NULLIF(
            REPLACE(
                REPLACE(
                    REPLACE(
                        CONCAT(
                            `No`, Spleen, ',', `Panc tail`, ',', GB, ',', Colon, ',', Adrenal, ',', Ovary, ',', Liver, ',', `Others`
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
                        `No`, Spleen, ',', `Panc tail`, ',', GB, ',', Colon, ',', Adrenal, ',', Ovary, ',', Liver, ',', `Others`
                    ), '0,', ''
                ), ',0', ''
            ), '0', ''
        )
    END AS Co_resectionSite,
    Radicality,
    Curability,
    Omentectomy,
    DrainNo_O,
    DrainType_O,
    DrainNo_C,
    DrainType_C,
    CASE
        WHEN NULLIF(
            REPLACE(
                REPLACE(
                    REPLACE(
                        CONCAT(
                            LC, ',', GC, ',', AW, ',', PW, ',', Circular_1
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
                        LC, ',', GC, ',', AW, ',', PW, ',', Circular_1
                    ), '0,', ''
                ), ',0', ''
            ), '0', ''
        )
    END AS Circular,
    CASE
        WHEN NULLIF(
            REPLACE(
                REPLACE(
                    REPLACE(
                        CONCAT(
                            Eso, ',', EGJ, ',', Cardia, ',', F, ',', UB, ',', MB, ',', LB, ',', `A`, ',', Pylorus, ',', Duo
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
                        Eso, ',', EGJ, ',', Cardia, ',', F, ',', UB, ',', MB, ',', LB, ',', `A`, ',', Pylorus, ',', Duo
                    ), '0,', ''
                ), ',0', ''
            ), '0', ''
        )
    END AS Tubular1
FROM(
    SELECT
        원무접수ID,
        환자번호,
        의무기록작성일,
        진료서식ID,
        CASE
            WHEN (`100471612` = '1' AND `100471622` = '1')
            THEN 2
            WHEN (`100471612` = '1' AND `100471621` = '1')
            THEN 1
            WHEN `100471612` = '1'
            THEN 1
            WHEN (`100471611` = '1' AND `100471622` = '1')
            THEN 2
            WHEN (`100471611` = '1' AND `100471621` = '1')
            THEN 0
            WHEN `100471611` = '1'
            THEN 0
        END AS `Method`,
        `100471615` AS TrocarNo5mm,
        `100471618` AS TrocarNo10mm,
        CASE
            WHEN `100471626` = '1'
            THEN REPLACE(`100471626`, '1', 'DSG')
            ELSE 0
        END AS DSG,
        CASE
            WHEN `100471627` = '1'
            THEN REPLACE(`100471627`, '1', 'TG')
            ELSE 0
        END AS TG,
        CASE
            WHEN `100471628` = '1'
            THEN REPLACE(`100471628`, '1', 'Near TG')
            ELSE 0
        END AS `Near TG`,
        CASE
            WHEN `100471629` = '1'
            THEN REPLACE(`100471629`, '1', 'PG')
            ELSE 0
        END AS PG,
        CASE
            WHEN `100471630` = '1'
            THEN REPLACE(`100471630`, '1', 'PpG (Central G)')
            ELSE 0
        END AS `PpG(Central G)`,
        CASE
            WHEN `100471631` = '1'
            THEN REPLACE(`100471631`, '1', 'Wedge')
            ELSE 0
        END AS Wedge,
        CASE
            WHEN `100471632` = '1'
            THEN REPLACE(`100471632`, '1', 'Bypass GJ')
            ELSE 0
        END AS `Bypass GJ`,
        CASE
            WHEN `100471635` = '1'
            THEN REPLACE(`100471635`, '1', 'ther')
            ELSE 0
        END AS ther,
        CASE
            WHEN `100471643` = '1'
            THEN REPLACE(`100471643`, '1', 'BⅠ')
            ELSE 0
        END AS B_I,
        CASE
            WHEN `100471644` = '1'
            THEN REPLACE(`100471644`, '1', 'BⅡ')
            ELSE 0
        END AS B_II,
        CASE
            WHEN `100471645` = '1'
            THEN REPLACE(`100471645`, '1', 'RY')
            ELSE 0
        END AS RY,
        CASE
            WHEN `100471646` = '1'
            THEN REPLACE(`100471646`, '1', 'Uncut RY')
            ELSE 0
        END AS `Uncut RY`,
        CASE
            WHEN `100471647` = '1'
            THEN REPLACE(`100471647`, '1', 'Modified uncut RY')
            ELSE 0
        END AS `Modified uncut RY`,
        CASE
            WHEN `100471648` = '1'
            THEN REPLACE(`100471648`, '1', 'Loop EJ')
            ELSE 0
        END AS `Loop EJ`,
        CASE
            WHEN `100710195` = '1'
            THEN REPLACE(`100710195`, '1', 'Double tract anastomosis')
            ELSE 0
        END AS `Double tract anastomosis`,
        CASE
            WHEN `100710197` IS NOT NULL
            THEN 'Other'
            ELSE 0
        END AS `Other`,
        CASE
            WHEN `100710197` IS NOT NULL
            THEN `100710197`
        END AS Other_1,
        `100471662` AS ReconMethod,
        CASE
            WHEN `100471650` = '1'
            THEN 'No braun'
            WHEN `100471651` = '1'
            THEN 'Braun'
        END AS Braun,
        CASE
            WHEN `100471656` = '1'
            THEN 'No interposition'
            WHEN `100471657` = '1'
            THEN 'Interposition'
        END AS Interposition,
        CASE
            WHEN `100471653` = '1'
            THEN 'Antecolic'
            WHEN `100471654` = '1'
            THEN 'Retrocolic'
        END AS Antecolic,
        CASE
            WHEN `100471660` = '1'
            THEN 'Intra corporeal'
            WHEN `100471659` = '1'
            THEN 'Extra corporeal'
        END AS Anastomosis,
        `100471637` AS ProxMargin,
        `100471640` AS DistMargin,
        CASE
            WHEN `100471709` = '1'
            THEN REPLACE(`100471709`, '1', 'No')
            ELSE 0
        END AS `No`,
        CASE
            WHEN `100471710` = '1'
            THEN REPLACE(`100471710`, '1', 'Spleen')
            ELSE 0
        END AS Spleen,
        CASE
            WHEN `100471711` = '1'
            THEN REPLACE(`100471711`, '1', 'Panc tail')
            ELSE 0
        END AS `Panc tail`,
        CASE
            WHEN `100471712` = '1'
            THEN REPLACE(`100471712`, '1', 'GB')
            ELSE 0
        END AS GB,
        CASE
            WHEN `100471713` = '1'
            THEN REPLACE(`100471713`, '1', 'Colon')
            ELSE 0
        END AS Colon,
        CASE
            WHEN `100471714` = '1'
            THEN REPLACE(`100471714`, '1', 'Adrenal')
            ELSE 0
        END AS Adrenal,
        CASE
            WHEN `100471715` = '1'
            THEN REPLACE(`100471715`, '1', 'Ovary')
            ELSE 0
        END AS Ovary,
        CASE
            WHEN `100471716` = '1'
            THEN REPLACE(`100471716`, '1', 'Liver')
            ELSE 0
        END AS Liver,
        CASE
            WHEN `100471719` IS NOT NULL
            THEN `100471719`
            ELSE 0
        END AS `Others`,
        CASE
            WHEN `100471594` = 1
            THEN 'R0'
            WHEN `100471595` = 1
            THEN 'R1'
            WHEN `100471596` = 1
            THEN 'R2'
            WHEN `100471597` = 1
            THEN 'No resection'
        END AS Curability,
        CASE
            WHEN `100471706` = 1
            THEN 'Complete'
            WHEN `100471707` = 1
            THEN 'Partial'
        END AS Omentectomy,
        `100471758` AS DrainNo_O,
        `100471757` AS DrainType_O,
        `100471755` AS DrainNo_C,
        `100471754` AS DrainType_C,
        CASE
            WHEN `100471443` = 1
            THEN REPLACE(`100471443`, '1', 'LC')
            ELSE 0
        END AS LC,
        CASE
            WHEN `100471444` = 1
            THEN REPLACE(`100471444`, '1', 'GC')
            ELSE 0
        END AS GC,
        CASE
            WHEN `100471445` = 1
            THEN REPLACE(`100471445`, '1', 'AW')
            ELSE 0
        END AS AW,
        CASE
            WHEN `100471446` = 1
            THEN REPLACE(`100471446`, '1', 'PW')
            ELSE 0
        END AS PW,
        CASE
            WHEN `100471447` = 1
            THEN REPLACE(`100471447`, '1', 'Circular')
            ELSE 0
        END AS Circular_1,
        CASE
            WHEN `100471450`
            THEN REPLACE(`100471450`, '1', 'Eso')
            ELSE 0
        END AS Eso,
        CASE
            WHEN `100471451`
            THEN REPLACE(`100471451`, '1', 'EGJ')
            ELSE 0
        END AS EGJ,
        CASE
            WHEN `100471452`
            THEN REPLACE(`100471452`, '1', 'Cardia')
            ELSE 0
        END AS Cardia,
        CASE
            WHEN `100471453`
            THEN REPLACE(`100471453`, '1', 'F')
            ELSE 0
        END AS `F`,
        CASE
            WHEN `100471454`
            THEN REPLACE(`100471454`, '1', 'UB')
            ELSE 0
        END AS UB,
        CASE
            WHEN `100471455`
            THEN REPLACE(`100471455`, '1', 'MB')
            ELSE 0
        END AS MB,
        CASE
            WHEN `100471456`
            THEN REPLACE(`100471456`, '1', 'LB')
            ELSE 0
        END AS LB,
        CASE
            WHEN `100471457`
            THEN REPLACE(`100471457`, '1', 'A')
            ELSE 0
        END AS `A`,
        CASE
            WHEN `100471458`
            THEN REPLACE(`100471458`, '1', 'Pylorus')
            ELSE 0
        END AS Pylorus,
        CASE
            WHEN `100471459`
            THEN REPLACE(`100471459`, '1', 'Duo')
            ELSE 0
        END AS Duo,
        CASE
            WHEN `100471695` = '1'
            THEN 'D0'
            WHEN `100471696` = '1'
            THEN 'D1'
            WHEN `100471697` = '1'
            THEN 'D1+a(#7)'
            WHEN `100471698` = '1'
            THEN 'D1+b(#7,8,9)'
            WHEN `100471699` = '1'
            THEN 'D2'
            WHEN `100471700` = '1'
            THEN 'D3'
            WHEN `100471701` = '1'
            THEN 'Radicality_Others1'
            WHEN `100471702` IS NOT NULL
            THEN `100471702`
        END AS Radicality
    FROM operation_record_03
) c