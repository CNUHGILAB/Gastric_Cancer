SELECT
    원무접수ID,
    COUNT(원무접수ID),
    환자번호,
    육_안_소_견,
    병리진단,
    ELSE_병리진단
FROM data_else_02
GROUP BY 원무접수ID
HAVING COUNT(원무접수ID) > 1