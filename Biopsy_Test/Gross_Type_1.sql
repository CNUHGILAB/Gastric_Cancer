SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    CASE 
        WHEN (LENGTH(Gross_Type) - LENGTH(REPLACE(Gross_Type, 'type', '')) / LENGTH('type') = 1)
        THEN SUBSTRING_INDEX(Gross_Type, 'type', 1)
    END AS Gross_Type_1,
    CASE 
        WHEN (LENGTH(Gross_Type) - LENGTH(REPLACE(Gross_Type, 'type', '')) / LENGTH('type') = 1)
        THEN SUBSTRING_INDEX(Gross_Type, 'type', -1)
    END AS Gross_Type_Int_1,
    CASE 
        WHEN (LENGTH(Gross_Type) - LENGTH(REPLACE(Gross_Type, 'type', '')) / LENGTH('type') = 0)
        THEN Gross_Type
    END AS Gross_Type_O,
    SUBSTRING_INDEX(Early_Gastric_Cancer_1, 'type', 1) AS Gross_Type_2,
    REPLACE(
        SUBSTRING_INDEX(
            SUBSTRING_INDEX(Early_Gastric_Cancer_1, '(', 1), 'type', -1
        ), ',', ''
    ) AS Gross_Type_Int_2
FROM(
    SELECT
        원무접수ID,
        환자번호,
        검사시행일,
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            REPLACE(
                                                REPLACE(
                                                    CASE 
                                                        WHEN NULLIF(Histologic_Type_2, '') IS NOT NULL
                                                        THEN REGEXP_REPLACE(
                                                            REPLACE(
                                                                REPLACE(
                                                                    REPLACE(
                                                                        TRIM(
                                                                            TRAILING SUBSTR(
                                                                                BINARY Gross_Type, INSTR(BINARY Gross_Type, '3)')
                                                                            )
                                                                            FROM BINARY Gross_Type
                                                                        ), 'Gross type', ''
                                                                    ), '\n', ''
                                                                ), '   -', ''
                                                            ), '[,|(|.|;|:|)]', ''
                                                        )
                                                        ELSE REGEXP_REPLACE(
                                                            REPLACE(
                                                                REPLACE(
                                                                    REPLACE(
                                                                        TRIM(
                                                                            TRAILING SUBSTR(
                                                                                BINARY Gross_Type, INSTR(BINARY Gross_Type, '\n')
                                                                            )
                                                                            FROM BINARY Gross_Type
                                                                        ), 'gross type', ''
                                                                    ), 'Gross type', ''
                                                                ), 'EGC type (I, IIa, IIb, IIc, III)  Borrmann type (1,2,3,4, unclassifiable)', ''
                                                            ), '[,|(|.|;|:|)]', ''
                                                        )
                                                    END, 'Early gastric cancer', 'EGC'
                                                ), 'Early gatric cancer', 'EGC'
                                            ), 'EGC EGC', 'EGC'
                                        ), 'Advanced cancer', ''
                                    ), 'Advanced gastric cancer', 'AGC'
                                ), 'aGC', 'AGC'
                            ), 'type', ''
                        ), 'Type', ''
                    ), 'AGC', 'AGC type'
                ), 'Borrmann', 'Borrmann type'
            ), 'EGC', 'EGC type'
        ) AS Gross_Type,
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REGEXP_REPLACE(
                                            TRIM(
                                                TRAILING SUBSTR(
                                                    BINARY Early_Gastric_Cancer, INSTR(BINARY Early_Gastric_Cancer, '\n')
                                                )
                                                FROM BINARY Early_Gastric_Cancer
                                            ), '[.|;|:]', ''
                                        ), 'Type', ''
                                    ), 'type', ''
                                ), 'TYPE', ''
                            ), 'EGC', 'EGC type'
                        ), 'early gastric cancer', 'EGC type'
                    ), 'Early gastric cancer', 'EGC type'
                ), 'EGC type (EGC)', 'EGC type'
            ), 'EARLY GASTRIC CANCER', 'EGC type'
        ) AS Early_Gastric_Cancer_1
    FROM(
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            SUBSTR(
                병리진단, INSTR(병리진단, 'WHO classification (Histologic Type)')
            ) AS Histologic_Type_2,
            SUBSTR(병리진단, INSTR(병리진단, 'gross type')) AS Gross_Type,
            SUBSTR(병리진단, INSTR(병리진단, 'Early gastric cancer')) AS Early_Gastric_Cancer
        FROM pathologic_biopsy_01
    ) biopsy
) biopsy