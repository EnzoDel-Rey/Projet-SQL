-- 1. Locations avec nom et prénom du client
SELECT ville.id_ville, client.nom, client.prenom
FROM ville
JOIN client ON ville.id_client = client.id_client;

-- 2. Locations avec marque et modèle du véhicule
SELECT ville.id_ville, vehicule.marque, vehicule.modele
FROM ville
JOIN vehicule ON ville.id_vehicule = vehicule.id_vehicule;

-- 3. Station de départ et d'arrivée
SELECT l.id_ville, s1.nom AS station_depart, s2.nom AS station_arrivee
FROM ville l
JOIN station s1 ON l.id_station_depart = s1.id_station
JOIN station s2 ON l.id_station_arrivee = s2.id_station;