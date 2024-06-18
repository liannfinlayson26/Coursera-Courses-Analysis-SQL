## Coursera Courses Analysis in mySQL

Lately, I've been interested in revisiting my knowledge in various topics, and I was interested in analyzing this dataset that describes certain aspects of the Coursera platform. 
In the past, I took an Excel course on this platform that helped me a lot in improving my data handling skills. 
Now, I would like to understand what other good courses with high ratings I could take to improve my skills in Data Science, Business, and Computer Science. 

Coursera Inc. is an American global massive open online course provider. It was founded in 2012 by Stanford University computer science professors Andrew Ng and Daphne Koller. 
Coursera works with universities and other organizations to offer online courses, certifications, and degrees in a variety of subjects 1.

## Preparing and Cleaning Data Set

In the first part of this project, I started by converting the CSV document to JSON format, as the lines were not loading when opening it in mySQL. Then I proceeded to make a copy of the database to work on it and performed the following actions:

1. Delete duplicates from databases: using a CTE or Common Table Expression.
2. Check if there were any blank or NULL data in the database.
3. Remove data in the columns 'What you will learn', 'Skill gain', and 'Level' that contained the string 'Not specified'.
4. Remove unnecessary columns from the database.

See code: https://github.com/liannfinlayson26/Coursera-Courses-Analysis-SQL/blob/main/Data_Cleaning_CourseraCourses.sql

## Exploratory Analysis 

See code:

Apart from cleaning the data, I'm interested in understanding which following courses could benefit me, so I made the following queries:

1. What Data Science courses have the best ratings and the highest number of reviews?
2. Which Computer Science courses at Intermediate and Advanced levels have the best ratings?
3. Which University courses have the best ratings and the highest number of reviews?
4. How many hours would I need to invest to complete the courses that interest me?
5. Do the courses that interest me have a flexible schedule?

From what I could conclude:
1. The top 5 best-rated Data Science courses with a rating of 4.8 and more than 10,000 reviews are:
   * Structuring Machine Learning Projects by Deep Learning AI with a 4.8 rating and 49563 reviews.
   * Using Python to Access Web data by University of Michigan with a 4.8 rating and 43837 reviews.
   * Crash Course on Python by Google with a 4.8 rating and 35221 reviews.
   * Sequence Models by Deep Learning AI with a 4.8 rating and 29769 reviews.
   * Prepare data for Exploration by Google with a 4.8 rating and 18342 reviews.

 One of the courses I would like to do in this section is Using Python to Access Web Data by University of Michigan 

2. The top 3 best-rated Computer Science courses at the Beginner level are:
   * Programming for Everybody (Getting Startet with Python by University of Michigan with a 4.8 rating and 225830 reviews.
   * Python for Everybody Specialization by University of Michigan with a 4.8 rating and 209311 reviews.
   * Google Data Analytics Professional Certificate with a 4.8 rating and 130435 reviews.

There are no courses with a rating higher than 4.7 and more than 10,000 reviews in the Beginner level category.
One of the courses I would like to take from this section is the Google Data Analytics Professional Certificate.

3. The top 7 courses from Universities with ratings of 4.9 are:
   * COVID-19 Contact Tracing by John Hopkings University in Health category
   * Excel Skills for Business Especialization by Macquarie University in Business Category
   * Excel Skills for Business Essentials by Macquarie University in Business Category
   * Introduction to Psychology by Yale University in Math and Logic
   * Python Data Structures by University of Michigan
   * The Science of Well-Being by Yale University

One of the courses I would like to complete from this section is "The Science of Well-Being" by Yale University.

4. The duration of the courses that interest me is as follows:
  * Using Python to Access Web Data could be completed in a estimated time of 19 hours.
  * Google Data Analytics Professional Certificate could be completed in a estimated time of 240 hours.
  * The Science of Well-Being could be completed in a estimated time of 19 hours.

  Google Data Analytics Professional Certificate would take me approx. 24 weeks or 6 months to complete if I study 10 hours a week. 
  I could complete the other two courses in approximately 2 or 3 weeks if I study 6 or 7 hours a week, respectively.

5. 

## Sources:
1. What is Coursera: www.coursera.org.
2. Original Dataset: https://www.kaggle.com/datasets/elvinrustam/coursera-dataset
