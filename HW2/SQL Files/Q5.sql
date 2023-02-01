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

SELECT Instructor
FROM candidate 
WHERE subject = 'JavaScript'
INTERSECT
SELECT Instructor
FROM candidate 
WHERE subject = 'Scratch'
INTERSECT
SELECT Instructor
FROM candidate 
WHERE subject = 'Python'
GROUP BY Instructor;


-- Took three different select statements with different where conditions and used to INTERSECT to get the common instructors 
-- who can teach Javascript, Scratch and Python.
