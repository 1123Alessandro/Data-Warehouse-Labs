# Data-Warehouse-Labs

# TODO
- [ ] Dimensional Model
- [ ] SQL Queries per question
- [ ] Screenshot of query + output
- [ ] write-up on thoughts and experience during lab exer 2
- [ ] Discuss the difference in terms of querying in Lab Exercise #1 vs. Lab Exercise #2
- [ ] SQL Scripts (one file per question)

# 1. What is the average tuition fee

Group by the enrollment records' college ID. Querying for the average should simply follow.

![](images/q1.png)

# 3. How many students are enrolled per subject?

Retrieve the number of students enrolled in each subject by joining the `course` and `enrollment` tables based on the course ID. `GROUP` the results by course name and `COUNT` the distinct student IDs to determine how many students are enrolled in each subject. The results are sorted in descending order using `DESC` to show the subjects with the highest enrollment first.

![](images/q3.png)

# 4. How many subjects does Taylor Sheesh have?

Create a view for Taylor's information. This view's `stud_id` serves as the filter for the query in the enrollment table.

![](images/q4.png)

# 7. How many students does International School of the National Artistic Arts University have?

Query the student table with a `WHERE` clause that only asks for students that have the ISNAA University in their records. 

![](images/q4.png)
