SELECT COUNT(*)
FROM data_analyst_jobs;
--Question2 Write a query to look at just the first 10 rows
SELECT *
FROM data_analyst_jobs
LIMIT 10;
--Question2b What company is associated with the job posting on the 10th row? XTO Land Data Analyst
--Question3a How many postings are in Tennessee? 21
SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location = 'TN';
--Question3b  How many are there in either Tennessee or Kentucky? 27
SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';
--Question4 How many postings in Tennessee have a star rating above 4? 3
SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > 4;
--Question5 How many postings in the dataset have a review count between 500 and 1000? 151
SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
-- Question6a Show the average star rating for companies in each state.The output should show the state as state and the average rating for the state as avg_rating.
SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY location;
--Questio6b Which state shows the highest average rating? New England
--Question7 Select unique job titles from the data_analyst_jobs table. How many are there? 881
SELECT DISTINCT title
FROM data_analyst_jobs;
--Question8 How many unique job titles are there for California companies? 230
SELECT DISTINCT title
FROM data_analyst_jobs
WHERE location = 'CA';
--Question9a Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations.
SELECT company, star_rating
FROM data_analyst_jobs
WHERE review_count > 5000;
--Question9b  How many companies are there with more that 5000 reviews across all locations? 185
--Question10a Add the code to order the query in #9 from highest to lowest average star rating.
SELECT company, star_rating
FROM data_analyst_jobs
WHERE review_count > 5000
ORDER BY star_rating DESC;
--Question10b Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating? Nike, 4.199999809
--QUestion11 Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 1669
SELECT title
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';
--Question12a How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? 4
SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' 
AND title NOT ILIKE '%Analytics%';
--Question 12b What word do these positions have in common? Tableau