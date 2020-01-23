--ex1: Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).
ALTER TABLE webDevelopment.languages ADD versions VARCHAR(255);

--ex2: Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).
ALTER TABLE webDevelopment.languages ADD frameworks VARCHAR(255);

--ex3: Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.
ALTER TABLE webDevelopment.languages CHANGE versions version VARCHAR(255);

--ex4: Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.
ALTER TABLE webDevelopment.frameworks CHANGE name frameworks VARCHAR(255);

--ex5: Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.
ALTER TABLE webDevelopment.frameworks MODIFY frameworks VARCHAR(10);

--ex6: Dans la base codex, dans la table clients :
    -- supprimer la colonne secondPhoneNumber
    -- renommer la colonne firstPhoneNumber en phoneNumber
    -- changer le type de la colonne phoneNumber en VARCHAR
    -- ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
ALTER TABLE codex.clients DROP secondPhoneNumber;
ALTER TABLE codex.clients CHANGE firstPhoneNumber phoneNumber VARCHAR(13);
ALTER TABLE codex.clients MODIFY phoneNumber VARCHAR(13);
ALTER TABLE codex.clients ADD (test1 VARCHAR(255), test2 VARCHAR(255));
