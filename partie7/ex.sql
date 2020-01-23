--ex1: Dans la table languages, supprimer toutes les lignes parlant de HTML.
DELETE FROM webDevelopment.languages WHERE languages ='HTML';

--ex2: Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.
UPDATE webDevelopment.frameworks SET frameworks = 'Symfony2'
WHERE frameworks = 'Symfony';

--ex3: Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1
UPDATE webDevelopment.languages SET version = '5.1'
WHERE version = '5' AND languages = 'JavaScript';


