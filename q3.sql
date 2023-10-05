SELECT c.crs_name AS Subject, COUNT(DISTINCT e.stud_id) AS Number_of_Students
FROM course c
LEFT JOIN enrollment e ON c.crs_id = e.crs_id
GROUP BY c.crs_name
ORDER BY Number_of_Students DESC;