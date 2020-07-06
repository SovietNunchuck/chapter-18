CREATE TABLE writing_supply (
	supply_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    utensil_type ENUM ("Pencil", "Pen"),
    num_drawers INTEGER
);

CREATE TABLE pencil_drawer (
	drawer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    pencil_type ENUM ("Wood", "Mechanical"),
    quantity INTEGER,
    refill BOOLEAN,
    supply_id INTEGER,
    FOREIGN KEY (supply_id) REFERENCES writing_supply(supply_id)
);

CREATE TABLE pen_drawer (
	drawer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    pen_type ENUM ("Black", "Blue", "Red", "Green", "Purple"),
    quantity INTEGER,
    refill BOOLEAN,
    supply_id INTEGER,
    FOREIGN KEY (supply_id) REFERENCES writing_supply(supply_id)
);