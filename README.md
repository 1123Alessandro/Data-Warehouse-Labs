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

### 4. How many subjects does Taylor Sheesh have?

By using the `distinct` keyword to only get the courses that are connected to Taylor Sheesh's bio_id, we can acquire the count

![](images/q4.png)
