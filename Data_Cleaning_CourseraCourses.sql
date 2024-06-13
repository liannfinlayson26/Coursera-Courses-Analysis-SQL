SELECT * 
FROM coursera_courses1;

-- 1. remove duplicates: no duplicates
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY `Course Title`, `Rating`, `Level`, `Schedule`, `What you will learn`, `Skill gain`, `Modules`, `Instructor`, 
`Offered By`, `Course Url`, `Duration to complete (Approx.)`, `Number of Review`) AS row_num
FROM coursera_courses1;

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY `Course Title`, `Rating`, `Level`, `Schedule`, `What you will learn`, `Skill gain`, `Modules`, `Instructor`, 
`Offered By`, `Course Url`, `Duration to complete (Approx.)`, `Number of Review`) AS row_num
FROM coursera_courses1
)
SELECT *
FROM duplicate_cte 
WHERE row_num >1;

SELECT * 
FROM coursera_courses1
WHERE `Course Title` = 'Crash Course on Python';

SELECT * 
FROM coursera_courses1
WHERE `Course Title` = 'Advanced Business Analytics Specialization';

-- 1.1 Create a copy of the table before doing any alterations
CREATE TABLE `coursera_courses2` (
  `Course Title` text,
  `Rating` text,
  `Level` text,
  `Schedule` text,
  `What you will learn` text,
  `Skill gain` text,
  `Modules` text,
  `Instructor` text,
  `Offered By` text,
  `Keyword` text,
  `Course Url` text,
  `Duration to complete (Approx.)` text,
  `Number of Review` text,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT *
FROM `coursera_courses2`
WHERE row_num >1;

INSERT INTO coursera_courses2
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY `Course Title`, `Rating`, `Level`, `Schedule`, `What you will learn`, `Skill gain`, `Modules`, `Instructor`, 
`Offered By`, `Course Url`, `Duration to complete (Approx.)`, `Number of Review`) AS row_num
FROM coursera_courses1;

SELECT * 
FROM coursera_courses2;

SELECT * 
FROM coursera_courses2
WHERE `Course Title` = '.Net Full Stack Foundation'; 

-- 1.2 Eliminating the duplicated rows. 1961 rows deleted
DELETE 
FROM coursera_courses2
WHERE row_num >1;

-- 1.3 Still seing duplicates that have same instructors but in different order
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY `Course Title`, `Rating`, `Level`, `Schedule`, `What you will learn`, `Skill gain`, `Modules`, 
`Offered By`, `Course Url`, `Duration to complete (Approx.)`, `Number of Review`) AS row_num2
FROM coursera_courses2;

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY `Course Title`, `Rating`, `Level`, `Schedule`, `What you will learn`, `Skill gain`, `Modules`, 
`Offered By`, `Course Url`, `Duration to complete (Approx.)`, `Number of Review`) AS row_num2
FROM coursera_courses2
)
SELECT *
FROM duplicate_cte 
WHERE row_num2 >1;

-- can not delete from this table number 2 I created.
DELETE 
FROM coursera_courses2 
WHERE row_num2 >1;

CREATE TABLE `coursera_courses3` (
  `Course Title` text,
  `Rating` text,
  `Level` text,
  `Schedule` text,
  `What you will learn` text,
  `Skill gain` text,
  `Modules` text,
  `Instructor` text,
  `Offered By` text,
  `Keyword` text,
  `Course Url` text,
  `Duration to complete (Approx.)` text,
  `Number of Review` text,
  `row_num` int DEFAULT NULL,
  `row_num2` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * 
FROM coursera_courses3
WHERE row_num2 >1;

INSERT INTO coursera_courses3
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY `Course Title`, `Rating`, `Level`, `Schedule`, `What you will learn`, `Skill gain`, `Modules`, 
`Offered By`, `Course Url`, `Duration to complete (Approx.)`, `Number of Review`) AS row_num2
FROM coursera_courses2;

SELECT * 
FROM coursera_courses3
WHERE row_num2 >1;

SELECT * 
FROM coursera_courses3
WHERE `Course Title` = 'AI & Law';

SELECT * 
FROM coursera_courses3
WHERE `Course Title` = 'Algorithmic Toolbox';

-- 1.4 Eliminating the duplicated rows. 308 rows deleted that have the same instructors but in different order
DELETE 
FROM coursera_courses3
WHERE row_num2 >1;

-- 2. standarize the data
SELECT * 
FROM coursera_courses2;

SELECT `Keyword`
FROM coursera_courses2
WHERE `Keyword` LIKE 'Data%';

-- 2.1 No same Keywords written different in data base
SELECT DISTINCT `Keyword`
FROM coursera_courses2;

-- 3. Treat blanks or null values
-- 3.1 No null values
SELECT * 
FROM coursera_courses3
WHERE `Course Title` = "NULL";

SELECT * 
FROM coursera_courses3
WHERE `Rating` = "NULL";

SELECT * 
FROM coursera_courses3
WHERE `Level` = "NULL";

SELECT * 
FROM coursera_courses3
WHERE `Schedule` = "NULL";

SELECT * 
FROM coursera_courses3
WHERE `What you will learn` = "NULL";

SELECT * 
FROM coursera_courses3
WHERE `Skill gain` = "NULL";

SELECT * 
FROM coursera_courses3
WHERE `Modules` = "NULL";

SELECT * 
FROM coursera_courses3
WHERE `Instructor` = "NULL";

SELECT * 
FROM coursera_courses3
WHERE `Number of Review` = "NULL";

-- 3.2 No blanks in Keywords column
SELECT * 
FROM coursera_courses3
WHERE `Keyword` = '';

-- 3.3 No blanks in level column
SELECT * 
FROM coursera_courses3
WHERE `Level` = '';

-- 3.4 Information that is not specified in multiple columns
SELECT * 
FROM coursera_courses3
WHERE `What you will learn` = 'Not specified' AND `Skill gain` = 'Not specified' AND `Level` = 'Not specified';
-- AND `Duration to complete (Approx.) = 'Not specified' ;

-- 3.5 delete rows
DELETE 
FROM coursera_courses3
WHERE `What you will learn` = 'Not specified' AND `Skill gain` = 'Not specified' AND `Level` = 'Not specified';

-- 3.5 Keyword column completed
SELECT * 
FROM coursera_courses3
WHERE `Keyword` = 'Not specified';

-- 3.6 Where rating is 0, decided not to eliminate rows
SELECT * 
FROM coursera_courses3
WHERE rating = 0;


-- 4. remove any unnecesary columns
ALTER TABLE coursera_courses3
DROP COLUMN row_num;

ALTER TABLE coursera_courses3
DROP COLUMN row_num2;

SELECT * 
FROM coursera_courses3;
