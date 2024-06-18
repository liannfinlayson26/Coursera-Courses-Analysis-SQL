SELECT *
FROM coursera_courses3
WHERE `Offered By` = 'Google' AND `Course Title` LIKE '%Analytics%';

-- 1. Courses in Data Science with best ratings and most reviews
SELECT `Course Title`, `Offered By`, `Keyword`, `Level`, `Rating`, `Duration to complete (Approx.)`, `Number of review`
FROM coursera_courses3
WHERE `Rating` > 4.7 AND `Number of review` > 10000 
AND  `Keyword` = 'DataScience'
ORDER BY `Number of review` DESC, `Duration to complete (Approx.)` ASC
LIMIT 10;


-- 2. Courses in Computer Sciences with best ratings and most reviews that are intermediate to advance level-
--  There are not any in thIS Level only beginners 
SELECT `Course Title`, `Offered By`, `Keyword`, `Rating`, `Duration to complete (Approx.)`, `Number of review`
FROM coursera_courses3
WHERE `Rating` > 4.7 AND `Number of review` > 100000 -- AND `Level` = 'Intermediate level'
AND  `Keyword` = 'Computer Science'
ORDER BY `Number of review` DESC;

-- 2.1 There are only for courses in Intermediate Level with a lower number of reviews
SELECT `Course Title`, `Offered By`, `Keyword`, `Rating`, `Number of review`
FROM coursera_courses3
WHERE `Rating` > 4.7 AND `Number of review` > 10000 AND `Level` = 'Intermediate level'
AND  `Keyword` = 'Computer Science'
ORDER BY `Number of review` DESC;

-- 3. Courses that have a rating of 4.9 
SELECT `Course Title`, `Offered By`, `Keyword`, `Rating`, `Number of review`
FROM coursera_courses3
WHERE `Rating` > 4.8 AND `Number of review` > 50000
ORDER BY `Number of review` DESC
LIMIT 5;

-- 4. Courses from Universities 
SELECT `Course Title`, `Offered By`, `Keyword`, `Rating`, `Number of review`
FROM coursera_courses3
WHERE `Rating` > 4.8 AND `Number of review` > 20000 
AND `Offered By` LIKE '%University%';

-- 5. Time would take me to complete the courses I am interested in
SELECT `Course Title`,`Offered By`,`Duration to complete (Approx.)`
FROM coursera_courses3
WHERE `Course Title` = 'Using Python to Access Web Data';

SELECT `Course Title`,`Offered By`,`Duration to complete (Approx.)`
FROM coursera_courses3
WHERE `Course Title` = 'The Science of Well-Being';

SELECT `Course Title`,`Offered By`,`Duration to complete (Approx.)`
FROM coursera_courses3
WHERE `Course Title` = 'Google Data Analytics Professional Certificate';

-- 6. Schedule of courses that interest me
SELECT *
FROM coursera_courses3;

SELECT `Course Title`,`Offered By`, `Schedule`
FROM coursera_courses3
WHERE `Course Title` = 'Using Python to Access Web Data';

SELECT `Course Title`,`Offered By`, `Schedule`
FROM coursera_courses3
WHERE `Course Title` = 'The Science of Well-Being';

SELECT `Course Title`,`Offered By`, `Schedule`
FROM coursera_courses3
WHERE `Course Title` = 'Google Data Analytics Professional Certificate';
