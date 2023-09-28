CREATE VIEW same_mother AS
SELECT DISTINCT f1.fam_mother, f1.fam_father, student.fam_id
FROM family f1
JOIN student ON f1.fam_id = student.fam_id
JOIN family f2 ON f1.fam_mother = f2.fam_mother AND f1.fam_father != f2.fam_father;

SELECT COUNT(*) AS "Students with Same Mothers but Different Fathers" FROM same_mother;