#USER_INFO 테이블과 ONLINE_SALE 테이블에서 년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성해주세요. 결과는 년, 월, 성별을 기준으로 오름차순 정렬해주세요. 이때, 성별 정보가 없는 경우 결과에서 제외해주세요.

#USER_INFO: 가입 회원 정보 
#ONLINE_SALE: 상품 판매 정보

-- 코드를 입력하세요
SELECT YEAR(SALES_DATE) as YEAR, MONTH(SALES_DATE) as MONTH, u.GENDER, 
COUNT(DISTINCT u.USER_ID) AS USERS  
FROM USER_INFO u
Join ONLINE_SALE s
on u.USER_ID = s.USER_ID
WHERE  u.GENDER is NOT NULL
Group by YEAR, MONTH, u.GENDER 
ORDER by YEAR, MONTH, GENDER ASC