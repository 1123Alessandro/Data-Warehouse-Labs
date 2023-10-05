create view tuitionPerCollege as
select college.coll_name as College, en.enr_tuition_fee as Tuition from enrollment en
join college on en.coll_id = college.coll_id group by college.coll_id;

select avg(Tuition) as "Average Tuition Fee" from tuitionPerCollege;
