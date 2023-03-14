SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    Gross_Type_O,
    Gross_Type,
    REPLACE(
        CONCAT(
            Gross_Type_Int_1, '+', Gross_Type_Int_2
        ), '+0', ''
    ) AS Gross_Type_Int
FROM(
    SELECT
        원무접수ID,
        환자번호,
        검사시행일,
        Gross_Type_O,
        Gross_Type,
        CASE
            WHEN INSTR(Gross_Type_Int_1, 'V') = 1
            THEN REPLACE(Gross_Type_Int_1, 'V', '5')
            WHEN INSTR(Gross_Type_Int_1, 'IV') != 0
            THEN REPLACE(Gross_Type_Int_1, 'IV', '4')
            WHEN INSTR(Gross_Type_Int_1, 'III') != 0
            THEN REPLACE(Gross_Type_Int_1, 'III', '3')
            WHEN INSTR(Gross_Type_Int_1, 'II') != 0
            THEN REPLACE(Gross_Type_Int_1, 'II', '2')
            WHEN INSTR(Gross_Type_Int_1, 'IIa') != 0
            THEN REPLACE(Gross_Type_Int_1, 'IIa', '2a')
            WHEN INSTR(Gross_Type_Int_1, 'IIb') != 0
            THEN REPLACE(Gross_Type_Int_1, 'IIb', '2b')
            WHEN INSTR(Gross_Type_Int_1, 'IIc') != 0
            THEN REPLACE(Gross_Type_Int_1, 'IIc', '2c')
            WHEN INSTR(Gross_Type_Int_1, 'I') != 0
            THEN REPLACE(Gross_Type_Int_1, 'I', '1')
            ELSE Gross_Type_Int_1
        END AS Gross_Type_Int_1,
        CASE
            WHEN INSTR(Gross_Type_Int_2, 'V') = 1
            THEN REPLACE(Gross_Type_Int_2, 'V', '5')
            WHEN INSTR(Gross_Type_Int_2, 'IV') != 0
            THEN REPLACE(Gross_Type_Int_2, 'IV', '4')
            WHEN INSTR(Gross_Type_Int_2, 'III') != 0
            THEN REPLACE(Gross_Type_Int_2, 'III', '3')
            WHEN INSTR(Gross_Type_Int_2, 'II') != 0
            THEN REPLACE(Gross_Type_Int_2, 'II', '2')
            WHEN INSTR(Gross_Type_Int_2, 'IIa') != 0
            THEN REPLACE(Gross_Type_Int_2, 'IIa', '2a')
            WHEN INSTR(Gross_Type_Int_2, 'IIb') != 0
            THEN REPLACE(Gross_Type_Int_2, 'IIb', '2b')
            WHEN INSTR(Gross_Type_Int_2, 'IIc') != 0
            THEN REPLACE(Gross_Type_Int_2, 'IIc', '2c')
            WHEN INSTR(Gross_Type_Int_2, 'I') != 0
            THEN REPLACE(Gross_Type_Int_2, 'I', '1')
            ELSE Gross_Type_Int_2
        END AS Gross_Type_Int_2
    FROM(
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            Gross_Type_O,
            TRIM(Gross_Type) AS Gross_Type,
            CASE 
                WHEN INSTR(Gross_Type_Int, '+') != 0
                THEN TRIM(
                    SUBSTRING_INDEX(
                        Gross_Type_Int, '+', 1
                    )
                )
                WHEN INSTR(Gross_Type_Int, '-') != 0
                THEN TRIM(
                    SUBSTRING_INDEX(
                        Gross_Type_Int, '-', 1
                    )
                )
                ELSE TRIM(Gross_Type_Int)
            END AS Gross_Type_Int_1,
            CASE
                WHEN INSTR(Gross_Type_Int, '+') != 0
                THEN TRIM(
                    SUBSTRING_INDEX(
                        SUBSTRING_INDEX(
                            Gross_Type_Int, '+', 2
                        ), '+', -1
                    )
                )
                WHEN INSTR(Gross_Type_Int, '-') != 0
                THEN TRIM(
                    SUBSTRING_INDEX(
                        SUBSTRING_INDEX(
                            Gross_Type_Int, '-', 2
                        ), '-', -1
                    )
                )
                ELSE 0
            END AS Gross_Type_Int_2
        FROM(
            SELECT
                원무접수ID,
                환자번호,
                검사시행일,
                Gross_Type_O,
                CASE 
                    WHEN Gross_Type_1 IS NULL
                    THEN Gross_Type_2
                    ELSE REPLACE(BINARY Gross_Type_1, 'AGC', 'Borrmann')
                END AS Gross_Type,
                CASE 
                    WHEN NULLIF(Gross_Type_Int_1, '') IS NULL
                    THEN Gross_Type_Int_2
                    ELSE Gross_Type_Int_1
                END AS Gross_Type_Int
            FROM pathology_06
        ) biopsy
    ) biopsy
) biopsy