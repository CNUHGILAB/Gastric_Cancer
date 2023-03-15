SELECT
    `ID`,
    CHKID,
    OP_Date,
    검사시행일,
    CASE
        WHEN INSTR(General_Categorization, 'Malignant cell') != 0
        THEN 'Malignant cell'
        ELSE General_Categorization
    END AS General_Categorization_1,
    CASE
        WHEN INSTR(General_Categorization, 'positive') != 0
        THEN 'Positive'
        WHEN INSTR(General_Categorization, 'negative') != 0
        THEN 'Negative'
    END AS General_Categorization_2,
    Specimen_Adequacy,
    `Others`
FROM(
    SELECT
        `ID`,
        CHKID,
        OP_Date,
        검사시행일,
        CASE
            WHEN INSTR(General_Categorization, '◎ 병 리 진 단') != 0
            THEN 'None'
            WHEN INSTR(General_Categorization, 'Others') != 0
            THEN 'None'
            WHEN INSTR(General_Categorization, 'Suspicious for malignancy') != 0
            THEN 'positive'
            WHEN INSTR(General_Categorization, 'Suggestive of malignancy') != 0
            THEN 'positive'
            ELSE TRIM(General_Categorization)
        END AS General_Categorization,
        CASE
            WHEN INSTR(Specimen_Adequacy, '◎ 병 리 진 단') != 0
            THEN 'None'
            ELSE TRIM(Specimen_Adequacy)
        END AS Specimen_Adequacy,
        CASE
            WHEN INSTR(`Others`, '◎ 병 리 진 단') != 0
            THEN 'None'
            ELSE TRIM(
                REGEXP_REPLACE(
                    REPLACE(
                        REPLACE(
                            `Others`, 'Others', ''
                        ), 'Malignant cell positive', ''
                    ), '[(|)]', ''
                )
            )
        END AS `Others`
    FROM washcytology_04
) a