SELECT
    환자번호 AS `ID`,
    원무접수ID AS Checkin,
    약품처방일 AS AD_Date,
    CASE
        WHEN (P != 0 AND F != 0 AND L != 0)
        THEN 'PFL'
        WHEN (P != 0 AND F != 0 AND Et != 0)
        THEN 'PFE'
        WHEN (P != 0 AND F != 0 AND X != 0)
        THEN 'PCF'
        WHEN (D != 0 AND F != 0 AND dox != 0)
        THEN 'Dfdox'
        WHEN (D != 0 AND F != 0 AND X != 0)
        THEN 'DCF'
        WHEN (D != 0 AND F != 0 AND L != 0)
        THEN 'DfL'
        WHEN (O != 0 AND F != 0 AND L != 0)
        THEN 'OFL'
        WHEN (T != 0 AND F != 0 AND X != 0)
        THEN ' HFC'
        WHEN (T != 0 AND C != 0 AND X != 0)
        THEN ' HCX'
        WHEN (I != 0 AND F != 0 AND L != 0)
        THEN 'IFL'
        WHEN (C != 0 AND E != 0 AND X != 0)
        THEN 'ECX'
        WHEN (dox != 0 AND X != 0 AND Et != 0)
        THEN 'EAP'
        WHEN (C != 0 AND O != 0)
        THEN 'Xelox'
        WHEN (P != 0 AND X != 0)
        THEN 'PC'
        WHEN (D != 0 AND X != 0)
        THEN 'DC'
        WHEN (D != 0 AND F != 0)
        THEN 'DF'
        WHEN (F != 0 AND L != 0)
        THEN 'FL'
        WHEN (F != 0 AND X != 0)
        THEN 'FC'
        WHEN (`S-1` != 0 AND X != 0)
        THEN 'S-1C'
        WHEN (I != 0 AND F != 0)
        THEN 'IF'
        WHEN (I != 0 AND X != 0)
        THEN 'IC'
        WHEN (C != 0 AND X != 0)
        THEN 'CX'
        WHEN (C != 0 AND O != 0)
        THEN 'CAPOX'
        WHEN (R != 0 AND P != 0)
        THEN 'RP'
        WHEN (F != 0 AND O != 0)
        THEN 'OF'
        WHEN (X != 0 AND Et != 0)
        THEN 'EP'
        WHEN `S-1` != 0
        THEN 'S-1'
        WHEN C != 0
        THEN 'Xeloda'
        WHEN I != 0
        THEN 'I'
        WHEN D != 0
        THEN 'D'
        WHEN F != 0
        THEN 'F'
        WHEN P != 0
        THEN 'P'
        WHEN Et != 0
        THEN 'E'
        WHEN dox != 0
        THEN 'Dox'
        WHEN X != 0
        THEN 'Cisplatin'
        WHEN Tegafur != 0
        THEN 'Tegafur'
        WHEN T != 0
        THEN 'Trastuzumab'
        WHEN O != 0
        THEN 'Oxaliplatin'
        WHEN E != 0
        THEN 'Epirubicin'
        WHEN L != 0
        THEN 'Leucovorin'
    END AS AD
FROM(
    SELECT *,
        INSTR(`약품명(성분명)`, 'Fluorouracil') != 0 AS F,
        INSTR(`약품명(성분명)`, 'Oxaliplatin') != 0 AS O,
        (INSTR(`약품명(성분명)`, 'Tegafur') != 0
            AND INSTR(`약품명(성분명)`, 'Gimeracil') != 0
            AND INSTR(`약품명(성분명)`, 'Oteracil') != 0) AS `S-1`,
        INSTR(`약품명(성분명)`, 'Capecitabine') != 0 AS C,
        INSTR(`약품명(성분명)`, 'Cisplatin') != 0 AS X,
        INSTR(`약품명(성분명)`, 'Docetaxel') != 0 AS D,
        INSTR(`약품명(성분명)`, 'Doxorubicin') != 0 AS dox,
        INSTR(`약품명(성분명)`, 'Epirubicin') != 0 AS E,
        INSTR(`약품명(성분명)`, 'Etoposide') != 0 AS Et,
        INSTR(`약품명(성분명)`, 'Irinotecan') != 0 AS I,
        INSTR(`약품명(성분명)`, 'Leucovorin') != 0 AS L,
        INSTR(`약품명(성분명)`, 'Paclitaxel') != 0 AS P,
        INSTR(`약품명(성분명)`, 'Ramucirumab') != 0 AS R,
        INSTR(`약품명(성분명)`, 'Tegafur') != 0 AS Tegafur,
        INSTR(`약품명(성분명)`, 'Trastuzumab') != 0 AS T
    FROM(
        SELECT
            환자번호,
            원무접수ID,
            약품처방일,
            GROUP_CONCAT(DISTINCT `약품명(성분명)`) AS `약품명(성분명)`
        FROM raw_file_2012_2022.anticancer_drug
        GROUP BY
            환자번호, 약품처방일
    ) a
) a