SELECT
    a.환자번호 as ID,
    a.원무접수ID as CHKID,
    성별 as Sex,
    age as OP_AGE,
    `신장(cm)` as HT,
    `체중(kg)` as WT,
    `BMI(kg/m²)` as BMI,
    `주소(시,도)` as ADR_1,
    `주소(시,군,구)` as ADR_2,
    cast(
        DATEDIFF(
            STR_TO_DATE(b.`수진(진료)일`, '%%Y-%%m-%%d'),
            STR_TO_DATE(c.첫진단일, '%%Y-%%m-%%d')
        ) as char
    ) as FP,
    입원일 as OP_ADM,
    퇴원일 as OP_DISC,
    OP_Date
FROM
    (
        SELECT
            cast(환자번호 as char) as 환자번호,
            원무접수ID,
            성별,
            replace(수진당시나이, 'yrs', '') as age,
            `신장(cm)`,
            `체중(kg)`,
            `BMI(kg/m²)`,
            입원일,
            퇴원일,
            `주소(시,도)`,
            `주소(시,군,구)`
        FROM
            gc_raw.patient
        WHERE
            원무접수ID in (
                SELECT
                    DISTINCT 원무접수ID
                FROM
                    gc_raw.operation
                WHERE
                    원무접수ID in (
                        SELECT
                            DISTINCT 원무접수ID
                        FROM
                            gc_raw.operation_record
                    )
                    AND `수술 진료과코드` = 'GS'
            )
    ) a,
    (
        SELECT
            환자번호,
            max(`수진(진료)일`) as `수진(진료)일`
        FROM
            gc_raw.patient
        group by
            환자번호
    ) b,
    (
        SELECT
            환자번호,
            ICD10코드,
            min(첫진단일) as 첫진단일
        FROM
            (
                SELECT
                    원무접수ID,
                    환자번호,
                    ICD10코드,
                    첫진단일
                FROM
                    (
                        SELECT
                            원무접수ID,
                            환자번호,
                            ICD10코드,
                            instr(ICD10코드, 'C16'),
                            STR_TO_DATE (
                                case
                                    when instr(ICD10코드, 'C16') = 1 then 진단일자
                                end,
                                '%%Y-%%m-%%d'
                            ) as 첫진단일
                        FROM
                            gc_raw.diagnosis
                    ) c
                WHERE
                    첫진단일 is not null
            ) c
        group by
            환자번호
    ) c,
    (
        SELECT
            DISTINCT 원무접수ID,
            환자번호,
            수술일자 as OP_Date
        FROM
            gc_raw.operation
        WHERE
            원무접수ID in (
                SELECT
                    DISTINCT 원무접수ID
                FROM
                    gc_raw.operation_record
            )
            AND `수술 진료과코드` = 'GS'
    ) d
where
    a.환자번호 = b.환자번호
    and a.환자번호 = c.환자번호
    and a.환자번호 = d.환자번호
    and a.원무접수ID = d.원무접수ID
order by
    ID,
    OP_Date