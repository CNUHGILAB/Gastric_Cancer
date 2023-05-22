SELECT 
    원무접수ID,
    환자번호,
    의무기록작성일,
    진료서식ID,
    `{0}`
FROM(
    SELECT 
        DISTINCT 원무접수ID,
        환자번호,
        의무기록작성일,
        진료서식ID,
        CASE
            WHEN 진료서식구성원소ID = '{0}'
            THEN 의무기록내용
        END AS `{0}`
    FROM( 
        SELECT
            원무접수ID,
            환자번호,
            의무기록작성일,
            진료서식ID,
            CASE
                WHEN 진료서식구성원소ID = '{1}'
                THEN REPLACE(진료서식구성원소ID, '{1}', '{0}')
                ELSE 진료서식구성원소ID
            END AS 진료서식구성원소ID,
            CASE
                WHEN 진료서식구성원소ID = '{1}'
                THEN REPLACE(REPLACE(의무기록내용, '{2}', 0), '{3}', 1)
                ELSE 의무기록내용
            END AS 의무기록내용
        FROM operation_record
    ) operation_record
) operation_record
WHERE `{0}` IS NOT NULL