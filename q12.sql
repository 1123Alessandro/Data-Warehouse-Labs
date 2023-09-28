create view grades as
select bio_id, stud_hsg, hs_id from student group by bio_id;

select hs.hs_name as "High School", avg(grades.stud_hsg) as "Average High School Grade" from grades
join (select hs_id, hs_name from highschool) as hs on grades.hs_id = hs.hs_id group by grades.hs_id;
