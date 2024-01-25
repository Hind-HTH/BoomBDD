
----------------------------les requêtes-------------------------------

-----Alter table------
alter table etudiants add age varchar(50);

-----Drop table------
Drop table Etudiants;

-----Update------
update etudiants set nom='hind' where id = 1;

-----Delete------
DELETE FROM etudiants WHERE id= 5;

-----Group By------
select nom, prenom , count(codePostale)
from etudiants
GROUP BY codePostale;

select id_etudiants,count(notes)
from notes
where notes >90
GROUP BY notes;

----- ORDER BY------
select * from etudiants ORDER by id;

----- inner join------
select nom, prenom, notes 
from etudiants
inner JOIN notes where etudiants.id = notes.id_etudiants;

----- HAVING---comme where seuelemnt having pour sum, count, min, max---
select nom, prenom
from etudiants 
INNER join notes 
where etudiants.id= notes.id_etudiants
GROUP by nom
having sum(notes>=80);

-----UNION------
select * from prof
UNION
select * from session;


-----LIMIT------
select * from etudiants LIMIT 2;


-----DISTINCT-enlever la redandance-----
select DISTINCT prenom from etudiants;


-----LIKE--like avec %----
select * from etudiants where prenom like '%e';


-----IN------
select prenom from  etudiants where prenom in ('Alice', 'Hugo');


-----BETWEEN------
select notes from notes WHERE notes BETWEEN '85' and '95';


-----CASE------
SELECT
    etudiants.nom,
    etudiants.prenom,
    notes.notes,
    CASE
        WHEN notes.notes >= 16 THEN 'Très bien'
        WHEN notes.notes >= 14 THEN 'Bien'
        WHEN notes.notes >= 12 THEN 'Assez bien'
        WHEN notes.notes >= 10 THEN 'Passable'
        ELSE 'Insuffisant'
    END AS appreciation
FROM
    etudiants
INNER JOIN
    notes ON etudiants.id = notes.id_etudiants;


-----TRUNCATE TABLE------
TRUNCATE TABLE `notes`;


-----EXPLAIN------
EXPLAIN SELECT * FROM `etudiants`;
