SELECT 
    원무접수ID,
    환자번호,
    의무기록작성일,
    진료서식ID,
    `{0}`
FROM(
        select 
            distinct
            원무접수ID,
            환자번호,
            의무기록작성일,
            진료서식ID,
            case
            when 진료서식구성원소ID = '{0}' then 의무기록내용
            end 
            as `{0}`
        FROM 
            operation_record
    )operation_record
WHERE 
    `{0}` is not null