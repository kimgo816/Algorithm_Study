SELECT COUNT(ID) AS FISH_COUNT
FROM FISH_INFO
WHERE SUBSTR(TIME,1,4) = '2021'
