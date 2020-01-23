--ex1: Afficher tous les frameworks associés à leurs langages. 
-- Si un langage n'a pas de framework l'afficher aussi.
SELECT * FROM languages LEFT JOIN frameworks ON languages.id = frameworks.languagesId;

--ex2: Afficher tous les frameworks associés à leurs langages. 
-- Si un langage n'a pas de framework ne pas l'afficher.
SELECT * FROM languages INNER JOIN frameworks ON languages.id = frameworks.languagesId;

--ex3: Afficher le nombre de framework qu'a un langage.
SELECT languages.name, COUNT(frameworks.name) AS has_nb_frameworks
FROM frameworks
INNER JOIN languages
ON frameworks.languagesId = languages.id
GROUP BY languages.name;

--ex4: Afficher les langages ayant plus de 3 frameworks.
SELECT languages.name, COUNT(frameworks.name) AS has_nb_frameworks
FROM frameworks
INNER JOIN languages
ON frameworks.languagesId = languages.id
GROUP BY languages.name
HAVING COUNT(frameworks.id) > 3;

