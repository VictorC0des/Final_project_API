CREATE DATABASE geographic;
USE geographic;

-- Tabla de continentes
CREATE TABLE Continents (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Tabla de idiomas
CREATE TABLE Languages (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Tabla de países
CREATE TABLE Countries (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    continent_id INT UNSIGNED NOT NULL,
    population INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (continent_id) REFERENCES Continents(id) ON DELETE CASCADE
);

-- Tabla de capitales
CREATE TABLE Capitals (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    country_id INT UNSIGNED NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    population INT DEFAULT 0,
    coordinates POINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (country_id) REFERENCES Countries(id) ON DELETE CASCADE
);

-- Tabla de subdivisiones dentro de la capital
CREATE TABLE CitySubdivisions (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    capital_id INT UNSIGNED NOT NULL,
    population INT NOT NULL,
    coordinates POINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (capital_id) REFERENCES Capitals(id) ON DELETE CASCADE
);

-- Tabla de estados/provincias
CREATE TABLE States (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    country_id INT UNSIGNED NOT NULL,
    population INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (country_id) REFERENCES Countries(id) ON DELETE CASCADE
);

-- Tabla de municipios
CREATE TABLE Municipalities (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    state_id INT UNSIGNED NOT NULL,
    population INT NOT NULL,
    coordinates POINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (state_id) REFERENCES States(id) ON DELETE CASCADE
);

-- Tabla de idiomas oficiales de los países
CREATE TABLE CountryLanguages (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    country_id INT UNSIGNED NOT NULL,
    language_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (country_id) REFERENCES Countries(id) ON DELETE CASCADE,
    FOREIGN KEY (language_id) REFERENCES Languages(id) ON DELETE CASCADE
);

DELIMITER $$

-- Triggers para la tabla Municipalities
CREATE TRIGGER update_state_population_after_insert_municipality
AFTER INSERT ON Municipalities
FOR EACH ROW
BEGIN
    UPDATE States SET population = population + NEW.population WHERE id = NEW.state_id;
END$$

CREATE TRIGGER update_state_population_after_update_municipality
AFTER UPDATE ON Municipalities
FOR EACH ROW
BEGIN
    UPDATE States SET population = population + (NEW.population - OLD.population) WHERE id = NEW.state_id;
END$$

CREATE TRIGGER update_state_population_after_delete_municipality
AFTER DELETE ON Municipalities
FOR EACH ROW
BEGIN
    UPDATE States SET population = population - OLD.population WHERE id = OLD.state_id;
END$$

-- Triggers para la tabla CitySubdivisions
CREATE TRIGGER update_capital_population_after_insert_citysubdivision
AFTER INSERT ON CitySubdivisions
FOR EACH ROW
BEGIN
    UPDATE Capitals SET population = population + NEW.population WHERE id = NEW.capital_id;
END$$

CREATE TRIGGER update_capital_population_after_update_citysubdivision
AFTER UPDATE ON CitySubdivisions
FOR EACH ROW
BEGIN
    UPDATE Capitals SET population = population + (NEW.population - OLD.population) WHERE id = NEW.capital_id;
END$$

CREATE TRIGGER update_capital_population_after_delete_citysubdivision
AFTER DELETE ON CitySubdivisions
FOR EACH ROW
BEGIN
    UPDATE Capitals SET population = population - OLD.population WHERE id = OLD.capital_id;
END$$

-- Triggers para las tablas States y Capitals
CREATE TRIGGER update_country_population_after_update_state
AFTER UPDATE ON States
FOR EACH ROW
BEGIN
    UPDATE Countries SET population = population + (NEW.population - OLD.population) WHERE id = NEW.country_id;
END$$

CREATE TRIGGER update_country_population_after_delete_state
AFTER DELETE ON States
FOR EACH ROW
BEGIN
    UPDATE Countries SET population = population - OLD.population WHERE id = OLD.country_id;
END$$

CREATE TRIGGER update_country_population_after_update_capital
AFTER UPDATE ON Capitals
FOR EACH ROW
BEGIN
    UPDATE Countries SET population = population + (NEW.population - OLD.population) WHERE id = NEW.country_id;
END$$

CREATE TRIGGER update_country_population_after_delete_capital
AFTER DELETE ON Capitals
FOR EACH ROW
BEGIN
    UPDATE Countries SET population = population - OLD.population WHERE id = OLD.country_id;
END$$

DELIMITER ;