#MEMBER_PROFILE와 REST_REVIEW 테이블에서 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회하는 SQL문을 작성해주세요. 
#회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력되도록 작성해주시고, 
#결과는 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순 정렬해주세요.
-- 코드를 입력하세요

WITH most AS(
    SELECT MEMBER_ID, COUNT(MEMBER_ID) as AMOUNT
    FROM REST_REVIEW
    GROUP BY MEMBER_ID
    ORDER BY AMOUNT DESC
    LIMIT 1
    )

SELECT MEMBER_NAME, Rr.REVIEW_TEXT, DATE_FORMAT(Rr.REVIEW_DATE,'%Y-%m-%d') AS REVIEW_DATE
FROM REST_REVIEW as Rr
JOIN MEMBER_PROFILE as Mp
ON Mp.MEMBER_ID = Rr.MEMBER_ID
WHERE Rr.MEMBER_ID = (SELECT MEMBER_ID FROM most)
ORDER BY REVIEW_DATE ASC, REVIEW_TEXT ASC