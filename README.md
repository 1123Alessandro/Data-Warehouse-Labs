# Data-Warehouse-Labs

### 1NF 

Attributes would stay the same, there are no duplicate records and each record had an atomic value per attribute

### 2NF

Chose the approach of creating a unique primary key for each record to remove the necessity of 2NF for composite keys

### 3NF

> a combination of aly's 3nf and andy's 3nf

split the original table into these entities
- student
- bio
- location
- application
- family
- scholarship
- highschool
- admission
- program
- college
- course
- year
- building
- tuition

# Questions

### 1. What is the Average tuition fee

> put some explanation here

![](images/q1.png)

### 3. How many students are enrolled per subject?

![](images/q3.png)

### 4. How many subjects does Taylor Sheesh have?

By using the `distinct` keyword to only get the courses that are connected to Taylor Sheesh's bio_id, we can acquire the count

![](images/q4.png)

### 6. What are the combinations of semester and school year?

![](images/q6.png)

### 7. How many students does Intemational School of the National Artistic Arts University have?

The I.S.N.A.A.U. has a total of 4 unique students in the database

![](images/q7.png)

### 9. What is the average family income per scholarship?

![](images/q9.png)

### 10. Whose family has the least amount of money left after paying total school fees?

![](images/q10.png)
