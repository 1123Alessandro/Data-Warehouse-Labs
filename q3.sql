CREATE VIEW stude_per_course AS
SELECT c.crs_code, c.crs_name, COUNT(DISTINCT s.stud_id) AS enrolled_students_count
FROM course c
LEFT JOIN student s ON c.crs_id = s.crs_id
GROUP BY c.crs_code, c.crs_name;

SELECT stu.crs_code, stu.crs_name, SUM(stu.enrolled_students_count) AS total_enrolled_students_count
FROM stu_per_course stu
GROUP BY stu.crs_code, stu.crs_name;