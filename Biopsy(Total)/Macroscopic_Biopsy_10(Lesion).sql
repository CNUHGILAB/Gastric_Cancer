SELECT
    환자번호,
    원무접수ID,
    검사시행일,
    판독의,
    육안소견,
    REPLACE(
            REPLACE(
                    REPLACE (
                            CONCAT(
                                protruding,
                                ',',
                                superficially,
                                ',',
                                flat,
                                ',',
                                superficially_spreading,
                                ',',
                                excavated,
                                ',',
                                depressed,
                                ',',
                                defined,
                                ',',
                                sclerotic,
                                ',',
                                polypoid,
                                ',',
                                erosive,
                                ',',
                                infiltrative,
                                ',',
                                umbilicated,
                                ',',
                                ulcerative,
                                ',',
                                fungating,
                                ',',
                                ulceroinfitrative,
                                ',',
                                diffusely_thickened,
                                ',',
                                linitis_plastica,
                                ',',
                                diffuse_infiltrative,
                                ',',
                                unclassified,
                                ',',
                                elevated
                            ),
                            '0,',
                            ''
                        ),
                        ',0',
                        ''
                ),
                '0',
                ''
        ) AS biopsy,
    CASE
        WHEN NULLIF(protruding, '0') IS NULL
        AND NULLIF(superficially, '0') IS NULL
        AND NULLIF(flat, '0') IS NULL
        AND NULLIF(superficially_spreading, '0') IS NULL
        AND NULLIF(excavated, '0') IS NULL
        AND NULLIF(depressed, '0') IS NULL
        AND NULLIF(defined, '0') IS NULL
        AND NULLIF(sclerotic, '0') IS NULL
        AND NULLIF(polypoid, '0') IS NULL
        AND NULLIF(erosive, '0') IS NULL
        AND NULLIF(infiltrative, '0') IS NULL
        AND NULLIF(umbilicated, '0') IS NULL
        AND NULLIF(ulcerative, '0') IS NULL
        AND NULLIF(fungating, '0') IS NULL
        AND NULLIF(ulceroinfitrative, '0') IS NULL
        AND NULLIF(diffusely_thickened, '0') IS NULL
        AND NULLIF(linitis_plastica, '0') IS NULL
        AND NULLIF(diffuse_infiltrative, '0') IS NULL
        AND NULLIF(unclassified, '0') IS NULL
        AND NULLIF(elevated, '0') IS NULL 
        THEN 
        CASE
            WHEN Tumor_lesion1 IS NOT NULL THEN Tumor_lesion1
            WHEN Tumor_lesion2 IS NOT NULL THEN Tumor_lesion2
            WHEN biopsy_1 IS NOT NULL THEN biopsy_1
        END
    END AS undecided
