SELECT writing_supply.supply_id, pencil_type, drawer_id, quantity
FROM writing_supply
INNER JOIN pencil_drawer ON writing_supply.supply_id = pencil_drawer.supply_id
WHERE refill = true AND pencil_type = "Mechanical";

SELECT writing_supply.supply_id, utensil_type, drawer_id, color, quantity
FROM writing_supply
LEFT JOIN pen_drawer ON writing_supply.supply_id = pen_drawer.supply_id
WHERE refill = true;


SELECT writing_supply.supply_id, utensil_type, drawer_id, quantity
FROM writing_supply
LEFT JOIN pencil_drawer ON writing_supply.supply_id = pencil_drawer.supply_id
WHERE refill = true
UNION
SELECT writing_supply.supply_id, utensil_type, drawer_id, quantity
FROM writing_supply
RIGHT JOIN pen_drawer ON writing_supply.supply_id = pen_drawer.supply_id
WHERE refill = true
ORDER BY supply_id;

SELECT drawer_id, color FROM pen_drawer
WHERE supply_id IN (SELECT MAX(supply_id) FROM writing_supply WHERE utensil_type = "Pen")
AND quantity >= 60;