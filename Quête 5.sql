-- 1. Trois véhiucles les plus autonomes disponibles
SELECT * FROM vehicule
WHERE etat = 'Disponible'
ORDER BY autonomie DESC
LIMIT 3;

-- 2. Villes avec le plus de véhicules disponibles
SELECT ville, COUNT(*)
FROM vehicule
WHERE etat = 'Disponible'
GROUP BY ville
ORDER BY COUNT(*) DESC;
LIMIT 1;

-- 3. Clients ayant au moins deux locations
SELECT id_client, COUNT(*)
FROM location
GROUP BY id_client
HAVING COUNT(*) >= 2;

-- 4. Véhicules jamais loués
SELECT vehicule.id_vehicule
FROM vehicule
LEFT JOIN location ON vehicule.id_vehicule = location.id_vehicule
WHERE location.id_location IS NULL;