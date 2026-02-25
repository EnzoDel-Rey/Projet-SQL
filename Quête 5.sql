-- 1. Trois véhicules les plus autonomes disponibles
SELECT *
FROM vehicule
WHERE etat = 'Disponible'
ORDER BY autonomie_km DESC
LIMIT 3;

-- 2. Ville avec le plus de véhicules disponibles
SELECT ville, COUNT(*) AS total
FROM vehicule
WHERE etat = 'Disponible'
GROUP BY ville
ORDER BY total DESC
LIMIT 1;

-- 3. Clients ayant au moins 2 locations
SELECT id_client, COUNT(*) AS nombre_ville
FROM ville
GROUP BY id_client
HAVING COUNT(*) >= 2;

-- 4. Véhicules jamais loués
SELECT v.id_vehicule
FROM vehicule v
LEFT JOIN ville l 
ON v.id_vehicule = l.id_vehicule
WHERE l.id_vehicule IS NULL;