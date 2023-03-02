#Slide keys와 Paraffin block keys를 구분하는 Code
SELECT
    원무접수ID,
    환자번호,
    Slide_keys,
    Paraffin_block_keys
FROM(
    SELECT *,
        CASE
            WHEN REGEXP_INSTR(BINARY Slide_keys_1, 'A[0-9]{1,3}') = 0
            THEN NULL
            ELSE Slide_keys_1
        END AS Slide_keys,
        CASE
            WHEN REGEXP_INSTR(BINARY Paraffin_block_keys_1, 'A[0-9]{1,3}') = 0
            THEN NULL
            ELSE Paraffin_block_keys_1
        END AS Paraffin_block_keys,
        CASE
            WHEN (NULLIF(Else_1, '') IS NOT NULL)
            THEN Else_1
            WHEN (REGEXP_INSTR(BINARY Slide_keys_1, 'A[0-9]{1,3}') = 0)
            THEN Type_1
            ELSE NULL
        END AS Else_A1
    FROM(
        SELECT *,
            CASE
                WHEN NULLIF(Re_Slides, '') IS NOT NULL
                THEN SUBSTRING_INDEX(SUBSTRING_INDEX(Re_Slides, 'No2', 1), 'Slide key', -1)
                WHEN NULLIF(Re_Slide_Not2, '') IS NOT NULL
                THEN SUBSTRING_INDEX(SUBSTRING_INDEX(Re_Slide_Not2, 'No3', 1), 'Slide key', -1)
                ELSE NULL
            END AS Slide_keys_1,
            CASE
                WHEN NULLIF(Re_Paraffins, '') IS NOT NULL
                THEN SUBSTRING_INDEX(SUBSTRING_INDEX(Re_Paraffins, 'No2', 1), 'paraffin block key', -1)
                WHEN NULLIF(Re_Paraffin_Not2, '') IS NOT NULL
                THEN Re_Paraffin_Not2
                ELSE NULL
            END AS Paraffin_block_keys_1
        FROM(
            SELECT *,
                CASE
                    WHEN INSTR(Re_Slide, 'No2') != 0
                    THEN SUBSTR(Re_Slide, INSTR(Re_Slide, 'Slide key'), INSTR(Re_Slide, 'No2'))
                    ELSE REPLACE(Re_Slide, Re_Slide, NULL)
                END AS Re_Slides,
                CASE
                    WHEN (INSTR(Re_Slide, 'No2') = 0 AND REGEXP_INSTR(Re_Slide, 'No3') != 0)
                    THEN SUBSTR(Re_Slide, INSTR(Re_Slide, 'Slide key'))
                    ELSE REPLACE(Re_Slide, Re_Slide, NULL)
                END AS Re_Slide_Not2,
                CASE
                    WHEN INSTR(Re_Paraffin, 'No2') != 0
                    THEN SUBSTR(Re_Paraffin, INSTR(Re_Paraffin, 'paraffin block key'), INSTR(Re_Paraffin, 'No2'))
                    ELSE REPLACE(Re_Paraffin, Re_Paraffin, NULL)
                END AS Re_Paraffins,
                CASE
                    WHEN INSTR(Re_Paraffin, 'No2') = 0
                    THEN Re_Paraffin
                    ELSE REPLACE(Re_Paraffin, Re_Paraffin, NULL)
                END AS Re_Paraffin_Not2,
                CASE
                    WHEN (NULLIF(Re_Type1, '') IS NOT NULL AND NULLIF(Re_Slide, '') IS NULL AND NULLIF(Re_Paraffin, '') IS NULL)
                    THEN Type_1
                    ELSE NULL
                END AS Else_1
            FROM(
                SELECT *,
                    CASE
                        WHEN (INSTR(Re_Type1, 'Slide key') != 0 AND REGEXP_INSTR(BINARY Re_Type1, 'A[0-9]{1,3}') != 0)
                        THEN REGEXP_REPLACE(Re_Type1, '[>|:|,]', ';')
                        ELSE NULL
                    END AS Re_Slide,
                    CASE
                        WHEN (INSTR(Re_Type1, 'paraffin block key') != 0 AND REGEXP_INSTR(BINARY Re_Type1, 'A[0-9]{1,3}') != 0)
                        THEN REGEXP_REPLACE(Re_Type1, '[>|:|,]', ';')
                        ELSE NULL
                    END AS Re_Paraffin
                FROM(
                    SELECT *,
                        CASE
                            WHEN INSTR(R_Type_1, 'Slide keys') != 0
                            THEN REPLACE(R_Type_1, 'Slide keys', 'Slide key')
                            WHEN INSTR(R_Type_1, 'paraffin block keys') != 0
                            THEN REPLACE(R_Type_1, 'paraffin block keys', 'paraffin block key')
                            ELSE R_Type_1
                        END AS Re_Type1
                    FROM(
                        SELECT *,
                            CASE
                                WHEN INSTR(Type_1, '.') != 0
                                THEN REPLACE(Type_1, '.', '')
                                WHEN INSTR(Type_1, '[\n]') != 0
                                THEN REGEXP_REPLACE(Type_1, '[\n]+', ';')
                                ELSE Type_1
                            END AS R_Type_1
                        FROM data_type_1
                    ) a
                ) a
            ) a
        ) a
    ) a
) a
WHERE (Slide_keys IS NOT NULL OR Paraffin_block_keys IS NOT NULL)