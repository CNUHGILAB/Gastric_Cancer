SELECT
    ID,
    CHKID,
    OP_Date,
    검사시행일,
    case
        when instr(GENERAL_CATEGORIZATION, 'Malignant cell') != 0 then 'Malignant cell'
        else GENERAL_CATEGORIZATION
    end as GENERAL_CATEGORIZATION_1,
    case
        when instr(GENERAL_CATEGORIZATION, 'positive') != 0 then 'Positive'
        when instr(GENERAL_CATEGORIZATION, 'negative') != 0 then 'Negative'
    end as GENERAL_CATEGORIZATION_2,
    SPECIMEN_ADEQUACY,
    OTHERES
FROM
    (
        SELECT
            ID,
            CHKID,
            OP_Date,
            검사시행일,
            case
                when instr(GENERAL_CATEGORIZATION, '◎ 병 리 진 단') != 0 then 'None'
                when instr(GENERAL_CATEGORIZATION, 'Others') != 0 then 'None'
                when instr(
                    GENERAL_CATEGORIZATION,
                    'Suspicious for malignancy'
                ) != 0 then 'positive'
                when instr(
                    GENERAL_CATEGORIZATION,
                    'Suggestive of malignancy'
                ) != 0 then 'positive'
                else trim(GENERAL_CATEGORIZATION)
            end as GENERAL_CATEGORIZATION,
            case
                when instr(SPECIMEN_ADEQUACY, '◎ 병 리 진 단') != 0 then 'None'
                else trim(SPECIMEN_ADEQUACY)
            end as SPECIMEN_ADEQUACY,
            case
                when instr(OTHERES, '◎ 병 리 진 단') != 0 then 'None'
                else trim(
                    REGEXP_REPLACE(
                        replace(
                            replace(OTHERES, 'Others', ''),
                            'Malignant cell positive',
                            ''
                        ),
                        "[(|)]",
                        ''
                    )
                )
            end as OTHERES
        FROM
            wcstep04
    ) a