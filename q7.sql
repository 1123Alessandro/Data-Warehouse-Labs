create view isnaau as
select * from highschool where hs_name = "International School of the National Artistic Arts University";

select count(distinct stud_id) as "Students" from student where hs_id = (select hs_id from isnaau);
