CREATE VIEW course_2 AS
SELECT DISTINCT crs_code, crs_instr
FROM course;

SELECT bldg_name AS "Professor", COUNT(*) AS "No. of Courses Handled"
FROM course_2
GROUP BY crs_instr;
