create view base as
select en.stud_id, en.crs_id, (en.enr_tuition_fee + en.enr_misc_fee + en.enr_lab_fee) as mainPrice, (en.enr_ppu * course.crs_units) as coursePrice, student.stud_fam_income as income from enrollment en
join course on en.crs_id = course.crs_id
join student on en.stud_id = student.stud_id
group by en.crs_id;

create view courseTotals as
select stud_id, mainPrice, sum(coursePrice) as totals, income from base group by stud_id;

create view deducts as
select stud_id, (income - (mainPrice + totals)) as money from courseTotals;

select concat(student.stud_fname, " ", student.stud_lname) as Name, money from deducts 
join student on deducts.stud_id = student.stud_id
where money = (select min(money) from deducts);
