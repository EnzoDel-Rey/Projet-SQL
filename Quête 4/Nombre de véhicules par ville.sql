SELECT ville,
       COUNT(*) AS nombre
FROM vehicule
GROUP BY ville;
