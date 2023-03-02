SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    육안소견,
    판독의,
    biopsy_1,
    CASE
        WHEN INSTR(Tumor_size1, 'size') != 0 THEN SUBSTRING_INDEX(
            SUBSTR(
                Tumor_size1,
                INSTR(Tumor_size1, 'size')
            ),
            'cm',
            1
        )
        WHEN INSTR(Tumor_size1, 'size') = 0 THEN SUBSTRING_INDEX(
            SUBSTRING_INDEX(Tumor_size1, 'cm', 2),
            ',',
            -1
        )
    END AS Tumor_size1,
    Tumor_size2
FROM (
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            육안소견,
            판독의,
            biopsy,
            CASE
                WHEN Specimen IS NOT NULL THEN SUBSTRING_INDEX(
                    SUBSTRING_INDEX(biopsy, '4. Tumor', -1),
                    '5. ',
                    1
                )
            END AS Tumor_size1,
            CASE
                WHEN no1 IS NOT NULL THEN SUBSTRING_INDEX(biopsy, 'Slide key', 1)
                WHEN no1_1 IS NOT NULL THEN no1_1
                WHEN Specimen IS NULL
                AND Stomach IS NULL THEN biopsy
            END AS biopsy_1,
            CASE
                WHEN Stomach IS NOT NULL THEN CASE
                    WHEN Stomach LIKE BINARY '%%tumor size%%' THEN CASE
                        WHEN INSTR(
                            REVERSE(Stomach),
                            REVERSE('tumor size: \n')
                        ) != 0 THEN SUBSTRING_INDEX(
                            SUBSTRING_INDEX(Stomach, 'tumor size', -1),
                            '\n',
                            3
                        )
                        WHEN INSTR(Stomach, 'tumor size') != 0 THEN SUBSTRING_INDEX(
                            SUBSTRING_INDEX(Stomach, 'tumor size', -1),
                            '\n',
                            2
                        )
                    END
                    WHEN Stomach LIKE BINARY '%%Tumor size%%' THEN SUBSTRING_INDEX(
                        SUBSTRING_INDEX(Stomach, 'Tumor size', -1),
                        '\n',
                        2
                    )
                    WHEN INSTR(Stomach, 'lesion size') != 0 THEN SUBSTRING_INDEX(
                        SUBSTRING_INDEX(Stomach, 'lesion size', -1),
                        '\n',
                        1
                    )
                    WHEN INSTR(Stomach, 'invasion size') != 0 THEN SUBSTRING_INDEX(
                        SUBSTRING_INDEX(Stomach, 'invasion size', -1),
                        '\n',
                        1
                    )
                END
            END AS Tumor_size2
        FROM (
                SELECT
                    DISTINCT 원무접수ID,
                    환자번호,
                    검사시행일,
                    육안소견,
                    판독의,
                    CASE
                        WHEN NULLIF(Stomach, '') IS NOT NULL THEN TRIM(
                            TRAILING SUBSTR(
                                Stomach,
                                INSTR(Stomach, '\n2)')
                            )
                            FROM
                                Stomach
                        )
                        WHEN NULLIF(no1, '') IS NOT NULL THEN CASE
                            WHEN INSTR(육안소견, 'No.2') != 0 THEN TRIM(
                                TRAILING SUBSTR(no1, INSTR(no1, 'No.2'))
                                FROM
                                    no1
                            )
                            WHEN INSTR(육안소견, 'No. 2') != 0 THEN TRIM(
                                TRAILING SUBSTR(no1, INSTR(no1, 'No. 2'))
                                FROM
                                    no1
                            )
                            WHEN INSTR(육안소견, 'No2') != 0 THEN TRIM(
                                TRAILING SUBSTR(no1, INSTR(no1, 'No2'))
                                FROM
                                    no1
                            )
                            WHEN INSTR(육안소견, 'No.  2') != 0 THEN TRIM(
                                TRAILING SUBSTR(no1, INSTR(no1, 'No.  2'))
                                FROM
                                    no1
                            )
                        END
                        WHEN NULLIF(no1_1, '') IS NOT NULL THEN TRIM(
                            TRAILING SUBSTR(no1_1, INSTR(no1_1, '#2 ('))
                            FROM
                                no1_1
                        )
                        ELSE 육안소견
                    END as biopsy,
                    Stomach,
                    no1,
                    no1_1,
                    Specimen
                FROM (
                        SELECT
                            원무접수ID,
                            환자번호,
                            검사시행일,
                            육안소견,
                            판독의,
                            CASE
                                WHEN INSTR(육안소견, 'No.1') != 0 THEN SUBSTR(육안소견, INSTR(육안소견, 'No.1'))
                                WHEN INSTR(육안소견, 'No. 1') != 0 THEN SUBSTR(육안소견, INSTR(육안소견, 'No. 1'))
                                WHEN INSTR(육안소견, 'No1') != 0 THEN SUBSTR(육안소견, INSTR(육안소견, 'No1'))
                                WHEN INSTR(육안소견, 'No.  1') != 0 THEN SUBSTR(육안소견, INSTR(육안소견, 'No.  1'))
                            END as no1,
                            CASE
                                WHEN INSTR(육안소견, '#1 (stomach)') != 0 THEN SUBSTR(
                                    육안소견,
                                    INSTR(육안소견, '#1 (stomach)')
                                )
                                WHEN INSTR(육안소견, '#1 (stonach)') != 0 THEN SUBSTR(
                                    육안소견,
                                    INSTR(육안소견, '#1 (stonach)')
                                )
                            END as no1_1,
                            CASE
                                WHEN INSTR(육안소견, 'Main mass: Stomach') != 0 THEN SUBSTR(
                                    육안소견,
                                    INSTR(육안소견, 'Main mass: Stomach')
                                )
                            END as Stomach,
                            CASE
                                WHEN INSTR(육안소견, '1. Specimen status') != 0 THEN SUBSTR(
                                    육안소견,
                                    INSTR(육안소견, '1. Specimen status')
                                )
                            END as Specimen
                        FROM
                            visual_findings_05
                    ) a
            ) a
    ) a