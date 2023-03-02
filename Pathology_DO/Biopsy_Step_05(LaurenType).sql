SELECT
        distinct 환자번호,
        원무접수ID,
        검사시행일,
        replace(
                replace(
                        replace(
                                concat(
                                        Intestinal,
                                        ',',
                                        Diffuse,
                                        ',',
                                        Mixed,
                                        ',',
                                        `LaurenType None`
                                ),
                                '0,',
                                ''
                        ),
                        ',0',
                        ''
                ),
                '0',
                ''
        ) as LaurenType
FROM
        (
                SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        case
                                when instr(LaurenType, 'intestinal') != 0 then 'Intestinal'
                                when instr(LaurenType, 'intestinal ed') != 0 then 'Intestinal'
                                when instr(LaurenType, 'intestinal ype') != 0 then 'Intestinal'
                                else 0
                        end as Intestinal,
                        case
                                when instr(LaurenType, 'diffuse') != 0 then 'Diffuse'
                                else 0
                        end as Diffuse,
                        case
                                when instr(LaurenType, 'mixed') != 0 then 'Mixed'
                                else 0
                        end as Mixed,
                        case
                                when nullif(LaurenType, '') is null then 'None'
                                else 0
                        end as `LaurenType None`
                FROM
                        (
                                SELECT
                                        원무접수ID,
                                        환자번호,
                                        검사시행일,
                                        case
                                                when nullif(Lauren_classification, '') is null then LaurenType_2
                                                else replace(Lauren_classification, 'type', '')
                                        end as LaurenType
                                FROM
                                        (
                                                SELECT
                                                        원무접수ID,
                                                        환자번호,
                                                        검사시행일,
                                                        Lauren_classification,
                                                        replace(
                                                                case
                                                                        when (
                                                                                CHAR_LENGTH(Early_gastric_cancer) - CHAR_LENGTH(replace(Early_gastric_cancer, ')', ''))
                                                                        ) >= 2 then case
                                                                                when (
                                                                                        CHAR_LENGTH(
                                                                                                SUBSTRING_INDEX(
                                                                                                        SUBSTRING_INDEX(Early_gastric_cancer, ')', 2),
                                                                                                        '(',
                                                                                                        -1
                                                                                                )
                                                                                        ) - CHAR_LENGTH(
                                                                                                replace(
                                                                                                        SUBSTRING_INDEX(
                                                                                                                SUBSTRING_INDEX(Early_gastric_cancer, ')', 2),
                                                                                                                '(',
                                                                                                                -1
                                                                                                        ),
                                                                                                        'type',
                                                                                                        ''
                                                                                                )
                                                                                        )
                                                                                ) >= 1 then SUBSTRING_INDEX(
                                                                                        SUBSTRING_INDEX(Early_gastric_cancer, ')', 2),
                                                                                        '(',
                                                                                        -1
                                                                                )
                                                                        end
                                                                end,
                                                                'type',
                                                                ''
                                                        ) as LaurenType_2
                                                FROM
                                                        (
                                                                SELECT
                                                                        원무접수ID,
                                                                        환자번호,
                                                                        검사시행일,
                                                                        육안소견,
                                                                        REGEXP_REPLACE(
                                                                                replace(
                                                                                        TRIM(
                                                                                                TRAILING substr(
                                                                                                        Lauren_classification,
                                                                                                        instr(Lauren_classification, '\n')
                                                                                                )
                                                                                                from
                                                                                                        Lauren_classification
                                                                                        ),
                                                                                        'Lauren classification:',
                                                                                        ''
                                                                                ),
                                                                                '[(|.|;|:]',
                                                                                ''
                                                                        ) as Lauren_classification,
                                                                        REGEXP_REPLACE(
                                                                                TRIM(
                                                                                        TRAILING substr(
                                                                                                Early_gastric_cancer,
                                                                                                instr(Early_gastric_cancer, '\n')
                                                                                        )
                                                                                        from
                                                                                                Early_gastric_cancer
                                                                                ),
                                                                                '[.|;|:]',
                                                                                ''
                                                                        ) as Early_gastric_cancer
                                                                FROM
                                                                        (
                                                                                SELECT
                                                                                        원무접수ID,
                                                                                        환자번호,
                                                                                        검사시행일,
                                                                                        병리진단,
                                                                                        육안소견,
                                                                                        substr(병리진단, instr(병리진단, 'Lauren classification')) as Lauren_classification,
                                                                                        substr(병리진단, instr(병리진단, 'Early gastric cancer')) as Early_gastric_cancer
                                                                                FROM
                                                                                        (
                                                                                                SELECT
                                                                                                        *
                                                                                                FROM
                                                                                                        biopsy_step_01
                                                                                        ) biopsy
                                                                        ) biopsy
                                                        ) biopsy
                                        ) biopsy
                        ) biopsy
        ) biopsy