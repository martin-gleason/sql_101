/* Excercises and Answers for SQL Training
** 1/3/2019
** Excercise 1 (2 parts): Create a table and populate it with the people in the training
** Excercise 2: Read all the tables in the database, search for all the 
** Excercise 3: Update the data in the users table
*/

USE gsdataset;
GO

/*create*/
CREATE TABLE users (
poid int IDENTITY(1,1) PRIMARY KEY,
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL
);


/*READ*/
SELECT * FROM demographics;

SELECT * FROM users WHERE poid >= 2;

SELECT  dbo.demographics.casenumber, demographics.gender, dbo.incidentdate.casenumber, dbo.incidentdate.deathdate 
FROM demographics, incidentdate
WHERE demographics.casenumber = incidentdate.casenumber AND demographics.gender = 'Female';

/*update*/


INSERT INTO users VALUES('Martin', 'Gleason'), ('Miquel', 'Lewis'), ('Karla', 'Chinchilla');

ALTER TABLE dbo.users ADD phone VARCHAR(10) NULL;




/*delete?/

DROP TABLE users;

