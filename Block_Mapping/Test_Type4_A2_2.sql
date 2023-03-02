#Slide keys 전처리 과정 2 + 항목별로 구분하기
SELECT
    원무접수ID,
    SA1,
    SA2,
    SA3,
    SA4,
    SA5,
    SA6,
    SA7,
    SA8,
    SA9,
    SA10,
    SA11,
    SA12,
    SA13,
    SA14,
    SA15,
    Paraffin_block_keys_Re,
    Slide_keys_Re
    /*
    SA_Else
    */
FROM(
    SELECT *,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 1), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 1)
            /*
            WHEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 1) = 's' AND REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 2) = REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 2)
            WHEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 2, 1) != REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]*$')
            THEN CONCAT(
                CONCAT(
                    REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 2, 1), ','
                ), REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 2, 2)
            )
            WHEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 1) != 's' AND REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 2, 1) = REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]*$')
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 2, 1)
            */
            ELSE NULL
        END AS SA1,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 2), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 2)
            ELSE NULL
        END AS SA2,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 3), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 3)
            ELSE NULL
        END AS SA3,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 4), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 4)
            ELSE NULL
        END AS SA4,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 5), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 5)
            ELSE NULL
        END AS SA5,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 6), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 6)
            ELSE NULL
        END AS SA6,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 7), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 7)
            ELSE NULL
        END AS SA7,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 8), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 8)
            ELSE NULL
        END AS SA8,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 9), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 9)
            ELSE NULL
        END AS SA9,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 10), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 10)
            ELSE NULL
        END AS SA10,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 11), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 11)
            ELSE NULL
        END AS SA11,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 12), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 12)
            ELSE NULL
        END AS SA12,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 13), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 13)
            ELSE NULL
        END AS SA13,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 14), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 14)
            ELSE NULL
        END AS SA14,
        CASE
            WHEN (NULLIF(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 15), '') IS NOT NULL)
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]+', 1, 15)
            ELSE NULL
        END AS SA15,
        CASE
            WHEN RIGHT(Paraffin_block_keys_Re, 1) != ';'
            THEN REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]*$')
            WHEN RIGHT(Paraffin_block_keys_Re, 1) = ';'
            THEN CONCAT(REGEXP_SUBSTR(Paraffin_block_keys_Re, '[^;]*$'), '+')
        END AS SA_Else
    FROM(
        SELECT *,
            CASE
                WHEN INSTR(R_Paraffin_block_keys, '(Park;CY/KIM;MR)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Park;CY/KIM;MR)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Lim;CY/Yeo;MK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Lim;CY/Yeo;MK)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Park;CY/Yeo;MK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Park;CY/Yeo;MK)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Cho;SK/Yeo;MK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Cho;SK/Yeo;MK)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Park;HS/Yeo;MK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Park;HS/Yeo;MK)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Lim;CY/Bae;GE)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Lim;CY/Bae;GE)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Joe;DM/Yeo;MK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Joe;DM/Yeo;MK)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Park;JM/Yeo;MK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Park;JM/Yeo;MK)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Lee;JM/Yeo;MK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Lee;JM/Yeo;MK)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Cho;SK/Kim;MR)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Cho;SK/Kim;MR)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Choi;SY/Kim;DH)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Choi;SY/Kim;DH)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Lim;CY/Choi;SY)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Lim;CY/Choi;SY)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Kim;DH)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Kim;DH)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Joe;DM/YeoMK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Joe;DM/YeoMK)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Kim;JS/Yeo;MK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Kim;JS/Yeo;MK)')), '')
                WHEN INSTR(R_Paraffin_block_keys, 'Lim;CY/Yeo;MK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, 'Lim;CY/Yeo;MK)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Yoon;KH/Yeo;MK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Yoon;KH/Yeo;MK)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Kim;MR)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Kim;MR)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Cho;SK/Park;MI)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Cho;SK/Park;MI)')), '')
                WHEN INSTR(R_Paraffin_block_keys, '(Park;JM;Yeo;MK)') != 0
                THEN REPLACE(R_Paraffin_block_keys, SUBSTR(R_Paraffin_block_keys, INSTR(R_Paraffin_block_keys, '(Park;JM;Yeo;MK)')), '')
                ELSE R_Paraffin_block_keys
            END AS Paraffin_block_keys_Re,
            CASE
                WHEN (NULLIF(R_Slide_keys, '') IS NOT NULL)
                THEN R_Slide_keys
                ELSE NULL
            END AS Slide_keys_Re
        FROM test_type4_a2_1
    ) a
) a