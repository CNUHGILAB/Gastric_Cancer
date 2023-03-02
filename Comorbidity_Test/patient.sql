SELECT
    환자번호 as ID,
    수술일자 as OpDate
FROM
    gc_raw_test.operation
WHERE
    원무접수ID in
    (
        SELECT
            distinct
            원무접수ID
        FROM
            gc_raw_test.operation_record
    )
    and ICD9CM코드 != '54.11'
order by ID asc