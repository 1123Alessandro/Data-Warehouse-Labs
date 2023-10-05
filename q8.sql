CREATE VIEW crs_bldg_base AS
SELECT DISTINCT crs_code, crs_bldg_name
FROM course;

SELECT crs_bldg_name AS "Building Name", COUNT(*) AS "Number of Courses Held"
FROM crs_bldg_base
GROUP BY crs_bldg_name;