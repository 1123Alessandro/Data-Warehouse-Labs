CREATE VIEW course_bldg_base AS
SELECT DISTINCT course.*, building.*
FROM student
JOIN course ON student.crs_id = course.crs_id
JOIN building ON student.bldg_id = building.bldg_id;

CREATE VIEW course_bldg_distinct AS
SELECT DISTINCT crs_code, bldg_name
FROM course_bldg_base;

SELECT bldg_name AS "Building Name", COUNT(*) AS "No. of Courses Held"
FROM course_bldg_distinct
WHERE bldg_name IN ('Blessed Pio Georgio Frassati', 'Main Building')
GROUP BY bldg_name;