-- On relie location et client grâce à id_client
SELECT l.id_location,
       c.nom,
       c.prenom
FROM location l
JOIN client c
ON l.id_client = c.id_client;
