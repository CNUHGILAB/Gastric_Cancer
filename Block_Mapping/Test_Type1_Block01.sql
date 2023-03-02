SELECT
    원무접수ID,
    환자번호,
    SAMPLE_BLOCK
FROM(
    SELECT *,
        CASE
            WHEN (INSTR(REPLACE_1, '(Kim,DH)') != 0)
            THEN REPLACE(REPLACE_1, '(Kim,DH)', '')
            WHEN (INSTR(REPLACE_1, '(Kim,MR)') != 0)
            THEN REPLACE(REPLACE_1, '(Kim,MR)', '')
            WHEN (INSTR(REPLACE_1, '(Kim,YB)') != 0)
            THEN REPLACE(REPLACE_1, '(Kim,YB)', '')
            WHEN (INSTR(REPLACE_1, '(Kim,HS)') != 0)
            THEN REPLACE(REPLACE_1, '(Kim,HS)', '')
            WHEN (INSTR(REPLACE_1, '(Kim,JM)') != 0)
            THEN REPLACE(REPLACE_1, '(Kim,JM)', '')
            WHEN (INSTR(REPLACE_1, '(Yeo,MK)') != 0)
            THEN REPLACE(REPLACE_1, '(Yeo,MK)', '')
            WHEN (INSTR(REPLACE_1, '(Choi,SY)') != 0)
            THEN REPLACE(REPLACE_1, '(Choi,SY)', '')
            WHEN (INSTR(REPLACE_1, '(Park,CY)') != 0)
            THEN REPLACE(REPLACE_1, '(Park,CY)', '')
            WHEN (INSTR(REPLACE_1, '(Park,MI)') != 0)
            THEN REPLACE(REPLACE_1, '(Park,MI)', '')
            WHEN (INSTR(REPLACE_1, '(Lee,HJ)') != 0)
            THEN REPLACE(REPLACE_1, '(Lee,HJ)', '')
            ELSE REPLACE_3
        END AS SAMPLE_BLOCK
    FROM(
        SELECT *,
            CASE
                WHEN (INSTR(SAMPLE_BLOCK6, '(Park,CY/Kim,MR).') != 0)
                THEN REPLACE(SAMPLE_BLOCK6, '(Park,CY/Kim,MR).', '')
                WHEN (INSTR(SAMPLE_BLOCK6, '(Park,CY/Yeo,MK).') != 0)
                THEN REPLACE(SAMPLE_BLOCK6, '(Park,CY/Yeo,MK).', '')
                WHEN (INSTR(REPLACE_2, '(Cho,SK/Park,MI).') != 0)
                THEN REPLACE(REPLACE_2, '(Cho,SK/Park,MI).', '')
                WHEN (INSTR(REPLACE_2, '(Lim,CY/Yeo,MK).') != 0)
                THEN REPLACE(REPLACE_2, '(Lim,CY/Yeo,MK).', '')
                WHEN (INSTR(REPLACE_2, '(Lee,JM/Yeo,MK).') != 0)
                THEN REPLACE(REPLACE_2, '(Lee,JM/Yeo,MK).', '')
                WHEN (INSTR(REPLACE_2, '(Lim,CY/Kim,KH).') != 0)
                THEN REPLACE(REPLACE_2, '(Lim,CY/Kim,KH).', '')
                WHEN (INSTR(REPLACE_2, '(Park,HS/Yeo,MK).') != 0)
                THEN REPLACE(REPLACE_2, '(Park,HS/Yeo,MK).', '')
                WHEN (INSTR(REPLACE_2, '(Cho,SK/Kim,MR).') != 0)
                THEN REPLACE(REPLACE_2, '(Cho,SK/Kim,MR).', '')
                WHEN (INSTR(REPLACE_2, '(Yeo,MK/Park,CY).') != 0)
                THEN REPLACE(REPLACE_2, '(Yeo,MK/Park,CY).', '')
                WHEN (INSTR(REPLACE_2, '(Park,JM/Yeo,MK).') != 0)
                THEN REPLACE(REPLACE_2, '(Park,JM/Yeo,MK).', '')
                WHEN (INSTR(REPLACE_2, '(Kim/Lee,HJ).') != 0)
                THEN REPLACE(REPLACE_2, '(Kim/Lee,HJ).', '')
                WHEN (INSTR(REPLACE_2, '(Choi/Lee,HJ).') != 0)
                THEN REPLACE(REPLACE_2, '(Choi/Lee,HJ).', '')
                WHEN (INSTR(REPLACE_2, '(Lee,YS/Lee,HJ).') != 0)
                THEN REPLACE(REPLACE_2, '(Lee,YS/Lee,HJ).', '')
                WHEN (INSTR(REPLACE_2, '(Lee,YS/Yeo,MK).') != 0)
                THEN REPLACE(REPLACE_2, '(Lee,YS/Yeo,MK).', '')
                WHEN (INSTR(REPLACE_2, '(Lee,YS/Kim,MR).') != 0)
                THEN REPLACE(REPLACE_2, '(Lee,YS/Kim,MR).', '')
                WHEN (INSTR(REPLACE_2, '(Yeo,MK/Kim,YB).') != 0)
                THEN REPLACE(REPLACE_2, '(Yeo,MK/Kim,YB).', '')
                WHEN (INSTR(REPLACE_2, '(Kim,MR/Lee,HJ).') != 0)
                THEN REPLACE(REPLACE_2, '(Kim,MR/Lee,HJ).', '')
                WHEN (INSTR(REPLACE_2, '(Yeo,MK/Choi,SY).') != 0)
                THEN REPLACE(REPLACE_2, '(Yeo,MK/Choi,SY).', '')
                WHEN (INSTR(REPLACE_2, '(Yeo,MK/Lee,HJ).') != 0)
                THEN REPLACE(REPLACE_2, '(Yeo,MK/Lee,HJ).', '')
                WHEN (INSTR(REPLACE_2, '(Kim,MR/Yeo,MK).') != 0)
                THEN REPLACE(REPLACE_2, '(Kim,MR/Yeo,MK).', '')
                ELSE REPLACE_2
            END AS REPLACE_3
        FROM(
            SELECT *,
                CASE
                    WHEN (INSTR(REPLACE_1, 'KS).') != 0)
                    THEN REPLACE(REPLACE_1, 'KS).', '')
                    WHEN (INSTR(REPLACE_1, '(Kim,DH).') != 0)
                    THEN REPLACE(REPLACE_1, '(Kim,DH).', '')
                    WHEN (INSTR(REPLACE_1, '(Kim,MR).') != 0)
                    THEN REPLACE(REPLACE_1, '(Kim,MR).', '')
                    WHEN (INSTR(REPLACE_1, '(Kim,YB).') != 0)
                    THEN REPLACE(REPLACE_1, '(Kim,YB).', '')
                    WHEN (INSTR(REPLACE_1, '(Kim,HS).') != 0)
                    THEN REPLACE(REPLACE_1, '(Kim,HS).', '')
                    WHEN (INSTR(REPLACE_1, '(Kim,JM).') != 0)
                    THEN REPLACE(REPLACE_1, '(Kim,JM).', '')
                    WHEN (INSTR(REPLACE_1, '(Yeo,MK).') != 0)
                    THEN REPLACE(REPLACE_1, '(Yeo,MK).', '')
                    WHEN (INSTR(REPLACE_1, '(Choi,SY).') != 0)
                    THEN REPLACE(REPLACE_1, '(Choi,SY).', '')
                    WHEN (INSTR(REPLACE_1, '(Park,CY).') != 0)
                    THEN REPLACE(REPLACE_1, '(Park,CY).', '')
                    WHEN (INSTR(REPLACE_1, '(Park,MI).') != 0)
                    THEN REPLACE(REPLACE_1, '(Park,MI).', '')
                    WHEN (INSTR(REPLACE_1, '(Lee,HJ).') != 0)
                    THEN REPLACE(REPLACE_1, '(Lee,HJ).', '')
                    ELSE REPLACE_1
                END AS REPLACE_2
            FROM(
                SELECT *,
                    CASE
                        WHEN (INSTR(SAMPLE_BLOCK6, '(Song,KS).') != 0)
                        THEN REPLACE(SAMPLE_BLOCK6, '(Song,KS).', '')
                        WHEN (INSTR(SAMPLE_BLOCK6, '(Song,KS / Kim,DH).') != 0)
                        THEN REPLACE(SAMPLE_BLOCK6, '(Song,KS / Kim,DH).', '')
                        WHEN (INSTR(SAMPLE_BLOCK6, '(Song.KS).') != 0)
                        THEN REPLACE(SAMPLE_BLOCK6, '(Song.KS).', '')
                        WHEN (INSTR(SAMPLE_BLOCK6, '(Song.KS)..') != 0)
                        THEN REPLACE(SAMPLE_BLOCK6, '(Song.KS)..', '')
                        WHEN (INSTR(SAMPLE_BLOCK6, '(Song KS).') != 0)
                        THEN REPLACE(SAMPLE_BLOCK6, '(Song KS).', '')
                        WHEN (INSTR(SAMPLE_BLOCK6, '(Song ,KS).') != 0)
                        THEN REPLACE(SAMPLE_BLOCK6, '(Song ,KS).', '')
                        WHEN (INSTR(SAMPLE_BLOCK6, '(Song,KS and Park,MI).') != 0)
                        THEN REPLACE(SAMPLE_BLOCK6, '(Song,KS and Park,MI).', '')
                        WHEN (INSTR(SAMPLE_BLOCK6, '(Kim,HS and Song,KS).') != 0)
                        THEN REPLACE(SAMPLE_BLOCK6, '(Kim,HS and Song,KS).', '')
                        WHEN (INSTR(SAMPLE_BLOCK6, '(Song,') != 0)
                        THEN REPLACE(SAMPLE_BLOCK6, '(Song,', '')
                        ELSE SAMPLE_BLOCK6
                    END AS REPLACE_1
                FROM test_type1_block_00
            ) a
        ) a
    ) a
) a