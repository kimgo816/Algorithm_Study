SELECT I.ANIMAL_ID , I.NAME
FROM ANIMAL_INS I
LEFT JOIN ANIMAL_OUTS O
ON I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY DATEDIFF(O.DATETIME,IFNULL(I.DATETIME,0))+1 DESC
LIMIT 2;
