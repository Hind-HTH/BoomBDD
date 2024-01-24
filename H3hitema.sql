Create database h3hitema;

use h3hitema;

Create table Session(
    id int primary key  AUTO_INCREMENT,
    niveau varchar(50),
    spécialité varchar(50)
)ENGINE=InnoDB;

create table Prof(
    id int primary key AUTO_INCREMENT,
    nom varchar(50),
    prenom varchar(50)
)ENGINE=InnoDB;

create table Salle(
    id int primary key AUTO_INCREMENT,
    étage varchar(50),
    numero_classe int
)ENGINE=InnoDB;

CREATE TABLE Cours (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom_cours VARCHAR(50),
    id_prof INT,
    id_salle INT,
    FOREIGN KEY (id_prof) REFERENCES Prof(id) ON DELETE CASCADE,
    FOREIGN KEY (id_salle) REFERENCES Salle(id) ON DELETE CASCADE
)ENGINE=InnoDB;


create table evaluation(
    id int primary key AUTO_INCREMENT,
    nom varchar(50)
)ENGINE=InnoDB;

create table Etudiants(
    id int primary key AUTO_INCREMENT,
    nom varchar(50),
    prenom varchar(50),
    email varchar(50),
    mdp varchar(50),
    telephone varchar(50),
    adresse varchar(50),
    ville varchar(50),
    codePostale varchar(50),
    id_session int,
    foreign key (id_session) references Session(id) ON DELETE CASCADE
)ENGINE=InnoDB;

