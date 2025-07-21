USE pandemic;

INSERT INTO regions (name, code)
SELECT DISTINCT Entity, Code
FROM infectious_cases;

INSERT INTO infections (code)
VALUES ('yaws'),
       ('polio'),
       ('guinea_worm'),
       ('rabies'),
       ('malaria'),
       ('hiv'),
       ('tuberculosis'),
       ('smallpox'),
       ('cholera');


INSERT INTO cases (region_id, infection_code, year, number)
SELECT r.id, 'yaws', ic.Year, ic.Number_yaws
FROM infectious_cases ic
         JOIN regions r ON ic.Entity = r.name
WHERE ic.Number_yaws IS NOT NULL;

INSERT INTO cases (region_id, infection_code, year, number)
SELECT r.id, 'polio', ic.Year, ic.polio_cases
FROM infectious_cases ic
         JOIN regions r ON ic.Entity = r.name
WHERE ic.polio_cases IS NOT NULL;

INSERT INTO cases (region_id, infection_code, year, number)
SELECT r.id, 'guinea_worm', ic.Year, ic.cases_guinea_worm
FROM infectious_cases ic
         JOIN regions r ON ic.Entity = r.name
WHERE ic.cases_guinea_worm IS NOT NULL;

INSERT INTO cases (region_id, infection_code, year, number)
SELECT r.id, 'rabies', ic.Year, ic.Number_rabies
FROM infectious_cases ic
         JOIN regions r ON ic.Entity = r.name
WHERE ic.Number_rabies IS NOT NULL;

INSERT INTO cases (region_id, infection_code, year, number)
SELECT r.id, 'malaria', ic.Year, ic.Number_malaria
FROM infectious_cases ic
         JOIN regions r ON ic.Entity = r.name
WHERE ic.Number_malaria IS NOT NULL;

INSERT INTO cases (region_id, infection_code, year, number)
SELECT r.id, 'hiv', ic.Year, ic.Number_hiv
FROM infectious_cases ic
         JOIN regions r ON ic.Entity = r.name
WHERE ic.Number_hiv IS NOT NULL;

INSERT INTO cases (region_id, infection_code, year, number)
SELECT r.id, 'tuberculosis', ic.Year, ic.Number_tuberculosis
FROM infectious_cases ic
         JOIN regions r ON ic.Entity = r.name
WHERE ic.Number_tuberculosis IS NOT NULL;

INSERT INTO cases (region_id, infection_code, year, number)
SELECT r.id, 'smallpox', ic.Year, ic.Number_smallpox
FROM infectious_cases ic
         JOIN regions r ON ic.Entity = r.name
WHERE ic.Number_smallpox IS NOT NULL;

INSERT INTO cases (region_id, infection_code, year, number)
SELECT r.id, 'cholera', ic.Year, ic.Number_cholera_cases
FROM infectious_cases ic
         JOIN regions r ON ic.Entity = r.name
WHERE ic.Number_cholera_cases IS NOT NULL;

select count(*) from cases;