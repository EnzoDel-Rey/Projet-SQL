SELECT v.*
FROM vehicule v
LEFT JOIN location l
ON v.id_vehicule = l.id_vehicule
WHERE l.id_location IS NULL;
