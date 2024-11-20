-- SQL Data Cleaning of Global Layoffs


-- Data source:  https://www.kaggle.com/datasets/theakhilb/layoffs-data-2022



SELECT * 
FROM layoffs;


-- I created a staging table. The staging table is to work on and clean the data as I want the table with the raw data in case something happens

CREATE TABLE layoffs_staging
LIKE layoffs;


SELECT * 
FROM layoffs_staging;


INSERT layoffs_staging
SELECT * FROM layoffs;


SELECT * 
FROM layoffs_staging;



-- Remove duplicates data
        
	SELECT* , 
	ROW_NUMBER() OVER (
			PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, date, stage, country, funds_raised
			) AS row_num
	FROM 
		layoffs_staging;
        
        
SELECT *
FROM (
	SELECT company, location, industry, total_laid_off,percentage_laid_off, date, stage, country, funds_raised,
		ROW_NUMBER() OVER (
			PARTITION BY company, location, industry, total_laid_off,percentage_laid_off, date, stage, country, funds_raised
			) AS row_num
	FROM 
		layoffs_staging
) duplicates
WHERE 
	row_num > 1;
    
    
    
    -- To confirm duplicate, I looked at 'Beyond Meat'
    
    SELECT * 
    FROM layoffs_staging
		WHERE company = 'Beyond Meat';
        
        

-- The ones to be deleted are those where the row number > 1

With duplicate_CTE AS (
	SELECT * 
    FROM ( 
		SELECT * ,
	ROW_NUMBER() OVER (
			PARTITION BY company, location, industry, total_laid_off,percentage_laid_off, date, stage, country, funds_raised
			) AS row_num
	FROM 
		layoffs_staging) duplicates
WHERE 
	row_num > 1)
    DELETE FROM duplicate_CTE;
    
-- The above syntax throws an error because the delete's target table duplicate_CTE is not updatable in MySQL.
    
    
-- Solution: I created a new table with a new column and added these row numbers. Then delete where row numbers are greater than one, then delete that column

CREATE TABLE `layoffs_staging_2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` text,
  `percentage_laid_off` double DEFAULT NULL,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised` int DEFAULT NULL,
  `row_num` int
);


SELECT *
FROM layoffs_staging_2;



INSERT INTO layoffs_staging_2
SELECT company, location, industry, total_laid_off,percentage_laid_off, date, stage, country, funds_raised,
		ROW_NUMBER() OVER (
			PARTITION BY company, location, industry, total_laid_off,percentage_laid_off, date, stage, country, funds_raised
			) AS row_num
	FROM 
		layoffs_staging;
        
	

SELECT *
FROM layoffs_staging_2
WHERE row_num > 1;


DELETE
FROM layoffs_staging_2
WHERE row_num > 1;

        
SELECT *
FROM layoffs_staging_2;



-- Standardizing data

SELECT DISTINCT company 
FROM layoffs_staging_2;


SELECT company, TRIM(company)
FROM layoffs_staging_2;


UPDATE layoffs_staging_2
SET company = TRIM(company);



SELECT *
FROM layoffs_staging_2;


-- Fixing date column
-- using str to date to update this field

SELECT date,
STR_TO_DATE(date, '%d/%m/%Y')
FROM layoffs_staging_2;


UPDATE layoffs_staging_2
SET date = STR_TO_DATE(date, '%d/%m/%Y');

SELECT date
FROM layoffs_staging_2;



-- Convert date data type from text to date

ALTER TABLE layoffs_staging_2
MODIFY COLUMN date DATE;



-- Remove blank and Null Values 


SELECT DISTINCT industry
FROM layoffs_staging_2
ORDER BY industry;


SELECT *
FROM layoffs_staging_2
WHERE
industry = ''
	ORDER BY industry;


UPDATE layoffs_staging_2
SET industry = NULL
WHERE industry = '';



SELECT *
FROM layoffs_staging_2;



SELECT *
FROM layoffs_staging_2
WHERE total_laid_off IS NULL
OR 
total_laid_off = '';

UPDATE layoffs_staging_2
SET total_laid_off = NULL
WHERE total_laid_off = '';



SELECT *
FROM layoffs_staging_2
WHERE percentage_laid_off IS NULL
OR
percentage_laid_off = ''
OR 
percentage_laid_off = 0;


UPDATE layoffs_staging_2
SET percentage_laid_off = NULL
WHERE percentage_laid_off = 0;


SELECT *
FROM layoffs_staging_2;


DELETE
FROM layoffs_staging_2
WHERE total_laid_off is NULL OR Percentage_laid_off is NULL;


SELECT total_laid_off
FROM layoffs_staging_2
WHERE total_laid_off is NULL;
        
        
SELECT Percentage_laid_off
FROM layoffs_staging_2
WHERE Percentage_laid_off is NULL;


-- Remove column

ALTER TABLE layoffs_staging_2
DROP COLUMN row_num;


SELECT *
FROM layoffs_staging_2;


-- Remane column 

ALTER TABLE layoffs_staging_2
RENAME COLUMN funds_raised TO funds_raised_millions;

SELECT *
FROM layoffs_staging_2;

