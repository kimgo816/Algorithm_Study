SELECT B.CATEGORY, SUM(S.SALES) AS SALES
FROM BOOK_SALES S
JOIN BOOK B
ON S.BOOK_ID = B.BOOK_ID
WHERE SUBSTR(S.SALES_DATE,1,7) = '2022-01'
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY
