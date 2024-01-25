
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