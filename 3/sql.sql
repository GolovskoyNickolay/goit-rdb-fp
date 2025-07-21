USE pandemic;

SELECT r.name                                AS 'Entity',
       r.code                                AS 'Code',
       AVG(c.number)                         AS 'average_rabies_cases',
       MIN(c.number)                         AS 'min_rabies_cases',
       MAX(c.number)                         AS 'max_rabies_cases',
       SUM(c.number)                         AS 'sum_rabies_cases'
FROM cases c
         JOIN regions r ON c.region_id = r.id
WHERE c.infection_code = 'rabies'
GROUP BY r.id, r.name, r.code
ORDER BY average_rabies_cases DESC
LIMIT 10;