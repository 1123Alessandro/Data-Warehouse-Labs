create view sheesh as
select * from bio where bio_fname = "Taylor" and bio_lname = "Sheesh";

select count(distinct crs_id) as "Taylor's Subjects" from student where bio_id = (select bio_id from sheesh);
