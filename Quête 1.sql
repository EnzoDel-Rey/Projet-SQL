-- 1. Afficher tous les véhicules
SELECT * FROM vehicule;

-- 2. Afficher les véhicules disponibles
SELECT * FROM vehicule
WHERE etat = 'Disponible';

-- 3. Afficher les véhicules situés à Nantes
SELECT * FROM vehicule
WHERE ville = 'Nantes';

-- 4. Afficher les véhicules ayant une autonomie plus grande que 400 km
SELECT * FROM vehicule
WHERE autonomie_km > 400;