SELECT
        환자번호,
        원무접수ID,
        검사시행일,
        pTNM_VER,
        pT,
        pN,
        pM,
        case
                when (
                        pT = 'T1'
                        or pT = 'T1a'
                        or pT = 'T1b'
                )
                and pN = 'N0'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IA'
                when pT = 'T2'
                and pN = 'N0'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IB'
                when (
                        pT = 'T1'
                        or pT = 'T1a'
                        or pT = 'T1b'
                )
                and pN = 'N1'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IB'
                when pT = 'T3'
                and pN = 'N0'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIA'
                when pT = 'T2'
                and pN = 'N1'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIA'
                when (
                        pT = 'T1'
                        or pT = 'T1a'
                        or pT = 'T1b'
                )
                and pN = 'N2'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIA'
                when pT = 'T4a'
                and pN = 'N0'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIB'
                when pT = 'T3'
                and pN = 'N1'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIB'
                when pT = 'T2'
                and pN = 'N2'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIB'
                when (
                        pT = 'T1'
                        or pT = 'T1a'
                        or pT = 'T1b'
                )
                and pN = 'N3a'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIB'
                when (
                        pT = 'T1'
                        or pT = 'T1a'
                        or pT = 'T1b'
                )
                and pN = 'N3b'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIB'
                when pT = 'T4a'
                and pN = 'N1'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIA'
                when pT = 'T3'
                and pN = 'N2'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIA'
                when pT = 'T2'
                and pN = 'N3a'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIA'
                when pT = 'T2'
                and pN = 'N3b'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIA'
                when pT = 'T4b'
                and (
                        pN = 'NO'
                        or pN = 'N0'
                        or pN = 'N1'
                )
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIB'
                when pT = 'T4a'
                and pN = 'N2'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIB'
                when pT = 'T3'
                and pN = 'N3a'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIB'
                when pT = 'T3'
                and pN = 'N3b'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIB'
                when pT = 'T4b'
                and (
                        pN = 'N2'
                        or pN = 'N3a'
                )
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIC'
                when pT = 'T4b'
                and (
                        pN = 'N2'
                        or pN = 'N3b'
                )
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIC'
                when pT = 'T4a'
                and pN = 'N3a'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIC'
                when pT = 'T4a'
                and pN = 'N3b'
                and (
                        pM = 'M0'
                        or pM = 'Mx'
                ) then 'IIIC'
                when (
                        pT != 'Tx'
                        or pT != 'None'
                        or pT != null
                )
                and (
                        pN != 'Nx'
                        or pN != 'None'
                        or pN != null
                )
                and pM = 'M1' then 'IV'
        end as Staing,
        pTNM_Comment
FROM
        (
                SELECT
                        원무접수ID,
                        환자번호,
                        검사시행일,
                        case
                                when instr(pT, 'x') != 0 then 'Tx'
                                when instr(pT, '1a') != 0 then 'T1a'
                                when instr(pT, '1b') != 0 then 'T1b'
                                when instr(pT, '2') != 0 then 'T2'
                                when instr(pT, '3') != 0 then 'T3'
                                when instr(pT, '4a') != 0 then 'T4a'
                                when instr(pT, '4b') != 0 then 'T4b'
                                when nullif(pT, '') is null then NULL
                        end as pT,
                        case
                                when instr(pN, 'x') != 0 then 'Nx'
                                when instr(pN, '0') != 0 then 'N0'
                                when instr(pN, '1') != 0 then 'N1'
                                when instr(pN, '2') != 0 then 'N2'
                                when instr(pN, '3a') != 0 then 'N3a'
                                when instr(pN, '3b') != 0 then 'N3b'
                                when nullif(pN, '') is null then 'None'
                        end as pN,
                        case
                                when instr(pM, 'x') != 0 then 'Mx'
                                when instr(pM, '0') != 0 then 'M0'
                                when instr(pM, '1') != 0 then 'M1'
                                when nullif(pM, '') is null then 'None'
                        end as pM,
                        pTNM_Comment,
                        pTNM_VER
                FROM
                        (
                                SELECT
                                        원무접수ID,
                                        환자번호,
                                        검사시행일,
                                        pTNM_VER,
                                        replace(
                                                replace(
                                                        substr(
                                                                pT,
                                                                instr(pT, 'pT') + 2,
                                                                (instr(pT, 'N') -1) -(instr(pT, 'pT') + 1)
                                                        ),
                                                        ',',
                                                        ''
                                                ),
                                                'p',
                                                ''
                                        ) as pT,
                                        replace(
                                                substr(
                                                        pT,
                                                        instr(pT, 'N') + 1,
                                                        (instr(pT, 'M') -1) -(instr(pT, 'N'))
                                                ),
                                                ',',
                                                ''
                                        ) as pN,
                                        replace(substr(pT, instr(pT, 'M') + 1, 1), ',', '') as pM,
                                        `Comment` as pTNM_Comment
                                FROM
                                        biopsy_step_14
                        ) biopsy
        ) biopsy