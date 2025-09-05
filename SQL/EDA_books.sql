# This SQL query script file is for the exploratory data analysis (EDA) project.

# Here we are going to get summary stats of the whole cleaned dataset.
DESCRIBE books_cleaned;

SELECT COUNT(title) AS no_of_books, MIN(NULLIF(average_rating,0)) AS min_rating, MAX(average_rating) AS max_rating, AVG(ratings_count) AS avg_people_rated, AVG(text_reviews_count) AS avg_text_reviews, AVG(num_pages) AS avg_num_pages
FROM books_cleaned;
# The NULLIF will turn 0 to NULL and MIN will ignore it.
# From here we can get the minimum and maximum ratings a book got, also the average amount of people who rated the books, average number of people who left a text review for the book and average number of pages a book contains.

# Popularity of books over a certain ratings or view count to keep the numbers more concise and avoid spam.

SELECT bookID, title, authors, language_code, num_pages
FROM books_cleaned
WHERE average_rating > 3.5 AND text_reviews_count > 800
ORDER BY average_rating DESC;
# This gives us a list of books and authors that have a decent rating as well as are well received by the audience where the audience is enthusiastic, by giving reviews in textual format.

# Time based analysis
# We are going to take top 3 books based on the year of release.

# You can do this in 2 ways, either by making a subquery or using a CTE, here we will do using subquery.
SELECT *
FROM (
		SELECT bookID, title, authors, average_rating, language_code, num_pages, ratings_count, text_reviews_count,
        ROW_NUMBER() OVER (PARTITION BY YEAR(publication_date) ORDER BY average_rating DESC) AS ranked_yearly, YEAR(publication_date) AS release_year
        FROM books_cleaned
) AS ranked_list
WHERE ranked_yearly <= 3
ORDER BY release_year ASC, ranked_yearly ASC;

# Using CTE
WITH ranked_list AS (
		SELECT bookID, title, authors, average_rating, language_code, num_pages, ratings_count, text_reviews_count,
        ROW_NUMBER() OVER (PARTITION BY YEAR(publication_date) ORDER BY average_rating DESC) AS ranked_yearly, YEAR(publication_date) AS release_year
        FROM books_cleaned
)
SELECT *
FROM ranked_list
WHERE ranked_yearly <= 3
ORDER BY release_year ASC, ranked_yearly ASC;

# Using these we will get the top 3 books of each year based on the average_rating.

# Average ratings of books by year
SELECT COUNT(bookID)
FROM books_cleaned
WHERE average_rating = 0;
# Checking to see how many 0 rated books there are, so if the number is small we can exclude them.

SELECT YEAR(publication_date) AS release_year, ROUND(AVG(NULLIF(average_rating,0)),2) AS avg_rating
FROM books_cleaned
GROUP BY release_year
ORDER BY avg_rating DESC;
# This gives us the average ratings of all the books based on their release year and then ranks them to find which years had the most amount of higher rated books.

# Publisher performance by finding how many decent performing books a publisher has under their belt.
SELECT COUNT(bookID) AS no_books, publisher
FROM books_cleaned
WHERE average_rating > 3.5
GROUP BY publisher
ORDER BY no_books DESC;

# This gives us how many books a publisher has released that has an average_rating of over 3.5.

# Thinking about doing a top 3 for publisher like I did for release year.
WITH ranked_list AS (
		SELECT bookID, title, authors, average_rating, language_code, num_pages, ratings_count, text_reviews_count,
        ROW_NUMBER() OVER (PARTITION BY publisher ORDER BY average_rating DESC) AS ranked_publisher, publisher
        FROM books_cleaned
)
SELECT *
FROM ranked_list
WHERE ranked_publisher <= 3;
# Looks good and is working fine.

# Quantity of books based on language.
SELECT COUNT(bookID), language_code
FROM books_cleaned
GROUP BY language_code;

# This gives an overview on how many books are there per language code in the cleaned dataset.