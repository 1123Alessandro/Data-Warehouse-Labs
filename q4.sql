create view sheesh as
select * from student where stud_fname = "Taylor" and stud_lname = "Sheesh";

select count(crs_id) as "Taylor's Subjects" from enrollment en where en.stud_id = (select stud_id from sheesh);
