create view uniq as
select count(*) from year group by year_sem, year_schyr;

select count(*) as Combinations from uniq;
