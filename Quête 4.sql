-- 1. Nombre total de véhicules
SELECT COUNT(*) FROM vehicule;

-- 2. Nombre de véhicules par ville
SELECT ville, COUNT(*)
FROM vehicule
GROUP BY ville;

-- 3. Autonomie moyenne
SELECT AVG(autonomie)
FROM vehicule;

-- 4. Nombre de locations par client
SELECT id_client, COUNT(*)
FROM location
GROUP BY id_client;