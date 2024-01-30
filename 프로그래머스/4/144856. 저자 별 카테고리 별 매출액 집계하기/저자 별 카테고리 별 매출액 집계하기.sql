#2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력하는 SQL문을 작성해주세요.
#결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬해주세요.
-- 코드를 입력하세요



SELECT a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, sum(s.sales * b.price) as TOTAL_SALES FROM BOOK b
JOIN AUTHOR a
ON a.AUTHOR_ID = b.AUTHOR_ID
JOIN BOOK_SALES s
ON b.BOOK_ID = s.BOOK_ID
WHERE s.sales_date LIKE "%2022-01%"
GROUP by a.AUTHOR_NAME, b.CATEGORY
ORDER by a.AUTHOR_ID ASC, b.CATEGORY DESC