SELECT
    원무접수ID,
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
            원무접수ID,
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
            Tubular1,
            max(count)
        FROM
            (
                SELECT
                    *,
                    (
                        case
                            when Method is not null then 1
                            else 0
                        end + case
                            when TrocarNo5mm is not null then 1
                            else 0
                        end + case
                            when TrocarNo10mm is not null then 1
                            else 0
                        end + case
                            when Op is not null then 1
                            else 0
                        end + case
                            when Other_1 is not null then 1
                            else 0
                        end + case
                            when Reconstruction is not null then 1
                            else 0
                        end + case
                            when ReconMethod is not null then 1
                            else 0
                        end + case
                            when Braun is not null then 1
                            else 0
                        end + case
                            when Interposition is not null then 1
                            else 0
                        end + case
                            when Antecolic is not null then 1
                            else 0
                        end + case
                            when Anastomosis is not null then 1
                            else 0
                        end + case
                            when ProxMargin is not null then 1
                            else 0
                        end + case
                            when DistMargin is not null then 1
                            else 0
                        end + case
                            when Co_resection is not null then 1
                            else 0
                        end + case
                            when Co_resectionSite is not null then 1
                            else 0
                        end + case
                            when Radicality is not null then 1
                            else 0
                        end + case
                            when Omentectomy is not null then 1
                            else 0
                        end + case
                            when DrainNo_O is not null then 1
                            else 0
                        end + case
                            when DrainType_O is not null then 1
                            else 0
                        end + case
                            when DrainNo_C is not null then 1
                            else 0
                        end + case
                            when DrainType_C is not null then 1
                            else 0
                        end + case
                            when Circular is not null then 1
                            else 0
                        end + case
                            when Tubular1 is not null then 1
                            else 0
                        end
                    ) as `count`
                FROM
                    (
                        SELECT
                            *,
                            case
                                when 원무접수ID in (
                                    SELECT
                                        원무접수ID
                                    FROM
                                        gc_protocol.or_r
                                    WHERE
                                        원무접수ID in (
                                            SELECT
                                                원무접수ID
                                            FROM
                                                gc_row.operation
                                        )
                                        and 진료서식ID != '332219'
                                    group by
                                        원무접수ID
                                    having
                                        count(*) > 1
                                ) then 원무접수ID
                            end as 원무접수ID_ORRD
                        FROM
                            gc_protocol.or_r
                    ) C
                WHERE
                    원무접수ID_ORRD IS not NULL
            ) c
        group by
            원무접수ID
    ) c