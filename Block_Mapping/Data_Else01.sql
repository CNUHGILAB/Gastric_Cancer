SELECT
    원무접수ID,
    환자번호,
    육_안_소_견,
    COUNT(육_안_소_견)
    병리진단,
    ELSE_병리진단
FROM data_else_00
GROUP BY 육_안_소_견
HAVING COUNT(육_안_소_견) > 1