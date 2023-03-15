SELECT
    ID,
    CHKID,
    Date,
    육안소견,
    판독의,
    CASE
        WHEN INSTR(lesion, 'mass') != 0 THEN SUBSTRING_INDEX(lesion, 'mass', 1)
        WHEN INSTR(lesion, 'lesion') != 0 THEN SUBSTRING_INDEX(lesion, 'lesion', 1)
        WHEN INSTR(lesion, 'tumor') != 0 THEN SUBSTRING_INDEX(lesion, 'tumor', 1)
        WHEN INSTR(lesion, 'areas') != 0 THEN SUBSTRING_INDEX(lesion, 'areas', 1)
        WHEN INSTR(lesion, 'masses') != 0 THEN SUBSTRING_INDEX(lesion, 'masses', 1)
        WHEN INSTR(lesion, 'It show') != 0 THEN SUBSTRING_INDEX(lesion, 'It show', -1)
        WHEN INSTR(lesion, 'There is') != 0 THEN SUBSTRING_INDEX(lesion, 'There is', -1)
        else lesion
    END AS lesion
FROM(
        SELECT
            ID,
            CHKID,
            Date,
            육안소견,
            판독의,
            CASE
                WHEN INSTR(Tumor_site3, 'lesion') != 0 THEN SUBSTRING_INDEX(
                    SUBSTRING_INDEX(
                        SUBSTRING_INDEX(
                            SUBSTRING_INDEX(
                                SUBSTRING_INDEX(
                                    SUBSTRING_INDEX(육안소견, 'lesion', 1),
                                    'There is a',
                                    -1
                                ),
                                'There are',
                                -1
                            ),
                            'There is   a',
                            -1
                        ),
                        'There   is a',
                        -1
                    ),
                    'there is a',
                    -1
                )
                WHEN INSTR(Tumor_site3, 'tumor') != 0 THEN SUBSTRING_INDEX(
                    SUBSTRING_INDEX(
                        SUBSTRING_INDEX(
                            SUBSTRING_INDEX(육안소견, 'tumor', 1),
                            'There is a',
                            -1
                        ),
                        'There is   a',
                        -1
                    ),
                    'There   is a',
                    -1
                )
                WHEN INSTR(Tumor_site3, 'areas') != 0 THEN SUBSTRING_INDEX(
                    SUBSTRING_INDEX(육안소견, 'areas', 1),
                    'There are',
                    -1
                )
                WHEN INSTR(Tumor_site3, 'masses') != 0 THEN SUBSTRING_INDEX(
                    SUBSTRING_INDEX(육안소견, 'masses', 1),
                    'There are',
                    -1
                )
            END AS lesion,
            CASE
                WHEN INSTR(Tumor_site3, 'mass') != 0 THEN SUBSTRING_INDEX(
                    SUBSTRING_INDEX(육안소견, 'mass', 1),
                    'There is a',
                    -1
                )
                WHEN INSTR(Tumor_site3, 'lesser') != 0 THEN SUBSTRING_INDEX(
                    SUBSTRING_INDEX(육안소견, 'lesser', 1),
                    'There is a',
                    -1
                )
            END AS lesion2
        FROM
            visual_findings_step03
    ) a