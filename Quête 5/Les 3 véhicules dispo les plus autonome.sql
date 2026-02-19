SELECT *
FROM vehicule
WHERE etat = 'disponible'
ORDER BY autonomie_km DESC
LIMIT 3;
