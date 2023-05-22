SELECT
    환자번호,
    원무접수ID,
    검사시행일,
    pTNM_ver,
    pT,
    pN,
    pM,
    CASE
        WHEN ((pT = 'T1'OR pT = 'T1a' OR pT = 'T1b') AND pN = 'N0' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IA'
        WHEN pT = 'T2' AND pN = 'N0' AND (pM = 'M0' OR pM = 'Mx')
        THEN 'IB'
        WHEN ((pT = 'T1' OR pT = 'T1a' OR pT = 'T1b') AND pN = 'N1' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IB'
        WHEN (pT = 'T3' AND pN = 'N0' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIA'
        WHEN (pT = 'T2' AND pN = 'N1' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIA'
        WHEN ((pT = 'T1' OR pT = 'T1a' OR pT = 'T1b') AND pN = 'N2' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIA'
        WHEN (pT = 'T4a' AND pN = 'N0' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIB'
        WHEN (pT = 'T3' AND pN = 'N1' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIB'
        WHEN (pT = 'T2' AND pN = 'N2' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIB'
        WHEN ((pT = 'T1' OR pT = 'T1a' OR pT = 'T1b') AND pN = 'N3a' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIB'
        WHEN ((pT = 'T1' OR pT = 'T1a' OR pT = 'T1b') AND pN = 'N3b' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIB'
        WHEN (pT = 'T4a' AND pN = 'N1' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIIA'
        WHEN (pT = 'T3' AND pN = 'N2' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIIA'
        WHEN (pT = 'T2' AND pN = 'N3a' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIIA'
        WHEN (pT = 'T2' AND pN = 'N3b' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIIA'
        WHEN (pT = 'T4b' AND (pN = 'NO' OR pN = 'N0' OR pN = 'N1') AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIIB'
        WHEN (pT = 'T4a' AND pN = 'N2' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIIB'
        WHEN (pT = 'T3' AND pN = 'N3a' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIIB'
        WHEN (pT = 'T3' AND pN = 'N3b' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIIB'
        WHEN (pT = 'T4b' AND (pN = 'N2' OR pN = 'N3a') AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIIC'
        WHEN (pT = 'T4b' AND (pN = 'N2' OR pN = 'N3b') AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIIC'
        WHEN (pT = 'T4a' AND pN = 'N3a' AND (pM = 'M0' OR pM = 'Mx'))
        THEN 'IIIC'
        WHEN (pT = 'T4a' AND pN = 'N3b' AND (pM = 'M0'OR pM = 'Mx'))
        THEN 'IIIC'
        WHEN ((pT != 'Tx' OR pT != 'None' OR pT != NULL) AND (pN != 'Nx' OR pN != 'None' OR pN != NULL) AND pM = 'M1')
        THEN 'IV'
    END AS Staging,
    pTNM_Comment
FROM(
    SELECT
        원무접수ID,
        환자번호,
        검사시행일,
        CASE
            WHEN INSTR(pT, 'x') != 0
            THEN 'Tx'
            WHEN INSTR(pT, '1a') != 0
            THEN 'T1a'
            WHEN INSTR(pT, '1b') != 0
            THEN 'T1b'
            WHEN INSTR(pT, '2') != 0
            THEN 'T2'
            WHEN INSTR(pT, '3') != 0
            THEN 'T3'
            WHEN INSTR(pT, '4a') != 0
            THEN 'T4a'
            WHEN INSTR(pT, '4b') != 0
            THEN 'T4b'
            WHEN NULLIF(pT, '') IS NULL
            THEN NULL
        END AS pT,
        CASE
            WHEN INSTR(pN, 'x') != 0
            THEN 'Nx'
            WHEN INSTR(pN, '0') != 0
            THEN 'N0'
            WHEN INSTR(pN, '1') != 0
            THEN 'N1'
            WHEN INSTR(pN, '2') != 0
            THEN 'N2'
            WHEN INSTR(pN, '3a') != 0
            THEN 'N3a'
            WHEN INSTR(pN, '3b') != 0
            THEN 'N3b'
            WHEN NULLIF(pN, '') IS NULL
            THEN 'None'
        END AS pN,
        CASE
            WHEN INSTR(pM, 'x') != 0
            THEN 'Mx'
            WHEN INSTR(pM, '0') != 0
            THEN 'M0'
            WHEN INSTR(pM, '1') != 0
            THEN 'M1'
            WHEN NULLIF(pM, '') IS NULL
            THEN 'None'
        END AS pM,
        pTNM_Comment,
        pTNM_ver
    FROM(
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            pTNM_ver,
            REPLACE(
                REPLACE(
                    SUBSTR(
                        pT, INSTR(pT, 'pT') + 2, (INSTR(pT, 'N') -1) -(INSTR(pT, 'pT') + 1)
                    ), ',', ''
                ), 'p', ''
            ) AS pT,
            REPLACE(
                SUBSTR(
                    pT, INSTR(pT, 'N') + 1, (INSTR(pT, 'M') -1) -(INSTR(pT, 'N'))
                ), ',', ''
            ) AS pN,
            REPLACE(SUBSTR(pT, INSTR(pT, 'M') + 1, 1), ',', '') AS pM,
            `Comment` AS pTNM_Comment
        FROM pathologic_biopsy_14
    ) biopsy
) biopsy