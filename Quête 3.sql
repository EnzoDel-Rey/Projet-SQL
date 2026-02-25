-- 1. Afficher les locations avec le nom et le prénom du client
SELECT l.*, c.nom, c.prenom
FROM location l
JOIN client c ON l.id_client = c.id_client;

-- 2. Afficher les locations avec la marque et le modèle du véhicule
SELECT l.*, v.marque, v.modele
FROM location l
JOIN vehicule v ON l.id_vehicule = v.id_vehicule;

-- 3. Afficher la station de départ et la station d'arrivée pour chaque location
SELECT l.id_location,
       sd.nom AS station_depart,
       sa.nom AS station_arrivee
FROM location l
JOIN station sd ON l.id_station_depart = sd.id_station
JOIN station sa ON l.id_station_arrivee = sa.id_station;