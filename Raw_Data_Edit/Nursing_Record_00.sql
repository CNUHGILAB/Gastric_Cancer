SELECT
    원무접수ID,
    환자번호,
    환자명,
    성별,
    생년월일,
    `[진술문]간호기록부서` AS `[간호기록]간호기록부서`,
    `[진술문]기록작성일시` AS `[간호기록]기록작성일시`,
    `간호진술문 타입` AS 기록종류명,
    간호진술문명 AS `간호항목/진술문명`,
    Entity,
    `Attribute`,
    `Value`,
    `Ent:Atr:항목`
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(원무접수ID, '') IS NOT NULL
            THEN NULL
            ELSE NULL
        END AS `Ent:Atr:항목`
    FROM raw_file_2012_2022.nursing_record_2
) nursing_record