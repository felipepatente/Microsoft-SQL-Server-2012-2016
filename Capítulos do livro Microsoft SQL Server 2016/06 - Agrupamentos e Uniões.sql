INSERT INTO cadfun VALUES(1,'SILVIO DE MENESES','2','ANALISTA',200.00,'2016-08-10',1)
INSERT INTO cadfun VALUES(6,'SILVIA DA SILVA','5','ANALISTA',200.00,'2016-08-10',1)
INSERT INTO cadfun VALUES(8,'ANTONIO DA SILVA','5','GERENTE',2184.33,'2016-09-05',2)
INSERT INTO cadfun VALUES(11,'SILVANA DOS SANTOS','4','VENDEDOR',1683.00,'2016-09-07',0)
INSERT INTO cadfun VALUES(21,'EPAMINONDAS DA SILVA','4','PROGRAMADOR',1155.00,'2016-10-10',2)
INSERT INTO cadfun VALUES(10,'ANTONIA DE CARVALHO','5','SECRETARIA',2530.62,'2016-09-07',4)
INSERT INTO cadfun VALUES(12,'ANTONIO DOS SANTOS','4','PROGRAMADOR',1155.00,'2016-10-10',1)

SELECT FUNCAO, COUNT(FUNCAO) QTD_FUNCAO
FROM cadfun
GROUP BY FUNCAO
ORDER BY FUNCAO

SELECT DEPTO, SUM(SALARIO) SALARIO
FROM cadfun
GROUP BY DEPTO
ORDER BY DEPTO

SELECT DEPTO, COUNT(*)
FROM cadfun
GROUP BY DEPTO

SELECT COUNT(DISTINCT DEPTO) FROM cadfun

SELECT FUNCAO, COUNT(*) QUANTIDADE_FUNCIONARIO 
FROM cadfun
GROUP BY FUNCAO

SELECT DEPTO, SUM(SALARIO)
FROM cadfun
GROUP BY DEPTO

SELECT DEPTO, SUM(SALARIO)
FROM cadfun
WHERE DEPTO IN ('2','4')
GROUP BY DEPTO

SELECT DEPTO, COUNT(*)
FROM cadfun
GROUP BY DEPTO
ORDER BY DEPTO


SELECT DEPTO, SUM(SALARIO)
FROM cadfun
GROUP BY DEPTO
HAVING SUM(SALARIO) > 2000

INSERT INTO cadfun VALUES(14,'FELIPE A. PATENTE','2','ANALISTA',400.00,'2016-08-10',1)
INSERT INTO cadfun VALUES(15,'MARIA SILVA','5','ANALISTA',600.00,'2016-08-10',1)
INSERT INTO cadfun VALUES(16,'DANIEL ALVES','5','GERENTE',8000.33,'2016-09-05',2)
INSERT INTO cadfun VALUES(17,'LIONEL MESSI','4','VENDEDOR',9000.00,'2016-09-07',0)
INSERT INTO cadfun VALUES(18,'BRAD PITT','4','PROGRAMADOR',2000.00,'2016-10-10',2)
INSERT INTO cadfun VALUES(19,'CAMILA BELLE','5','SECRETARIA',1547.62,'2016-09-07',4)
INSERT INTO cadfun VALUES(20,'JULIO PEREIRA','4','PROGRAMADOR',2658.00,'2016-10-10',1)

INSERT INTO MORTO
SELECT CODFUN, NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS
FROM cadfun
WHERE CODFUN IN (14,15,16,17,18,19,20)

DELETE cadfun WHERE CODFUN IN (14,15,16,17,18,19,20)

SELECT *
FROM cadfun
UNION
SELECT *
FROM morto

INSERT INTO morto
SELECT CODFUN, NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS
FROM cadfun
WHERE CODFUN = 21

SELECT *
FROM cadfun
UNION ALL
SELECT *
FROM morto
