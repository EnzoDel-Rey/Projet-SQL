SELECT l.id_location,
       v.marque,
       v.modele
FROM location l
JOIN vehicule v
ON l.id_vehicule = v.id_vehicule;
