
-- SQL Data Exploration of Global Layoffs


-- Data Source: https://www.kaggle.com/datasets/theakhilb/layoffs-data-2022



-- Exploring the data to find trends or patterns

SELECT *
FROM layoffs_staging_2;



-- Total layoffs during this period (2020 - 2024)

SELECT SUM(total_laid_off)
FROM layoffs_staging_2;



-- Maximum and Minimum layoffs in a day

SELECT MAX(total_laid_off), MIN(total_laid_off)
FROM layoffs_staging_2;



SELECT MAX(percentage_laid_off), MIN(percentage_laid_off)
FROM layoffs_staging_2;


SELECT * 
FROM layoffs_staging_2
WHERE percentage_laid_off = 1;

-- Companies with percentage_laid_off = 1 basically mean that 100% of the employees have been laid off. 
-- These companies look like they all went out of business during this period.



SELECT COUNT(percentage_laid_off)
FROM layoffs_staging_2
WHERE percentage_laid_off = 1;



-- Companies with the highest single layoff

SELECT company, total_laid_off
FROM layoffs_staging_2
ORDER BY  total_laid_off DESC
LIMIT 10;


-- Companies with the highest Total Layoffs

SELECT company, SUM(total_laid_off)
FROM layoffs_staging_2
GROUP BY company
ORDER BY  SUM(total_laid_off) DESC
LIMIT 10;


-- Industries with the highest Total Layoffs

SELECT industry, SUM(total_laid_off)
FROM layoffs_staging_2
GROUP BY industry
ORDER BY  SUM(total_laid_off) DESC
LIMIT 10;


SELECT industry, Year(date) AS Year, SUM(total_laid_off) AS Total_laid_off
FROM layoffs_staging_2
WHERE industry = 'transportation'
GROUP BY industry, Year
ORDER BY  SUM(total_laid_off) DESC;


-- locations with the highest Total Layoffs

SELECT location, SUM(total_laid_off)
FROM layoffs_staging_2
GROUP BY location
ORDER BY SUM(total_laid_off) DESC
LIMIT 5;


-- Countries with the highest layoffs

SELECT country, SUM(total_laid_off)
FROM layoffs_staging_2
GROUP BY country
ORDER BY  SUM(total_laid_off) DESC
LIMIT 5;



-- Filtering by date

SELECT MIN(date), MAX(date)
FROM layoffs_staging_2;


-- Total layoffs per year

SELECT year(date), SUM(total_laid_off)
FROM layoffs_staging_2
GROUP BY year(date)
ORDER BY  year(date) ASC;



-- Rolling_Total per company

SELECT company, Year(date) AS Year, SUM(total_laid_off) AS Total_laid_off
FROM layoffs_staging_2
GROUP BY company, Year
ORDER BY  Total_laid_off DESC;



-- filtering by funds_raised_millions

SELECT * 
FROM layoffs_staging_2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;