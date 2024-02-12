-- 코드를 입력하세요
SELECT CART_ID
    FROM (
    select CART_ID , group_concat(NAME) AS NAME
    from CART_PRODUCTS 
    WHERE NAME IN ('Yogurt' , 'MILK')
    group by CART_ID ) temp
WHERE NAME LIKE '%Yogurt%' AND NAME LIKE '%MILK%'

