-- 1. Locations avec nom et prénom du client
SELECT location.id_location, client.nom, client.prenom
FROM location
JOIN client ON location.id_client = client.id_client;

-- 2. Locations avec marque et modèle du véhicule
SELECT location.id_location, vehicule.marque, vehicule.modele
FROM location
JOIN vehicule ON location.id_vehicule = vehicule.id_vehicule;

-- 3. Station de départ et d'arrivée
SELECT l.id.location, s1.nom AS station_depart, s2.nom AS station_arrivee
FROM location l
JOIN station s1 ON l.id_station_depart = s1.id_station
JOIN station s2 ON l.id_station_arrivee = s2.id_station;