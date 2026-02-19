SELECT c.nom,
       c.prenom,
       COUNT(l.id_location) AS nombre_locations
FROM client c
JOIN location l
ON c.id_client = l.id_client
GROUP BY c.nom, c.prenom;
