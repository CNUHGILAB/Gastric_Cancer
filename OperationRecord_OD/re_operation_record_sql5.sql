SELECT
    원무접수ID,
    환자번호,
    의무기록작성일,
    진료서식ID,
    Method,
    TrocarNo5mm,
    TrocarNo10mm,
    Op,
    Other_1,
    Reconstruction,
    ReconMethod,
    Braun,
    Interposition,
    Antecolic,
    Anastomosis,
    ProxMargin,
    DistMargin,
    Co_resection,
    Co_resectionSite,
    Radicality,
    Omentectomy,
    DrainNo_O,
    DrainType_O,
    DrainNo_C,
    DrainType_C,
    Circular,
    Tubular1
FROM
    (
        SELECT
            *,
            case
                when 원무접수ID in (
                    SELECT
                        원무접수ID
                    FROM
                        re_operation_record_step_04
                    WHERE
                        원무접수ID in (
                            SELECT
                                원무접수ID
                            FROM
                                gc_raw.operation
                        )
                ) then 원무접수ID
            end as 원무접수ID_ORRD
        FROM
            re_operation_record_step_04
        WHERE
            진료서식ID != '332219'
    ) C
WHERE
    원무접수ID_ORRD IS NOT NULL