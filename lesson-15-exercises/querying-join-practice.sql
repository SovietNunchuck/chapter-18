SELECT garden_bed.plant_id, space_number
FROM garden_bed
INNER JOIN seeds ON (garden_bed.plant_id = seeds.plant_id)
WHERE (seeds.quantity > 0);

SELECT seed_id, garden_bed.plant_id, space_number
FROM seeds
LEFT JOIN garden_bed ON (seeds.plant_id = garden_bed.plant_id);

SELECT garden_bed.plant_id, seed_id, quantity
FROM seeds
RIGHT JOIN garden_bed ON (seeds.plant_id = garden_bed.plant_id);

SELECT * FROM seeds
LEFT JOIN garden_bed ON (seeds.plant_id = garden_bed.plant_id)
UNION
SELECT * FROM seeds
RIGHT JOIN garden_bed ON (seeds.plant_id = garden_bed.plant_id);