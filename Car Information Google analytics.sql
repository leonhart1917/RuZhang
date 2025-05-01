SELECT 
DISTINCT fuel_type
FROM `hazel-stream-458118-q4.cars.car_info` 
LIMIT 1000;

SELECT
MIN(length) AS min_length,
MAX(length) AS max_length
FROM `hazel-stream-458118-q4.cars.car_info`;

SELECT*
FROM
`hazel-stream-458118-q4.cars.car_info`
WHERE
num_of_doors IS NULL;

UPDATE
`hazel-stream-458118-q4.cars.car_info`
SET
num_of_doors = "four"
WHERE
make = "dodge"
AND fuel_type = "gas"
AND body_style = "sedan";

SELECT*
FROM `hazel-stream-458118-q4.cars.car_info`
WHERE 
num_of_doors is NULL;

UPDATE
`hazel-stream-458118-q4.cars.car_info`
SET
num_of_doors = "four"
WHERE
make = "mazda"
AND fuel_type = "diesel"
AND body_style = "sedan";

SELECT
DISTINCT num_of_cylinders
FROM `hazel-stream-458118-q4.cars.car_info`;

UPDATE
`hazel-stream-458118-q4.cars.car_info`
SET
num_of_cylinders = "two"
WHERE
num_of_cylinders = "tow";

SELECT
MIN(compression_ratio) AS min_compression_ratio,
MAX(compression_ratio) AS max_compression_ratio
FROM
`hazel-stream-458118-q4.cars.car_info`;

SELECT
MIN(compression_ratio) AS min_compression_ratio,
MAX(compression_ratio) AS max_compression_ratio
FROM
`hazel-stream-458118-q4.cars.car_info`
WHERE
compression_ratio <> 70;

SELECT
   COUNT(*) AS num_of_rows_to_delete
FROM
`hazel-stream-458118-q4.cars.car_info`
WHERE
   compression_ratio = 70;

DELETE `hazel-stream-458118-q4.cars.car_info`
WHERE compression_ratio = 70;

SELECT
DISTINCT drive_wheels
FROM
`hazel-stream-458118-q4.cars.car_info`;

SELECT
  DISTINCT drive_wheels,
  LENGTH(drive_wheels) AS string_length
FROM
`hazel-stream-458118-q4.cars.car_info`;

UPDATE
`hazel-stream-458118-q4.cars.car_info`
SET
drive_wheels = TRIM(drive_wheels)
WHERE TRUE;

SELECT
DISTINCT drive_wheels
FROM
`hazel-stream-458118-q4.cars.car_info`;

SELECT
max(price)
from
`hazel-stream-458118-q4.cars.car_info`;