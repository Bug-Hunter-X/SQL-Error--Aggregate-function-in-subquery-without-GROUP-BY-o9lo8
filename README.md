# SQL Error: Aggregate function in subquery without GROUP BY

This repository demonstrates a common SQL error: using an aggregate function (like COUNT(*)) in a subquery within the FROM clause without a corresponding GROUP BY clause.  This often leads to an error because the database management system (DBMS) cannot determine how to aggregate the results without specified grouping.

The `bug.sql` file contains the erroneous SQL code. The `bugSolution.sql` file provides the corrected version.

The issue stems from the fact that COUNT(*) calculates the total number of rows, and without a GROUP BY clause, the DBMS doesn't know how to associate this count with other columns (like `categories.category_name`).