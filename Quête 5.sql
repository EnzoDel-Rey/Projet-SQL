-- 1. Trois véhicules les plus autonomes disponibles

SELECT *
FROM vehicule
WHERE etat = 'Disponible'
ORDER BY autonomie_km DESC
LIMIT 3;

-- 2. Ville avec le plus de véhicules disponibles

SELECT localisation, COUNT(*) AS nombres_vehicules
FROM vehicule
WHERE etat = 'Disponible'
GROUP BY localisation
ORDER BY nombres_vehicules DESC
LIMIT 1;

-- 3. Clients ayant au moins deux locations

SELECT id_client, COUNT(*) AS nb_locations
FROM location
GROUP BY id_client
HAVING COUNT(*) >= 2;

-- 4. Véhicules jamais loués

SELECT vehicule.id_vehicule
FROM vehicule v
LEFT JOIN location l
ON vehicule.id_vehicule = l.id_vehicule
WHERE location.id_location IS NULL;