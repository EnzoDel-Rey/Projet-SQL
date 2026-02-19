SELECT ville,
       COUNT(*) AS nombre
FROM vehicule
WHERE etat = 'disponible'
GROUP BY ville
ORDER BY nombre DESC
LIMIT 1;
