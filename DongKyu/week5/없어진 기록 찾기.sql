-- 코드를 입력하세요
SELECT O.ANIMAL_ID, O.NAME
FROM ANIMAL_INS I RIGHT JOIN ANIMAL_OUTS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE NOT EXISTS(SELECT 1 FROM ANIMAL_OUTS WHERE ANIMAL_ID = I.ANIMAL_ID)
