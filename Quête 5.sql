-- 1. Afficher les trois véhicules disponibles les plus autonomes
SELECT *
FROM vehicule
WHERE etat = 'Disponible'
ORDER BY autonomie_km DESC
LIMIT 3;

-- 2. Afficher la ville possédant le plus de véhicules disponibles
SELECT ville, COUNT(*) AS nb_disponibles
FROM vehicule
WHERE etat = 'Disponible'
GROUP BY ville
ORDER BY nb_disponibles DESC
LIMIT 1;

-- 3. Afficher les clients ayant effectué au moins deux locations
SELECT c.nom, c.prenom, COUNT(l.id_location) AS nb_locations
FROM client c
JOIN location l ON c.id_client = l.id_client
GROUP BY c.id_client, c.nom, c.prenom
HAVING COUNT(l.id_location) >= 2;

-- 4. Afficher les véhicules n’ayant jamais été loués
SELECT v.*
FROM vehicule v
LEFT JOIN location l ON v.id_vehicule = l.id_vehicule
WHERE l.id_vehicule IS NULL;