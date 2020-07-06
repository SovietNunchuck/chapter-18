SELECT plant_name
FROM plant
INNER JOIN

(SELECT garden_bed.plant_id, space_number
FROM garden_bed
INNER JOIN seeds ON (garden_bed.plant_id = seeds.plant_id)
WHERE (seeds.quantity > 0)) AS x

ON plant.plant_id = x.plant_id;

INSERT INTO seeds (expiration_date, quantity, reorder, plant_id)
VALUES ('2020-08-05', 100, 0, (
	SELECT plant_id FROM plant WHERE (plant_name LIKE 'Hosta')
));