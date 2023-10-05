SELECT stud_schlr_name AS scholarship_name, AVG(stud_fam_income) AS average_family_income
FROM student
WHERE stud_schlr_name IS NOT NULL
GROUP BY stud_schlr_name
ORDER BY average_family_income DESC;