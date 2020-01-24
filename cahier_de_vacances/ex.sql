-- ex1: Afficher tout le contenu de la table regions.
SELECT * FROM `region`;

-- ex2: Afficher tous les departements de France par ordre alphabétique.
SELECT * FROM `departements`

-- ex3: Afficher toutes les villes ayant comme département le 60 en ordonnant avec le code postal.
SELECT `cp`, `ville` FROM `villes` WHERE `dep` ='60' ORDER BY `cp`;

-- ex4: Afficher les 3 premières villes ayant comme code postal "60400" et en ordonnant par ordre alphabétique.
SELECT `cp`, `ville` FROM `villes`
WHERE `cp`='60400'
ORDER BY `ville`
LIMIT 3;

-- ex5: Afficher toutes les villes contenant le mot "saint".
SELECT `ville`,`cp` FROM `villes`
WHERE `ville` LIKE '%saint%'
ORDER BY `ville`;

-- ex6: Afficher le nombre de villes par département. (Le nom des départments doit aparaitre)
SELECT `departements`.`nom_dep`, COUNT(`villes`.`ville`) AS `has_nb_ville`
FROM `departements`
INNER JOIN `villes`
ON `departements`.`dep` = `villes`.`dep`
GROUP BY `departements`.`nom_dep`
ORDER BY `departements`.`nom_dep`;

-- ex7: Afficher les villes ayant comme région "Picardie".
SELECT
	`villes`.`ville`, `regions`.`nom_region`
FROM
	`villes`
	INNER JOIN `departements` ON `villes`.`dep`=`departements`.`dep`
	INNER JOIN `regions` ON `departements`.`region`=`regions`.`region`
WHERE
	`regions`.`nom_region`='Picardie'
GROUP BY
	`villes`.`ville`
ORDER BY
	 `villes`.`ville`;

--ex8: Afficher le nombre de villes par départment et par région. (Le nom des départments et des régions doivent aparaitre).
SELECT
        `departements`.`dep`, `regions`.`nom_region`, COUNT(`villes`.`ville`) AS `nb_ville`
FROM
        `villes`
        INNER JOIN `departements` ON `villes`.`dep`=`departements`.`dep`
        INNER JOIN `regions` ON `departements`.`region`=`regions`.`region`
GROUP BY
        `villes`.`ville`
ORDER BY
         `villes`.`ville`;

