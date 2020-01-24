--ex1: Dans la table languages, afficher toutes les données de la table.
SELECT * FROM webDevelopment.languages;

--ex2: Dans la table languages, afficher toutes les versions de PHP.
SELECT version FROM webDevelopment.languages WHERE languages ='PHP';

--ex3: Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
SELECT version FROM webDevelopment.languages WHERE languages IN ('PHP','JavaScript');

--ex4: Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
SELECT * FROM `webDevelopment`.`languages` WHERE id IN (3,5,7);

--ex5: Dans la table languages,afficher les deux première entrées de JavaScript.
SELECT * FROM `webDevelopment`.`languages` WHERE `languages` ='JavaScript' LIMIT 2;

--ex6: Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP
SELECT * FROM `webDevelopment`.`languages` WHERE `language` <>'PHP';

--ex7: Dans la table languages,afficher toutes les données par ordre alphabétique.
SELECT * FROM `webDevelopment`.`languages` ORDER BY `languages` ASC;
