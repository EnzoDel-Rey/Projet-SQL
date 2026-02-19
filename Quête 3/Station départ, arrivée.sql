SELECT l.id_location,
       s1.nom AS station_depart,
       s2.nom AS station_arrivee
FROM location l
JOIN station s1
ON l.id_station_depart = s1.id_station
JOIN station s2
ON l.id_station_arrivee = s2.id_station;
