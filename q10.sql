create view base as
select stud_id, bio_id, fam_id, crs_id, tui_id as tuiid from student;

create view details as
select * from base 
right join (select bio_id as biod, bio_fname as fname, bio_lname as lname from bio where bio_id = bio_id) as bioo on base.bio_id = bioo.biod
right join (select fam_id as famid, fam_income as Income from family) as fam on base.fam_id = fam.famid
right join (select crs_id as crsid, crs_units as Units from course) as crs on base.crs_id = crs.crsid
right join (select * from tuition) as tui on base.tuiid = tui.tui_id;

create view expenses as
select concat(fname, " ", lname) as Name, Income, (tui_fee + tui_misc + tui_lab + tui_ppu*Units) as Total from details;

create view total as
select Name, Income as "Family Income", sum(Total) as "Sum Total", (Income - sum(Total)) as Money from expenses group by Name;

select * from total where Money = (select min(Money) from total);
