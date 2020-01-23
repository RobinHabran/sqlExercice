--ex1: Dans la base de données webDevelopment, créer la table languages avec les colonnes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- language (type VARCHAR)
CREATE TABLE webDevelopment.languages (
         id INT(30) AUTO_INCREMENT,
         languages VARCHAR(30),
         PRIMARY KEY(id)
         );


--ex2: Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- tool (type VARCHAR)
CREATE TABLE webDevelopment.tools (
         id INT(30) AUTO_INCREMENT,
         tools VARCHAR(30),
         PRIMARY KEY(id)
         );

--ex3: Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
   -- id (type INT, auto-incrémenté, clé primaire)
   -- name (type VARCHAR)
CREATE TABLE webDevelopment.frameworks (
         id INT(30) NOT NULL AUTO_INCREMENT,
         frameworks VARCHAR(30),
         PRIMARY KEY(id)
         );

--ex4: Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- library (type VARCHAR)
CREATE TABLE webDevelopment.libraries (
         id INT(30) NOT NULL AUTO_INCREMENT,
         libraries VARCHAR(255),
         PRIMARY KEY(id)
         );

--ex5: Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- ideName (type VARCHAR)
CREATE TABLE webDevelopment.ide (
         id INT(30) NOT NULL AUTO_INCREMENT,
         ide VARCHAR(255),
         PRIMARY KEY(id)
         );

--ex6: Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- name (type VARCHAR)
CREATE TABLE IF NOT EXISTS webDevelopment.frameworks (
         id INT(30) NOT NULL AUTO_INCREMENT,
         frameworks VARCHAR(255),
         PRIMARY KEY(id)
         );

--ex7: Supprimer la table tools si elle existe.
DROP TABLE IF EXISTS webDevelopment.tools;

--ex8: Supprimer la table libraries
DROP TABLE IF EXISTS webDevelopment.libraries;

--ex9: Supprimer la table ide
DROP TABLE IF EXISTS webDevelopment.ide;

--ex10: Créer la base codex. Y créer une table clients qui aura comme colonnes :
CREATE DATABASE codex;
CREATE TABLE codex.clients (
        id INT(30) NOT NULL AUTO_INCREMENT,
        lastname VARCHAR(255),
	firstname VARCHAR(255),
	birthDate DATETIME,
	adress VARCHAR(255),
	firstPhoneNumber INT(13),
	secondPhoneNumber INT(13),
	mail VARCHAR(255),
        PRIMARY KEY(id)
        );

