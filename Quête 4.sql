-- 1. Afficher le nombre total de véhicules
SELECT COUNT(*) AS total_vehicules
FROM vehicule;

-- 2. Afficher le nombre de véhicules par ville
SELECT ville, COUNT(*) AS nb_vehicules
FROM vehicule
GROUP BY ville;

-- 3. Afficher l’autonomie moyenne des véhicules
SELECT AVG(autonomie_km) AS autonomie_moyenne
FROM vehicule;

-- 4. Afficher le nombre de locations effectuées par client
SELECT c.nom, c.prenom, COUNT(l.id_location) AS nb_locations
FROM client c
LEFT JOIN location l ON c.id_client = l.id_client
GROUP BY c.id_client, c.nom, c.prenom;