create table Notes(
    notes int,
    id_etudiants int,
    id_evaluation int,
    primary key (id_etudiants, id_evaluation),
    foreign key (id_etudiants) references Etudiants(id) ON DELETE CASCADE,
    foreign key (id_evaluation) references Evaluation(id) ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE `Suivre` (
  `id_etudiants` int(11) NOT NULL,
  `id_cours` int(11) NOT NULL,
  PRIMARY KEY (`id_etudiants`, `id_cours`),
  FOREIGN KEY (`id_etudiants`) REFERENCES `Etudiants` (`id`) ON DELETE CASCADE,
  FOREIGN KEY (`id_cours`) REFERENCES `Cours` (`id`) ON DELETE CASCADE
)ENGINE=InnoDB;


INSERT INTO Session (niveau, spécialité) VALUES ('Bachelor', 'Informatique');
INSERT INTO Session (niveau, spécialité) VALUES ('Master', 'Génie logiciel');
INSERT INTO Session (niveau, spécialité) VALUES ('Licence', 'Réseaux et télécommunications');
INSERT INTO Session (niveau, spécialité) VALUES ('Doctorat', 'Intelligence artificielle');
INSERT INTO Session (niveau, spécialité) VALUES ('Master', 'Systèmes embarqués');


INSERT INTO Prof (nom, prenom) VALUES ('Dupont', 'Jean');
INSERT INTO Prof (nom, prenom) VALUES ('Martin', 'Sophie');
INSERT INTO Prof (nom, prenom) VALUES ('Lefevre', 'Pierre');
INSERT INTO Prof (nom, prenom) VALUES ('Girard', 'Isabelle');
INSERT INTO Prof (nom, prenom) VALUES ('Dufour', 'Michel');


INSERT INTO Salle (étage, numero_classe) VALUES ('1st Floor', 101);
INSERT INTO Salle (étage, numero_classe) VALUES ('2nd Floor', 202);
INSERT INTO Salle (étage, numero_classe) VALUES ('3rd Floor', 303);
INSERT INTO Salle (étage, numero_classe) VALUES ('Ground Floor', 102);
INSERT INTO Salle (étage, numero_classe) VALUES ('4th Floor', 404);


INSERT INTO Cours (nom_cours, id_prof, id_salle) VALUES ('Algorithmique', 1, 1);
INSERT INTO Cours (nom_cours, id_prof, id_salle) VALUES ('Bases de données', 2, 2);
INSERT INTO Cours (nom_cours, id_prof, id_salle) VALUES ('Réseaux', 3, 3);
INSERT INTO Cours (nom_cours, id_prof, id_salle) VALUES ('Intelligence artificielle', 4, 4);
INSERT INTO Cours (nom_cours, id_prof, id_salle) VALUES ('Systèmes embarqués', 5, 5);


INSERT INTO evaluation (nom) VALUES ('Examen final');
INSERT INTO evaluation (nom) VALUES ('Devoir surveillé');
INSERT INTO evaluation (nom) VALUES ('Projet pratique');
INSERT INTO evaluation (nom) VALUES ('QCM');
INSERT INTO evaluation (nom) VALUES ('Présentation orale');


INSERT INTO Etudiants (nom, prenom, email, mdp, telephone, adresse, ville, codePostale, id_session) VALUES 
('Dubois', 'Alice', 'alice.dubois@example.com', 'password123', '123456789', '123 Main St', 'Paris', '75001', 1);

INSERT INTO Etudiants (nom, prenom, email, mdp, telephone, adresse, ville, codePostale, id_session) VALUES 
('Moreau', 'Luc', 'luc.moreau@example.com', 'securepass', '987654321', '456 Oak St', 'Lyon', '69001', 2);

INSERT INTO Etudiants (nom, prenom, email, mdp, telephone, adresse, ville, codePostale, id_session) VALUES 
('Lefevre', 'Emma', 'emma.lefevre@example.com', 'pass123', '654321987', '789 Pine St', 'Marseille', '13001', 3);

INSERT INTO Etudiants (nom, prenom, email, mdp, telephone, adresse, ville, codePostale, id_session) VALUES 
('Girard', 'Hugo', 'hugo.girard@example.com', 'mysecretpass', '123789456', '101 Elm St', 'Toulouse', '31000', 4);

INSERT INTO Etudiants (nom, prenom, email, mdp, telephone, adresse, ville, codePostale, id_session) VALUES 
('Dufour', 'Julie', 'julie.dufour@example.com', 'passpass', '789123456', '202 Maple St', 'Nice', '06000', 5);




INSERT INTO Notes (notes, id_etudiants, id_evaluation) VALUES (85, 1, 1);
INSERT INTO Notes (notes, id_etudiants, id_evaluation) VALUES (92, 2, 2);
INSERT INTO Notes (notes, id_etudiants, id_evaluation) VALUES (78, 3, 3);
INSERT INTO Notes (notes, id_etudiants, id_evaluation) VALUES (95, 4, 4);
INSERT INTO Notes (notes, id_etudiants, id_evaluation) VALUES (88, 5, 5);


INSERT INTO Suivre (id_etudiants, id_cours) VALUES (1, 1);
INSERT INTO Suivre (id_etudiants, id_cours) VALUES (2, 2);
INSERT INTO Suivre (id_etudiants, id_cours) VALUES (3, 3);
INSERT INTO Suivre (id_etudiants, id_cours) VALUES (4, 4);
INSERT INTO Suivre (id_etudiants, id_cours) VALUES (5, 5);



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

-- Objectifs supplementaire

-- TRANSACTION
START TRANSACTION;
SELECT * FROM etudiants;
INSERT INTO etudiants ( nom, prenom, email, mdp, telephone, adresse, ville, codePostale, id_session)
VALUES ('Ali', 'jes', 'jes.ali1@example.com', 'xxxx', '0923344565544', 'aaaaaa', 'paris', '33092', 3);
IF( SELECT COUNT(*) FROM etudiants ) = 4 THEN 
  COMMIT;
ELSE 
  ROLLBACK;
END IF;
SELECT * FROM etudiants;


-- VIEW
CREATE VIEW getAllStudent AS SELECT * FROM etudiants;
SELECT nom FROM getAllStudent