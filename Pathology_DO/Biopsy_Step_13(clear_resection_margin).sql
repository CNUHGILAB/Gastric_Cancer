SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    pProxMargin,
    pDistMargin,
    CASE
        WHEN (NULLIF(pProxMargin, '') IS NULL
        AND NULLIF(pDistMargin, '') IS NULL) THEN 'No'
        WHEN (pProxMargin IS NOT NULL
        AND NULLIF(pDistMargin, '') IS NULL) THEN 'No'
        WHEN (NULLIF(pProxMargin, '') IS NULL
        AND pDistMargin IS NOT NULL) THEN 'No'
        WHEN (pProxMargin IS NOT NULL
        AND pDistMargin IS NOT NULL) THEN 'Yes'
    END AS pSafeMargin
FROM(
SELECT
    원무접수ID,
    환자번호,
    검사시행일,
    COALESCE(proximal, CRM) as pProxMargin,
    COALESCE(distal, CRM) as pDistMargin
FROM(
        SELECT
            원무접수ID,
            환자번호,
            검사시행일,
            병리진단,
            CASE
                WHEN INSTR(
                    병리진단,
                    'clear both resection margin'
                ) != 0 THEN 'CRM'
                WHEN INSTR(
                    병리진단,
                    'clear borh resection margin'
                ) != 0 THEN 'CRM'
                WHEN INSTR(
                    병리진단,
                    'clcear both resection margin'
                ) != 0 THEN 'CRM'
                WHEN INSTR(
                    병리진단,
                    'clear resection margin'
                ) != 0 THEN 'CRM'
                WHEN INSTR(
                    병리진단,
                    'clean both resection margin'
                ) != 0 THEN 'CRM'
                WHEN INSTR(
                    병리진단,
                    'clear lines of resection'
                ) != 0 THEN 'CRM'
            END AS CRM,
            CASE
                WHEN INSTR(
                    병리진단,
                    'positive proximal resection margin'
                ) != 0 THEN 'PRM'
                ELSE REGEXP_SUBSTR(
                    NULLIF(
                        SUBSTR(
                            margin,
                            INSTR(margin, 'proximal')
                        ),
                        ' '
                    ),
                    '[0-9]+[.]?[0-9]?'
                )
            END AS proximal,
            CASE
                WHEN INSTR(
                    병리진단,
                    'positive distal resection margin'
                ) != 0 THEN 'DRM'
                ELSE REGEXP_SUBSTR(
                    NULLIF(
                        SUBSTR(
                            margin,
                            INSTR(margin, 'distal')
                        ),
                        ' '
                    ),
                    '[0-9]+[.]?[0-9]?'
                )
            END AS distal
        FROM(
                SELECT
                    원무접수ID,
                    환자번호,
                    검사시행일,
                    병리진단,
                    TRIM(
                        SUBSTR(margin, INSTR(margin, '\n'))
                        FROM
                            margin
                    ) AS margin
                FROM (
                        SELECT
                            원무접수ID,
                            환자번호,
                            검사시행일,
                            병리진단,
                            CASE
                                WHEN INSTR(
                                    병리진단,
                                    'clear both resection margin'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'clear both resection margin'
                                        )
                                    ),
                                    ' '
                                )
                                WHEN INSTR(
                                    병리진단,
                                    'clear borh resection margin'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'clear borh resection margin'
                                        )
                                    ),
                                    ' '
                                )
                                WHEN INSTR(
                                    병리진단,
                                    'clcear both resection margin'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'clcear both resection margin'
                                        )
                                    ),
                                    ' '
                                )
                                WHEN INSTR(
                                    병리진단,
                                    'clear resection margin'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'clear resection margin'
                                        )
                                    ),
                                    ' '
                                )
                                WHEN INSTR(
                                    병리진단,
                                    'clean both resection margin'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'clean both resection margin'
                                        )
                                    ),
                                    ' '
                                )
                                WHEN INSTR(
                                    병리진단,
                                    'clear lines of resection'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'clear lines of resection'
                                        )
                                    ),
                                    ' '
                                )
                                WHEN INSTR(
                                    병리진단,
                                    'negative both resection margin'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'negative both resection margin'
                                        )
                                    ),
                                    ' '
                                )
                                WHEN INSTR(
                                    병리진단,
                                    'negative to both resection margin'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'negative to both resection margin'
                                        )
                                    ),
                                    ' '
                                )
                                WHEN INSTR(
                                    병리진단,
                                    'negative resection margin'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'negative resection margin'
                                        )
                                    ),
                                    ' '
                                )
                                WHEN INSTR(
                                    병리진단,
                                    'positive both resection margin'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'positive both resection margin'
                                        )
                                    ),
                                    ' '
                                )
                                WHEN INSTR(
                                    병리진단,
                                    'positive distal resection margin'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'positive distal resection margin'
                                        )
                                    ),
                                    ' '
                                )
                                WHEN INSTR(
                                    병리진단,
                                    'positive proximal resection margin'
                                ) != 0 
                                THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(
                                            병리진단,
                                            'positive proximal resection margin'
                                        )
                                    ),
                                    ' '
                                )
                                
                                WHEN INSTR(병리진단, 'resection margin') != 0 THEN NULLIF(
                                    SUBSTR(
                                        병리진단,
                                        INSTR(병리진단, 'resection margin')
                                    ),
                                    ' '
                                )
                            END AS margin
                        FROM biopsy_step_01
                    ) biopsy
            ) biopsy
    ) biopsy
) biopsy