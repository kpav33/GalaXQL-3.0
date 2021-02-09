--  Hilight five stars which have star id between 5000 and 15000, and have class 7. (Hint: don't try to do this with a single query at this point). 
--Find stars that fit the requirements
SELECT * FROM stars WHERE starid > 5000 AND starid < 15000 AND class = 7;
--Insert five stars into the table
INSERT INTO hilight VALUES(5007);
INSERT INTO hilight VALUES(5048);
INSERT INTO hilight VALUES(5050);
INSERT INTO hilight VALUES(5068);
INSERT INTO hilight VALUES(5075);