CREATE INDEX indice1 ON cadfun (NOME)

ALTER TABLE cadfun ADD CPF CHAR(11)

CREATE UNIQUE INDEX indice2 ON cadfun(CPF)

UPDATE cadfun SET CPF = '10020011199' WHERE CODFUN = 1
UPDATE cadfun SET CPF = '10020011234' WHERE CODFUN = 6
UPDATE cadfun SET CPF = '10020011525' WHERE CODFUN = 8
UPDATE cadfun SET CPF = '10020011251' WHERE CODFUN = 10
UPDATE cadfun SET CPF = '10020011265' WHERE CODFUN = 11
UPDATE cadfun SET CPF = '10020011154' WHERE CODFUN = 12
UPDATE cadfun SET CPF = '10020011362' WHERE CODFUN = 20
UPDATE cadfun SET CPF = '10020011125' WHERE CODFUN = 21
UPDATE cadfun SET CPF = '10020011265' WHERE CODFUN = 22
UPDATE cadfun SET CPF = '10020011154' WHERE CODFUN = 24

INSERT INTO cadfun VALUES (50,'MARCO INACIO','2','GERENTE',2184.33,'2006-09-25',2,'1112223344')

INSERT INTO cadfun VALUES (57,'MARCO ANTONIO','2','GERENTE',2184.33,'2006-09-25',2,'10020011154')


CREATE INDEX indice3 ON cadfun

ALTER TABLE morto ADD CPF CHAR(11)



CREATE DATABASE curso

USE curso

CREATE TABLE cadpro(
	CODPROP INT NOT NULL PRIMARY KEY,
	NOMEPRO VARCHAR(40) NOT NULL,
	CPF CHAR(11) NOT NULL UNIQUE
)

CREATE TABLE caddis(
	CODDIS CHAR(6) NOT NULL,
	NOMEDIS VARCHAR(40) NOT NULL,
	CODPROF INT NOT NULL FOREIGN KEY REFERENCES cadpro (CODPROP) ON DELETE NO ACTION
																 ON UPDATE NO ACTION
)

INSERT INTO cadpro VALUES(100,'SILVANA SOUZA','11122233399')
INSERT INTO cadpro VALUES(120,'RENATO DE ABREU','11122244477')
INSERT INTO cadpro VALUES(110,'JOSE PAULO SILVA','11122244488')
INSERT INTO cadpro VALUES(130,'PENELOPE DA SILVA','11122255566')
INSERT INTO cadpro VALUES(140,'JULIANA DE ALBUQUERQUE','11122266655')
INSERT INTO cadpro VALUES(150,'CARLOS MUNHOZ DA SILVA','11122277744')


INSERT INTO caddis VALUES('CG-100','MATEMATICA',100)
INSERT INTO caddis VALUES('CG-200','PORTUGUES',110)
INSERT INTO caddis VALUES('TI-100','ALGORITMOS',120)
INSERT INTO caddis VALUES('TI-205','LINGUAGEM DE PROGRAMACAO II',130)
INSERT INTO caddis VALUES('TI-400','SISTEMAS OPERACIONAIS',140)
INSERT INTO caddis VALUES('CG-100','MATEMATICA',150)
INSERT INTO caddis VALUES('CG-110','FISICA',100)
INSERT INTO caddis VALUES('CG-300','FILOSOFIA',110)
INSERT INTO caddis VALUES('TI-200','LINGUAGEM DE PROGRAMACAO I',120)
INSERT INTO caddis VALUES('TI-300','BANCO DE DADOS',130)
INSERT INTO caddis VALUES('TI-500','PROGRAMACAO WEB',140)
INSERT INTO caddis VALUES('CG-300','FILOSOFIA',150)


SELECT * FROM caddis
SELECT * FROM cadpro