-- Used Oracle Live for this question

CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
s7_9 CHAR(10) DEFAULT 'Y',
s9_11 CHAR(10) DEFAULT 'Y',
s11_13 CHAR(10) DEFAULT 'Y',
s13_15 CHAR(10) DEFAULT 'Y',
s15_17 CHAR(10) DEFAULT 'Y',
s17_18 CHAR(10) DEFAULT 'Y',
PRIMARY KEY (roomNum));

INSERT INTO ProjectRoomBookings(roomNum, s7_9, s9_11, s11_13, s15_17, s17_18)VALUES(1, 'Group A', 'Y', 'Y', 'Y', 'Y');
INSERT INTO ProjectRoomBookings(roomNum, s7_9, s9_11, s11_13, s15_17, s17_18)VALUES(2, 'Group B', 'Y', 'Y', 'Y', 'Y');
INSERT INTO ProjectRoomBookings(roomNum, s7_9, s9_11, s11_13, s15_17, s17_18)VALUES(3, 'Y', 'Y', 'Y', 'Y', 'Group E');
INSERT INTO ProjectRoomBookings(roomNum, s7_9, s9_11, s11_13, s15_17, s17_18)VALUES(4, 'Group F', 'Y', 'Y', 'Y', 'Y');
INSERT INTO ProjectRoomBookings(roomNum, s7_9, s9_11, s11_13, s15_17, s17_18)VALUES(5, 'Group G', 'Y', 'Y', 'Y', 'Y');


UPDATE ProjectRoomBookings 
SET s11_13 = 'Group C' 
WHERE s11_13 = 'Y' and roomNum = 2;

UPDATE ProjectRoomBookings 
SET s15_17 = 'Group B' 
WHERE s15_17 = 'Y' and roomNum = 2;


SELECT * FROM ProjectRoomBookings;



-- I have kept time slots of 2 hours for better understanding. Initially all slots are defined a default value 'Y' 
-- meaning slots are empty and can be occupied by any group. Group name will be replaced by 'Y' when a slot is free.
-- In order to check if a slot is free use a update statement to see if that particular slot is avaiable for that room.
-- If yes then replace the 'Y' by the group name otherwise entry will not be updated. Also Since I have created different 
-- slot ranges, the issue for start time being before end time is resolved here.

-- Suppose Group C tries to book slot for room 2 like showed and gets booked succesffuly. In cases where a group say 
-- Group B tries to book another slot in the same room then we can use update statement to check like showed in the second 
-- update part.

