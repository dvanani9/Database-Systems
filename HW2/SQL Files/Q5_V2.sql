-- Used Oracle Live for this question


CREATE TABLE candidate
(
Instructor CHAR(20),
subject CHAR(20)
);  

INSERT INTO candidate VALUES ('Aleph', 'Scratch');        
INSERT INTO candidate VALUES ('Aleph', 'Java');         
INSERT INTO candidate VALUES ('Aleph', 'Processing');       
INSERT INTO candidate VALUES ('Bit', 'Python');
INSERT INTO candidate VALUES ('Bit', 'JavaScript');
INSERT INTO candidate VALUES ('Bit', 'Java');
INSERT INTO candidate VALUES ('CRC', 'Python');
INSERT INTO candidate VALUES ('CRC', 'JavaScript');
INSERT INTO candidate VALUES ('Dat', 'Scratch');
INSERT INTO candidate VALUES ('Dat', 'Python');
INSERT INTO candidate VALUES ('Dat', 'JavaScript');
INSERT INTO candidate VALUES ('Emscr', 'Scratch');
INSERT INTO candidate VALUES ('Emscr', 'Processing');
INSERT INTO candidate VALUES ('Emscr', 'JavaScript');
INSERT INTO candidate VALUES ('Emscr', 'Python');

CREATE TABLE Check_Subject
(
subject Char(20)
);

INSERT INTO Check_Subject VALUES ('JavaScript'); 
INSERT INTO Check_Subject VALUES ('Scratch'); 
INSERT INTO Check_Subject VALUES ('Python'); 

SELECT A.Instructor
FROM candidate A
WHERE A.subject IN (SELECT subject FROM Check_Subject)
GROUP BY A.Instructor
HAVING COUNT(subject) = (SELECT COUNT(subject) FROM Check_Subject)


-- Created another table and inserted all 3 subjects based on which we will get the instructors. Using object I got all those instructors where if subject 
-- in the candidate table were in the subjects from check subject table. Grouped these instructors to avoid multiple entries. Lastly, from the 
-- group by result I displayed only those instructors where the count of subjects were same in both the tables ie 3.


