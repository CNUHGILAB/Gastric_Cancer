SELECT 
    DISTINCT st0.`ID`,
    st0.OpDate,
    st1.DM,
    st1_1.DM_Duration,
    st2.HTN,
    st2_1.HTN_Duration,
    st3.L_Hep,
    st4.TBC,
    st5.Angina,
    st5.MI,
    st5.HF,
    st6.CRF,
    st7.COPD,
    st8.CVA
FROM
    comorbidity_01 st0
    LEFT OUTER JOIN comorbidity_03_02 st1_1 ON (st0.ID = st1_1.ID)
    LEFT OUTER JOIN comorbidity_03_01 st1 ON (st0.ID = st1.ID)
    LEFT OUTER JOIN comorbidity_05_01 st2 ON (st0.ID = st2.ID)
    LEFT OUTER JOIN comorbidity_05_02 st2_1 ON (st0.ID = st2_1.ID)
    LEFT OUTER JOIN comorbidity_07 st3 ON (st0.ID = st3.ID)
    LEFT OUTER JOIN comorbidity_09 st4 ON (st0.ID = st4.ID)
    LEFT OUTER JOIN comorbidity_10_05 st5 ON (st0.ID = st5.ID)
    LEFT OUTER JOIN comorbidity_12 st6 ON (st0.ID = st6.ID)
    LEFT OUTER JOIN comorbidity_14 st7 ON (st0.ID = st7.ID)
    LEFT OUTER JOIN comorbidity_16 st8 ON (st0.ID = st8.ID)