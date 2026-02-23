-- 1. Trier par autonomie décroissante
SELECT * FROM vehicule
ORDER BY autonomie_km DESC;

-- 2. Véhicules disponibles triés par ville puis marque
SELECT * FROM vehicule
WHERE etat = 'Disponible'
ORDER BY ville ASC, marque ASC;

-- 3. Liste des clients par ordre alphabétique
SELECT * FROM client
ORDER BY nom ASC;