SELECT
    환자번호 as ID,
    원무접수ID as Checkin,
    Test_Date,
    TumorLesion,
    TumorLocation,
    case
        when instr(TumorLocation, ',') != 0 then 'Large lesion'
    end as TumorLocation_1,
    TumorCircumference,
    TumorSize,
    Histology,
    LaurenType,
    DIFF,
    DIFF_MIX,
    GrossType,
    HER2,
    p53,
    EBV,
    MSI_Test,
    pT,
    pN,
    pM,
    Staing,
    metLN,
    harvLN,
    LVI,
    PNI,
    pProxMargin,
    pDistMargin,
    pSafeMargin
FROM
    (
        SELECT
            환자번호,
            원무접수ID,
            STR_TO_DATE(검사시행일, '%%Y-%%m-%%d') as Test_Date,
            TumorLocation_2 as TumorLesion,
            TumorLocation,
            TumorCircumference,
            TumorSize,
            histologic_type as Histology,
            LaurenType,
            concat(gross_type, ' ', gross_type_int) as GrossType,
            case
                when instr(HER2, '+') != 0 then 'Pos'
                when instr(HER2, '-') != 0 then 'Neg'
                when nullif(HER2, '') is null then 'None'
            end as HER2,
            case
                when instr(p53, '+') != 0 then 'Pos'
                when nullif(p53_p, '') is not null then 'Pos'
                when instr(p53, '-') != 0 then 'Neg'
                when nullif(p53, '') is null then 'None'
            end as p53,
            case
                when instr(EBV, '+') != 0 then 'Pos'
                when instr(EBV, '-') != 0 then 'Neg'
                when nullif(EBV, '') is null then 'None'
            end as EBV,
            case
                when (MSI_Test = 'MSS') = 1 then 'Neg(MSS)'
                when (MSI_Test = 'MSI') = 1 then 'Pos(MSI)'
                else 'None'
            end MSI_Test,
            pT,
            pN,
            pM,
            Staing,
            metLN,
            harvLN,
            LVI,
            PNI,
            pProxMargin,
            pDistMargin,
            case
                when nullif(pProxMargin, '') is null
                and nullif(pDistMargin, '') is null then 'No'
                when pProxMargin is not null
                and nullif(pDistMargin, '') is null then 'No'
                when nullif(pProxMargin, '') is null
                and pDistMargin is not null then 'No'
                when pProxMargin is not null
                and pDistMargin is not null then 'Yes'
            end as pSafeMargin,
            case
            when diff_maj = 'well' then 'WD'
            when diff_maj = 'moderately' then 'MD'
            when diff_maj = 'poorly' then 'PD'
            end as DIFF,
            case 
            when diff_num = 2 then 'Yes'
            else 'No'
            end as DIFF_MIX
        FROM pathological_test
        WHERE(
            환자번호 IN (
                SELECT
                    환자번호
                FROM raw_file_2012_2022.operation
                WHERE(
                    환자번호 IN (
                        SELECT
                            DISTINCT 환자번호
                        FROM raw_file_2012_2022.operation_record
                    )
                )
            )
        )
    ) c