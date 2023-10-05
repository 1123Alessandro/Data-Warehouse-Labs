SELECT COUNT(DISTINCT s1.stud_id) AS "Students with Same Mothers but Different Fathers" 
FROM student s1
JOIN student s2 ON s1.stud_mother = s2.stud_mother AND s1.stud_father != s2.stud_father;