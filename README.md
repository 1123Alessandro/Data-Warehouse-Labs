# Data-Warehouse-Labs

# TODO
- [ ] Dimensional Model
- [ ] SQL Queries per question
- [ ] Screenshot of query + output
- [ ] write-up on thoughts and experience during lab exer 2
- [ ] Discuss the difference in terms of querying in Lab Exercise #1 vs. Lab Exercise #2
- [ ] SQL Scripts (one file per question)

# 1. What is the average tuition fee?

Group by the enrollment records' college ID. Querying for the average should simply follow.

![](images/q1.png)

# 2. What is the average total school fees?

This directly adds all of the facts in the fact table since those refer to the school fees and then simply get the average of the sum.

![](images/q2.png)

# 4. How many subjects does Taylor Sheesh have?

Create a view for Taylor's information. This view's `stud_id` serves as the filter for the query in the enrollment table.

![](images/q4.png)

# 5. How many students have the same mother but different fathers?

This counts the number of students who have same mothers but different fathers by joining and comparing two student tables, and the DISTINCT keyword also ensures that each student is counted only once.

![](images/q5.png)

# 7. How many students does International School of the National Artistic Arts University have?

Query the student table with a `WHERE` clause that only asks for students that have the ISNAA University in their records. 

![](images/q4.png)