FROM (
        SELECT
            *,
            CASE
                WHEN INSTR(biopsy_1, 'protruding') != 0 THEN 'protruding'
                WHEN INSTR(Tumor_lesion1, 'protruding') != 0 THEN 'protruding'
                WHEN INSTR(Tumor_lesion2, 'protruding') != 0 THEN 'protruding'
                ELSE 0
            END AS protruding,
            CASE
                WHEN INSTR(biopsy_1, 'superficially') != 0 THEN 'superficially'
                WHEN INSTR(
                    Tumor_lesion1,
                    'superficially'
                ) != 0 THEN 'superficially'
                WHEN INSTR(
                    Tumor_lesion2,
                    'superficially'
                ) != 0 THEN 'superficially'
                ELSE 0
            END AS superficially,
            CASE
                WHEN INSTR(biopsy_1, 'flat') != 0 THEN 'flat'
                WHEN INSTR(Tumor_lesion1, 'flat') != 0 THEN 'flat'
                WHEN INSTR(Tumor_lesion2, 'flat') != 0 THEN 'flat'
                ELSE 0
            END AS flat,
            CASE
                WHEN (
                    INSTR(biopsy_1, 'superficially') != 0
                    AND INSTR(biopsy_1, 'spreading')
                ) != 0 THEN 'superficially spreading'
                WHEN (
                    INSTR(
                        Tumor_lesion1,
                        'superficially'
                    ) != 0
                    AND INSTR(Tumor_lesion1, 'spreading')
                ) != 0 THEN 'superficially spreading'
                WHEN (
                    INSTR(
                        Tumor_lesion2,
                        'superficially'
                    ) != 0
                    AND INSTR(Tumor_lesion2, 'spreading')
                ) != 0 THEN 'superficially spreading'
                ELSE 0
            END AS superficially_spreading,
            CASE
                WHEN INSTR(biopsy_1, 'excavated') != 0 THEN 'excavated'
                WHEN INSTR(Tumor_lesion1, 'excavated') != 0 THEN 'excavated'
                WHEN INSTR(Tumor_lesion2, 'excavated') != 0 THEN 'excavated'
                ELSE 0
            END AS excavated,
            CASE
                WHEN INSTR(biopsy_1, 'deprssed') != 0 THEN 'depressed'
                WHEN INSTR(biopsy_1, 'depressed') != 0 THEN 'depressed'
                WHEN INSTR(Tumor_lesion1, 'deprssed') != 0 THEN 'depressed'
                WHEN INSTR(Tumor_lesion1, 'depressed') != 0 THEN 'depressed'
                WHEN INSTR(Tumor_lesion2, 'deprssed') != 0 THEN 'depressed'
                WHEN INSTR(Tumor_lesion2, 'depressed') != 0 THEN 'depressed'
                ELSE 0
            END AS depressed,
            CASE
                WHEN INSTR(biopsy_1, 'defined') != 0 THEN 'defined'
                WHEN INSTR(Tumor_lesion1, 'defined') != 0 THEN 'defined'
                WHEN INSTR(Tumor_lesion2, 'defined') != 0 THEN 'defined'
                ELSE 0
            END AS defined,
            CASE
                WHEN INSTR(biopsy_1, 'sclerotic') != 0 THEN 'sclerotic'
                WHEN INSTR(Tumor_lesion1, 'sclerotic') != 0 THEN 'sclerotic'
                WHEN INSTR(Tumor_lesion2, 'sclerotic') != 0 THEN 'sclerotic'
                ELSE 0
            END AS sclerotic,
            CASE
                WHEN INSTR(biopsy_1, 'polypoid') != 0 THEN 'polypoid'
                WHEN INSTR(Tumor_lesion1, 'polypoid') != 0 THEN 'polypoid'
                WHEN INSTR(Tumor_lesion2, 'polypoid') != 0 THEN 'polypoid'
                ELSE 0
            END AS polypoid,
            CASE
                WHEN INSTR(biopsy_1, 'erosive') != 0 THEN 'erosive'
                WHEN INSTR(Tumor_lesion1, 'erosive') != 0 THEN 'erosive'
                WHEN INSTR(Tumor_lesion2, 'erosive') != 0 THEN 'erosive'
                ELSE 0
            END AS erosive,
            CASE
                WHEN INSTR(biopsy_1, 'infiltrative') != 0 THEN 'infiltrative'
                WHEN INSTR(Tumor_lesion1, 'infiltrative') != 0 THEN 'infiltrative'
                WHEN INSTR(Tumor_lesion2, 'infiltrative') != 0 THEN 'infiltrative'
                ELSE 0
            END AS infiltrative,
            CASE
                WHEN INSTR(biopsy_1, 'umbilicated') != 0 THEN 'umbilicated'
                WHEN INSTR(Tumor_lesion1, 'umbilicated') != 0 THEN 'umbilicated'
                WHEN INSTR(Tumor_lesion2, 'umbilicated') != 0 THEN 'umbilicated'
                ELSE 0
            END AS umbilicated,
            CASE
                WHEN INSTR(biopsy_1, 'ulcerative') != 0 THEN 'ulcerative'
                WHEN INSTR(biopsy_1, 'ulcerated') != 0 THEN 'ulcerated'
                WHEN INSTR(Tumor_lesion1, 'ulcerative') != 0 THEN 'ulcerative'
                WHEN INSTR(Tumor_lesion1, 'ulcerated') != 0 THEN 'ulcerated'
                WHEN INSTR(Tumor_lesion2, 'ulcerative') != 0 THEN 'ulcerative'
                WHEN INSTR(Tumor_lesion2, 'ulcerated') != 0 THEN 'ulcerated'
                ELSE 0
            END AS ulcerative,
            CASE
                WHEN INSTR(biopsy_1, 'ulceroinfungating') != 0 THEN 'ulceroinfungating'
                WHEN INSTR(biopsy_1, 'ulcerofungating') != 0 THEN 'ulcerofungating'
                WHEN INSTR(biopsy_1, 'fungating') != 0 THEN 'fungating'
                WHEN INSTR(
                    Tumor_lesion1,
                    'ulceroinfungating'
                ) != 0 THEN 'ulceroinfungating'
                WHEN INSTR(
                    Tumor_lesion1,
                    'ulcerofungating'
                ) != 0 THEN 'ulcerofungating'
                WHEN INSTR(Tumor_lesion1, 'fungating') != 0 THEN 'fungating'
                WHEN INSTR(
                    Tumor_lesion2,
                    'ulceroinfungating'
                ) != 0 THEN 'ulceroinfungating'
                WHEN INSTR(
                    Tumor_lesion2,
                    'ulcerofungating'
                ) != 0 THEN 'ulcerofungating'
                WHEN INSTR(Tumor_lesion2, 'fungating') != 0 THEN 'fungating'
                ELSE 0
            END AS fungating,
            CASE
                WHEN INSTR(
                    biopsy_1,
                    'ulceroinfiltrative'
                ) != 0 THEN 'ulceroinfiltrative'
                WHEN INSTR(
                    Tumor_lesion1,
                    'ulceroinfiltrative'
                ) != 0 THEN 'ulceroinfiltrative'
                WHEN INSTR(
                    Tumor_lesion2,
                    'ulceroinfiltrative'
                ) != 0 THEN 'ulceroinfiltrative'
                ELSE 0
            END AS ulceroinfitrative,
            CASE
                WHEN (
                    INSTR(biopsy_1, 'linitis') != 0
                    AND INSTR(biopsy_1, 'plastica') != 0
                ) THEN 'linitis plastica'
                WHEN (
                    INSTR(Tumor_lesion1, 'linitis') != 0
                    AND INSTR(Tumor_lesion1, 'plastica') != 0
                ) THEN 'linitis plastica'
                WHEN (
                    INSTR(Tumor_lesion2, 'linitis') != 0
                    AND INSTR(Tumor_lesion2, 'plastica') != 0
                ) THEN 'linitis plastica'
                ELSE 0
            END AS linitis_plastica,
            CASE
                WHEN (
                    INSTR(biopsy_1, 'diffusely') != 0
                    AND INSTR(biopsy_1, 'thickened') != 0
                ) THEN 'diffusely thickened'
                WHEN (
                    INSTR(Tumor_lesion1, 'diffusely') != 0
                    AND INSTR(Tumor_lesion1, 'thickened') != 0
                ) THEN 'linitis plastica'
                WHEN (
                    INSTR(Tumor_lesion2, 'diffusely') != 0
                    AND INSTR(Tumor_lesion2, 'thickened') != 0
                ) THEN 'linitis plastica'
                ELSE 0
            END AS diffusely_thickened,
            CASE
                WHEN (
                    INSTR(biopsy_1, 'diffuse') != 0
                    AND INSTR(biopsy_1, ' infiltrative') != 0
                ) THEN 'diffuse infiltrative'
                WHEN (
                    INSTR(Tumor_lesion1, 'diffuse') != 0
                    AND INSTR(
                        Tumor_lesion1,
                        ' infiltrative'
                    ) != 0
                ) THEN 'diffuse infiltrative'
                WHEN (
                    INSTR(Tumor_lesion2, 'diffuse') != 0
                    AND INSTR(
                        Tumor_lesion2,
                        ' infiltrative'
                    ) != 0
                ) THEN 'diffuse infiltrative'
                ELSE 0
            END AS diffuse_infiltrative,
            CASE
                WHEN INSTR(biopsy_1, 'unclassified') != 0 THEN 'unclassified'
                WHEN INSTR(Tumor_lesion1, 'unclassified') != 0 THEN 'unclassified'
                WHEN INSTR(Tumor_lesion2, 'unclassified') != 0 THEN 'unclassified'
                ELSE 0
            END AS unclassified,
            CASE
                WHEN INSTR(biopsy_1, 'elevated') != 0 THEN 'elevated'
                WHEN INSTR(Tumor_lesion1, 'elevated') != 0 THEN 'elevated'
                WHEN INSTR(Tumor_lesion2, 'elevated') != 0 THEN 'elevated'
                ELSE 0
            END AS elevated
        FROM
            visual_findings_09
    ) a