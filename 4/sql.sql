USE pandemic;

SELECT id,
       year,
       MAKEDATE(year, 1)                                 AS 'year_start_date',
       CURDATE()                                         AS 'now',
       TIMESTAMPDIFF(YEAR, MAKEDATE(year, 1), CURDATE()) AS 'diff_years'
FROM cases;