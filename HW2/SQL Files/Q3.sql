-- Used Oracle Live for this question


CREATE TABLE Student_Projects (
Pid CHAR(5),
Step INTEGER,
Status CHAR,
PRIMARY KEY (Pid, Step));

INSERT INTO Student_Projects VALUES ('P100', 0, 'C');
INSERT INTO Student_Projects VALUES ('P100', 1, 'W');
INSERT INTO Student_Projects VALUES ('P100', 2, 'W');
INSERT INTO Student_Projects VALUES ('P201', 0, 'C');
INSERT INTO Student_Projects VALUES ('P201', 1, 'C');
INSERT INTO Student_Projects VALUES ('P333', 0, 'W');
INSERT INTO Student_Projects VALUES ('P333', 1, 'W');
INSERT INTO Student_Projects VALUES ('P333', 2, 'W');
INSERT INTO Student_Projects VALUES ('P333', 3, 'W');

SELECT DISTINCT A.Pid
FROM Student_Projects A , Student_Projects B
WHERE A.Step = 0 AND A.Status = 'C' AND B.Step = 1 AND B.Status = 'W' AND A.Pid = B.Pid;

-- Here we try to extract only DISTINCT Project ID thereby first using the keyword. Since we are comparing two conditions as shown above I have 
-- used an object to see if all four AND conditions match and in the end to check whether the group of results obtained have the same PID.
