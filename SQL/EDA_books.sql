# This SQL query script file is for the exploratory data analysis (EDA) project.

SELECT * OVER (PARTITION BY authors)
FROM books_cleaned
ORDER BY average_rating DESC
LIMIT 5;

# Here we are going to get summary stats of the whole cleaned dataset.
# Popularity of books over a certain ratings or view count to keep the numbers more concise and avoid spam.
# Time based analysis
# Top books based on the year of release to get a by year rating.
# Average ratings of books by year
# Publisher performance by finding how many decent performing books a publisher has under their belt.
# Quantity of books based on language.