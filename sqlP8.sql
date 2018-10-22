-- Exercice 1 --
/* Affichage de tout les languages associé a leur frameworks ou non */
SELECT *
FROM `languages` AS `l`
LEFT JOIN `frameworks` AS `f` ON `l`.`id`=`f`.`languagesId`;

-- Exercice 2 --
/* Affichage de tout les frameworks assicié a leur languages */
SELECT *
FROM
  `frameworks` AS `f`, `languages` AS `l`
WHERE
  `f`.`languagesId`=`l`.`id`;
OU
SELECT *
FROM
  `frameworks` AS `f`
INNER JOIN `languages` AS `l` ON `f`.`languagesId`=`l`.`id`;

-- Exercice 3 --
/* Affichage du nombre de frameworks de PHP */
SELECT
  COUNT(*)
FROM
  `languages` AS `l`
  LEFT JOIN `frameworks` AS `f` ON `l`.`id`=`f`.`languagesId`
WHERE `l`.`name`='PHP';
OU
/* Affichage du nombre de frameworks qu'a un language */
SELECT
  `l`.`name`,
  COUNT(`languagesId`)
FROM
  `languages` AS `l`
LEFT JOIN
  `frameworks` AS `f` ON l.id = f.languagesId
GROUP BY
  `l`.`name`
HAVING COUNT(`languagesId`)>=0;

-- Exercice 4 --
/* Affichage du nombre de languages qui ont plus de 3 frameworks */
SELECT
  `l`.`name`,
   COUNT(`languagesId`)
FROM
  `languages` AS `l`
  LEFT JOIN `frameworks` AS `f` ON l.id = f.languagesId
GROUP BY
  `l`.`name`
HAVING COUNT(`languagesId`)>=3;

-- Exercice 5 --
/*  */
SELECT
`lg`.`name` AS `language`,

`fw`.`name` AS `framework`
FROM
`languages` AS `lg`
LEFT JOIN `framework` AS `fw`
ON `lg`.`id`=`fw`.`languagesId`;
