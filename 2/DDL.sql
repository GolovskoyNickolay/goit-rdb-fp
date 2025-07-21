USE pandemic;

DROP TABLE IF EXISTS regions;
CREATE TABLE regions
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    code VARCHAR(3)   NULL,
    CONSTRAINT name_unique UNIQUE (name)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS infections;

CREATE TABLE infections
(
    code VARCHAR(255) PRIMARY KEY
);

DROP TABLE IF EXISTS cases;
CREATE TABLE cases
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    region_id      INT          NOT NULL,
    infection_code VARCHAR(255) NOT NULL,
    year           YEAR         NOT NULL,
    number         DOUBLE       NOT NULL,
    FOREIGN KEY (region_id) REFERENCES regions (id),
    FOREIGN KEY (infection_code) REFERENCES infections (code)
) ENGINE = InnoDB;

ALTER TABLE cases ADD CONSTRAINT region_infection_year_unique UNIQUE (region_id, infection_code, year);
