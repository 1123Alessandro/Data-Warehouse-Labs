SELECT crs_instr AS "Professor Name", COUNT(DISTINCT crs_code) AS "No. of Courses Handled"
FROM course
GROUP BY crs_instr;