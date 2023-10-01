create view enrolled as
select count(bio_id) as Count, crs_id from student group by crs_id;

select sum(Count) as "Final Count", crs_code as "Course Code" from enrolled join (select * from course) as cr on enrolled.crs_id = cr.crs_id group by crs_code;
