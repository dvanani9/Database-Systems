-- Used Oracle Live for this question

CREATE TABLE ENROLLMENT ( 
SID INTEGER NOT NULL, 
ClassName CHAR(10) NOT NULL, 
Grade CHAR NOT NULL,
PRIMARY KEY (SID, ClassName));

INSERT INTO ENROLLMENT VALUES (123, 'Processing', 'A');
INSERT INTO ENROLLMENT VALUES (123, 'Python', 'B');
INSERT INTO ENROLLMENT VALUES (123, 'Scratch', 'B');
INSERT INTO ENROLLMENT VALUES (662, 'Java', 'B');
INSERT INTO ENROLLMENT VALUES (662, 'Python', 'A');
INSERT INTO ENROLLMENT VALUES (662, 'JavaScript', 'A');
INSERT INTO ENROLLMENT VALUES (662, 'Scratch', 'B');
INSERT INTO ENROLLMENT VALUES (345, 'Scratch', 'A');
INSERT INTO ENROLLMENT VALUES (345, 'JavaScript', 'B');
INSERT INTO ENROLLMENT VALUES (345, 'Python', 'A');
INSERT INTO ENROLLMENT VALUES (555, 'Python', 'B');
INSERT INTO ENROLLMENT VALUES (555, 'JavaScript', 'B');
INSERT INTO ENROLLMENT VALUES (213, 'JavaScript', 'A');


SELECT ClassName, COUNT(*) AS Total
FROM ENROLLMENT
GROUP BY ClassName
ORDER BY Total DESC;

-- Here We take count of all records and then order them by class name to see how many students took that particular class.
-- Then we order this total in descending order to see the most popular classes taken by students.
