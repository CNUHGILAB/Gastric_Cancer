SELECT
    *
FROM
    (
        SELECT
            ID,
            OpDate,
            replace(
                replace(
                    replace(
                        concat(
                            DM,
                            ',',
                            HTN,
                            ',',
                            L_Hep,
                            ',',
                            TBC,
                            ',',
                            Angina,
                            ',',
                            MI,
                            ',',
                            HF,
                            ',',
                            CRF,
                            ',',
                            COPD,
                            ',',
                            CVA
                        ),
                        '0,',
                        ''
                    ),
                    ',0',
                    ''
                ),
                '0',
                ''
            ) as CMB
        FROM
            (
                SELECT
                    cast(ID as char) as ID,
                    OpDate,
                    case
                        when DM = '+' then 'DM'
                        else 0
                    end as DM,
                    case
                        when HTN = '+' then 'HTN'
                        else 0
                    end as HTN,
                    case
                        when L_Hep = '+' then 'L_Hep'
                        else 0
                    end as L_Hep,
                    case
                        when TBC = '+' then 'TBC'
                        else 0
                    end as TBC,
                    case
                        when Angina = '+' then 'Angina'
                        else 0
                    end as Angina,
                    case
                        when MI = '+' then 'MI'
                        else 0
                    end as MI,
                    case
                        when HF = '+' then 'HF'
                        else 0
                    end as HF,
                    case
                        when CRF = '+' then 'CRF'
                        else 0
                    end as CRF,
                    case
                        when COPD = '+' then 'COPD'
                        else 0
                    end as COPD,
                    case
                        when CVA = '+' then 'CVA'
                        else 0
                    end as CVA
                FROM
                    tb_tmp_comorbidity_step_19
            ) a
    ) a
WHERE
    nullif(CMB, '') is not null