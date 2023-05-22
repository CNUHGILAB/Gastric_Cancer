SELECT
    `ID`,
    CHKID,
    OP_Date,
    검사시행일,
    CASE
        WHEN INSTR(GENERAL_CATEGORIZATION, 'Malignant cell') != 0
        THEN 'Malignant cell'
        ELSE GENERAL_CATEGORIZATION
    END AS General_Categorization_1,
    CASE
        WHEN INSTR(GENERAL_CATEGORIZATION, 'positive') != 0
        THEN 'Positive'
        WHEN INSTR(GENERAL_CATEGORIZATION, 'negative') != 0
        THEN 'Negative'
    END AS General_Categorization_2,
    SPECIMEN_ADEQUACY AS Specimen_Adequacy,
    `OTHERS` AS `Others`
FROM(
    SELECT
        `ID`,
        CHKID,
        OP_Date,
        검사시행일,
        CASE
            WHEN INSTR(GENERAL_CATEGORIZATION, '◎ 병 리 진 단') != 0
            THEN 'None'
            WHEN INSTR(GENERAL_CATEGORIZATION, 'Others') != 0
            THEN 'None'
            WHEN INSTR(GENERAL_CATEGORIZATION, 'Suspicious for malignancy') != 0
            THEN 'positive'
            WHEN INSTR(GENERAL_CATEGORIZATION, 'Suggestive of malignancy') != 0
            THEN 'positive'
            ELSE TRIM(GENERAL_CATEGORIZATION)
        END AS GENERAL_CATEGORIZATION,
        CASE
            WHEN INSTR(SPECIMEN_ADEQUACY, '◎ 병 리 진 단') != 0
            THEN 'None'
            ELSE TRIM(SPECIMEN_ADEQUACY)
        END AS SPECIMEN_ADEQUACY,
        CASE
            WHEN INSTR(`OTHERS`, '◎ 병 리 진 단') != 0
            THEN 'None'
            ELSE TRIM(
                REGEXP_REPLACE(
                    REPLACE(
                        REPLACE(
                            `OTHERS`, 'Others', ''
                        ), 'Malignant cell positive', ''
                    ), '[(|)]', ''
                )
            )
        END AS `OTHERS`
    FROM washcytology_04
) a