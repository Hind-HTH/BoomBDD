
----------------------------les requêtes-------------------------------

-----Alter table: pour réaliser une modification sur une table ------
alter table etudiants add age varchar(50);


-----Drop table: supprission définitve de la table------
Drop table Etudiants;


-----Update : mettre à jour la table (modifcation sur un donner)------
update etudiants set nom='hind' where id = 1;


-----Delete: supprission des données de la table selon une condition ou pas(pour les lignes de la table)------
DELETE FROM etudiants WHERE id= 5;


-----Group By :  pour regrouper les lignes d'une table en fonction des valeurs d'une ou plusieurs colonnes, et elle est utilisé avec (COUNT, SUM, AVG, MAX..)------
select nom, prenom , count(codePostale)
from etudiants
GROUP BY codePostale;

select id_etudiants,count(notes) as nombre
from notes
where notes >90
GROUP BY notes;

----- ORDER BY:  pour trier les données sur une ou plusieurs colonnes, par ordre ascendant ou descendant. ------
select id,nom,prenom from etudiants ORDER by id DESC;

----- inner join: pour lieer plusieurs tables ------
select nom, prenom, notes 
from etudiants
inner JOIN notes where etudiants.id = notes.id_etudiants;

----- HAVING---comme where, seuelemnt having pour sum, count, min, max---
select nom, prenom,count(notes) as resultat
from etudiants 
INNER join notes 
where etudiants.id= notes.id_etudiants
GROUP by notes.notes
having sum(notes>=80);

-----UNION: réaliser deux requettes défirents(deux actions deffirents) qu'ils sont concatiné, mais avec "select"------

SELECT nom, prenom FROM Prof
UNION
SELECT nom, prenom FROM Etudiants;



-----LIMIT: pour mettre le nombre max de resultat qu'on veut avoir------
select * from etudiants LIMIT 2;


-----DISTINCT: enlever la redandance(la repition)-----
select DISTINCT prenom from etudiants;


-----LIKE--like avec %....pour chercher par rapport ce qu'il y a avant ou apres %----
select * from etudiants where prenom like '%e';


-----IN: chercher des données specifique dans une données------
select prenom from  etudiants where prenom in ('Alice', 'Hugo');


-----BETWEEN: pour mettre un intervale------
select notes from notes WHERE notes BETWEEN '85' and '95';


-----CASE: pour obtenir une resultat parmi plusierus cas de possibilité------
SELECT
    etudiants.nom,
    etudiants.prenom,
    notes.notes,
    CASE
        WHEN notes.notes >= 95 THEN 'Très bien'
        WHEN notes.notes >=80 THEN 'Bien'
        WHEN notes.notes >= 70 THEN 'Assez bien'
        WHEN notes.notes >= 50 THEN 'Passable'
        ELSE 'Insuffisant'
    END AS appreciation
FROM
    etudiants
INNER JOIN
    notes ON etudiants.id = notes.id_etudiants;


-----TRUNCATE TABLE: pareil que delete------
TRUNCATE TABLE `notes`;


-----EXPLAIN: avoir plus de explication sur une table------
EXPLAIN SELECT * FROM `etudiants`;
