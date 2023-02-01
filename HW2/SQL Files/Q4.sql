-- Used Oracle Live for this question


CREATE TABLE Hourly_Pay
( 

Instructor CHAR(15) NOT NULL,
Hourly_rate INTEGER NOT NULL,
Count_Javascript INTEGER,
Count_Python INTEGER,
Count_Scratch INTEGER,
Count_Processing INTEGER,
Count_Java INTEGER

);


INSERT INTO Hourly_Pay VALUES ('Dan', 15, 30, 20, 30, 10, 5);
INSERT INTO Hourly_Pay VALUES ('John', 15, 10, 10, 5, 10, 5);
INSERT INTO Hourly_Pay VALUES ('Smith', 15, 50, 10, 5, 60, 5);


ALTER TABLE Hourly_Pay ADD Bonus AS ((Count_Javascript + Count_Python + Count_Scratch + Count_Processing + Count_Java) * (Hourly_rate * 0.1));

SELECT * FROM Hourly_Pay;

SELECT Instructor, Bonus
FROM Hourly_Pay
WHERE Bonus=(SELECT MAX(Bonus) FROM Hourly_Pay);



-- Here I have first taken count of each subject seperately like shown while inserting in the table. Then add another column in the table 
-- called Bonus which will calculate the sum of all the counts of subjects and multiply it with the hourly rate*0.1. For better understanding I have kept
-- the hourly rate fixed to 15 for all Instructors.

-- First table will only provide the count of each subject and bonus for each Instructors.

-- Second Table will show the Instructor with maximum bonus from the first table.
