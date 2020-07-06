CREATE TABLE plant (
	plant_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    plant_name VARCHAR(40),
    zone INTEGER,
    season VARCHAR(20)
);

CREATE TABLE seeds (
	seed_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    expiration_date DATE,
    quantity INTEGER,
    reorder BOOL,
    plant_id INTEGER,
    FOREIGN KEY (plant_id) REFERENCES plant(plant_id)
);

CREATE TABLE garden_bed (
	space_number INTEGER PRIMARY KEY AUTO_INCREMENT,
    date_planted DATE,
    doing_well BOOL,
    plant_id INTEGER,
    FOREIGN KEY (plant_id) REFERENCES plant(plant_id)
);