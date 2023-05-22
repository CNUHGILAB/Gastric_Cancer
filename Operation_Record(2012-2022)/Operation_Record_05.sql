SELECT
    원무접수ID,
    환자번호,
    의무기록작성일,
    진료서식ID,
    `Method`,
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
FROM(
    SELECT *,
        CASE
            WHEN 원무접수ID IN (
                SELECT 원무접수ID
                FROM operation_record_04
                WHERE 원무접수ID IN (
                    SELECT 원무접수ID
                    FROM raw_file_2012_2022.operation
                )
            )
            THEN 원무접수ID
        END AS 원무접수ID_ORRD
    FROM operation_record_04
    WHERE 진료서식ID != '332219'
) c
WHERE 원무접수ID_ORRD IS NOT NULL