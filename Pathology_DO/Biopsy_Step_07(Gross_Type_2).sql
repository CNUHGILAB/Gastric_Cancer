SELECT
        DISTINCT
        환자번호,
        원무접수ID,
        검사시행일,
        gross_type_o,
        gross_type,
        replace(
                concat(gross_type_int_1, '+', gross_type_int_2),
                '+0',
                ''
        ) as gross_type_int
FROM
        (
                SELECT
                        환자번호,
                        원무접수ID,
                        검사시행일,
                        gross_type_o,
                        gross_type,
                        case
                                when instr(gross_type_int_1, 'V') = 1 then replace(gross_type_int_1, 'V', '5')
                                when instr(gross_type_int_1, 'IV') != 0 then replace(gross_type_int_1, 'IV', '4')
                                when instr(gross_type_int_1, 'III') != 0 then replace(gross_type_int_1, 'III', '3')
                                when instr(gross_type_int_1, 'II') != 0 then replace(gross_type_int_1, 'II', '2')
                                when instr(gross_type_int_1, 'IIa') != 0 then replace(gross_type_int_1, 'IIa', '2a')
                                when instr(gross_type_int_1, 'IIb') != 0 then replace(gross_type_int_1, 'IIb', '2b')
                                when instr(gross_type_int_1, 'IIc') != 0 then replace(gross_type_int_1, 'IIc', '2c')
                                when instr(gross_type_int_1, 'I') != 0 then replace(gross_type_int_1, 'I', '1')
                                else gross_type_int_1
                        end as gross_type_int_1,
                        case
                                when instr(gross_type_int_2, 'V') = 1 then replace(gross_type_int_2, 'V', '5')
                                when instr(gross_type_int_2, 'IV') != 0 then replace(gross_type_int_2, 'IV', '4')
                                when instr(gross_type_int_2, 'III') != 0 then replace(gross_type_int_2, 'III', '3')
                                when instr(gross_type_int_2, 'II') != 0 then replace(gross_type_int_2, 'II', '2')
                                when instr(gross_type_int_2, 'IIa') != 0 then replace(gross_type_int_2, 'IIa', '2a')
                                when instr(gross_type_int_2, 'IIb') != 0 then replace(gross_type_int_2, 'IIb', '2b')
                                when instr(gross_type_int_2, 'IIc') != 0 then replace(gross_type_int_2, 'IIc', '2c')
                                when instr(gross_type_int_2, 'I') != 0 then replace(gross_type_int_2, 'I', '1')
                                else gross_type_int_2
                        end as gross_type_int_2
                FROM
                        (
                                SELECT
                                        원무접수ID,
                                        환자번호,
                                        검사시행일,
                                        gross_type_o,
                                        trim(gross_type) as gross_type,
                                        case
                                                when instr(gross_type_int, '+') != 0 then trim(SUBSTRING_INDEX(gross_type_int, '+', 1))
                                                when instr(gross_type_int, '-') != 0 then trim(SUBSTRING_INDEX(gross_type_int, '-', 1))
                                                else trim(gross_type_int)
                                        end as gross_type_int_1,
                                        case
                                                when instr(gross_type_int, '+') != 0 then trim(
                                                        SUBSTRING_INDEX(SUBSTRING_INDEX(gross_type_int, '+', 2), '+', -1)
                                                )
                                                when instr(gross_type_int, '-') != 0 then trim(
                                                        SUBSTRING_INDEX(SUBSTRING_INDEX(gross_type_int, '-', 2), '-', -1)
                                                )
                                                else 0
                                        end as gross_type_int_2
                                FROM
                                        (
                                                SELECT
                                                        원무접수ID,
                                                        환자번호,
                                                        검사시행일,
                                                        gross_type_o,
                                                        case
                                                                when gross_type_1 is null then gross_type_2
                                                                else replace(gross_type_1, 'AGC', 'Borrmann')
                                                        end as gross_type,
                                                        case
                                                                when nullif(gross_type_int_1, '') is null then gross_type_int_2
                                                                else gross_type_int_1
                                                        end as gross_type_int
                                                FROM
                                                        biopsy_step_06
                                        ) biopsy
                        ) biopsy
        ) biopsy