To resolve the error, either remove the COUNT(*) aggregate function, or add a GROUP BY clause to the subquery.  Here is a solution with the GROUP BY clause, achieving the goal of counting products per category:
```sql
SELECT
    COUNT(*) AS total_products,
    categories.category_name
FROM
    (SELECT product_id, category_id FROM products GROUP BY category_id) AS product_data,
    categories
WHERE
    product_data.category_id = categories.category_id
GROUP BY
    categories.category_name; 
```
Alternatively, if you just want the total number of products without categorizing, the subquery and GROUP BY clause can be removed.  Here's how:
```sql
SELECT COUNT(*) as TotalProducts FROM products; 
```