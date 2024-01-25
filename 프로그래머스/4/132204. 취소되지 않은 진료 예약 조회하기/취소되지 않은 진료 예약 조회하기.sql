#PATIENT, DOCTOR 그리고 APPOINTMENT 테이블에서 2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회하는 SQL문을 작성해주세요. 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시 항목이 출력되도록 작성해주세요. 결과는 진료예약일시를 기준으로 오름차순 정렬해주세요.
-- 코드를 입력하세요
-- APNT_CNCL_YMD(예약취소날짜), APNT_YMD(진료 예약일시)
-- 2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역
-- 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시 항목이 출력
-- 결과는 진료예약일시를 기준으로 오름차순 정렬
SELECT
    a.APNT_NO,
    p.PT_NAME,
    p.PT_NO,
    a.MCDP_CD,
    d.DR_NAME,
    a.APNT_YMD
FROM APPOINTMENT AS a
INNER JOIN PATIENT AS p
ON p.PT_NO = a.PT_NO
INNER JOIN DOCTOR  AS d
ON d.DR_ID = a.MDDR_ID
WHERE date_format(a.APNT_YMD,'%Y-%m-%d') = '2022-04-13'
AND a.APNT_CNCL_YMD is null
AND a.APNT_CNCL_YN = 'N'
ORDER BY a.APNT_YMD ASC

