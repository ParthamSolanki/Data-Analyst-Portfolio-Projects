# This SQL query script file is for the exploratory data analysis (EDA) project.

SELECT * OVER (PARTITION BY authors)
FROM books_cleaned
ORDER BY average_rating DESC
LIMIT 5;