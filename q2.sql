CREATE VIEW student_fees AS
SELECT stud_id, SUM(tui_fee + tui_misc + tui_lab + tui_ppu) 
AS total_school_fees 
FROM student 
JOIN tuition ON student.tui_id = tuition.tui_id 
GROUP BY stud_id;

SELECT AVG(total_school_fees) AS "Average Total School Fees" FROM student_fees;
