create view scships as
select * from scholarship group by schlr_name;

create view scholared as
select fam_id, schlr_id from student;

select avg(fam_income) as "Average Income", schlr_name as Scholarship from scholared
join (select fam_id, fam_income from family) as fam on scholared.fam_id = fam.fam_id
join (select schlr_id, schlr_name from scholarship) as sch on scholared.schlr_id = sch.schlr_id
group by schlr_name;

-- select * from scholared
-- join (select fam_id, fam_income from family) as fam on scholared.fam_id = fam.fam_id
-- join (select schlr_id, schlr_name from scholarship) as sch on scholared.schlr_id = sch.schlr_id;
