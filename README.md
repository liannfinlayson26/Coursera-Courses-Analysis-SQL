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

See code: 

## Exploratory Analysis 

A parte de limpiar la data, me interesa entender que siguientes cursos podría hacer que me beneficien, por eso realice los siguientes queries:
1. Qué cursos existen de Data Science con los mejores ratings y la mayor cantidad de reviews.
2. Qué cursos existen de Computer Science con niveles Intermediate and Advance existen y con los mejores ratings.
3. Qué cursos de Universidades con los mejores ratings y la mayor cantidad de reviews.
4. Qué cursos podría realizar en la menor cantidad de tiempo en duración de grandes compañias como Google.
5. Qué cursos en Business podría realizar con un Flexible Schedule.

De los que pude concluir que:
1. 

## Sources:
1. What is Coursera: www.coursera.org.
2. Original Dataset: https://www.kaggle.com/datasets/elvinrustam/coursera-dataset
