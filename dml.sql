INSERT INTO cliente VALUES ('76789890098', 'Manuella', 'Barra', 'Próximo a praia', '2008-04-25');
INSERT INTO cliente VALUES ('76759497878', 'Ramon', 'Barra', 'Próximo a praia', '2006-11-22');
INSERT INTO cliente VALUES ('76779099098', 'Marcelle', 'Barra', 'Próximo a praia', '2007-11-02');
INSERT INTO cliente VALUES ('76789890658', 'Camila', 'Barra', 'Próximo a praia', '2007-06-08');
INSERT INTO cliente VALUES ('76778790987', 'Cátia', 'Barra', 'Próximo a praia', '2008-04-09');
INSERT INTO cliente VALUES ('76789909094', 'Duda', 'Barra', 'Próximo a praia', '2007-05-25');
INSERT INTO cliente VALUES ('76789337909', 'Dilma', 'Barra', 'Próximo a praia', '2008-05-11');
INSERT INTO cliente VALUES ('76783466789', 'Pedro', 'Barra', 'Próximo a praia', '2008-10-12');
INSERT INTO cliente VALUES ('96586764533', 'João', 'Barra', 'Próximo a praia', '2002-02-25');
INSERT INTO cliente VALUES ('75444356898', 'Jesus', 'Barra', 'Próximo a praia', '2000-12-25');

UPDATE cliente SET nome='Juscelino' where telefone='96586764533';
UPDATE cliente SET nome='Fabiana' where telefone='76778790987';
UPDATE cliente SET nome='Eduarda' where telefone='76789909094';
UPDATE cliente SET nome='Dandara' where telefone='76789337909';
UPDATE cliente SET nome='Julio Cezar' where telefone='76783466789';

DELETE from cliente where telefone='96586764533';
DELETE from cliente where telefone='76783466789';

SELECT * FROM marmitex;
