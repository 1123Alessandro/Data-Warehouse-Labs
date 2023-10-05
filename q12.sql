SELECT stud_hs_name AS school_name, AVG(stud_hs_grade) AS average_high_school_grade
FROM student
WHERE stud_hs_name IS NOT NULL
GROUP BY stud_hs_name
ORDER BY average_high_school_grade DESC;