SELECT * FROM(
    SELECT
        원무접수ID,
        환자번호,
        SUBSTRING_INDEX(
            SUBSTRING_INDEX(
                검사결과, '병 리 진 단', 1
            ), '육 안 소 견', -1
        ) AS 육_안_소_견,
        SUBSTR(검사결과, INSTR(검사결과, '병 리 진 단')) AS 병_리_진_단
    FROM(
        SELECT * FROM gc_raw.biopsy
        WHERE
            검사코드 = 'C5502'
            OR 검사코드 = 'C5503'
            OR 검사코드 = 'C5506'
            OR 검사코드 = 'CB017'
            OR 검사코드 = 'C5606'
            OR 검사코드 = 'C5602'
            OR 검사코드 = 'C5603'
            OR 검사코드 = 'C5605'
            OR 검사코드 = 'C5607'
            OR 검사코드 = 'C5604'
            OR 검사코드 = 'C5601'
            OR 검사코드 = 'CB049'
            OR 검사코드 = 'CB048'
            OR 검사코드 = 'C5918'
            OR 검사코드 = 'C5919'
    ) biopsy
    WHERE
        INSTR(
            검사결과,
            'Tubular adenocarcinoma, well / moderately / poorly differentiated (          ), with'
        ) = 0
        AND NULLIF(검사결과, '') IS NOT NULL
        AND INSTR(검사결과, 'endoscopic biopsy') = 0
        AND(INSTR(검사결과, 'mucosectomized tissue') = 0 OR (INSTR(검사결과, 'fragment') = 0 AND INSTR(검사결과, 'mucosectomized') = 0))
) a
WHERE
    INSTR(육_안_소_견, 'stomach') != 0 OR INSTR(병_리_진_단, 'Stomach') != 0 