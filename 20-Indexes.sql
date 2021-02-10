/*  Use ALTER TABLE to rename the 'gateway' table to 'gateways'. (ALTER TABLE was covered in chapter 16). */
--  Let's say we create a new table, here:
CREATE TABLE gateway (star1 INTEGER PRIMARY KEY, star2 INTEGER);
-- And we populate it with some random data:
INSERT INTO gateway 
SELECT starid, RANDOM()%12500+12500 
FROM stars 
WHERE starid%100=0;
-- Add an index to the table:
CREATE INDEX gateways_star2 
ON gateway (star2);
-- Select query
-- Without the index this same query would be much slower
 SELECT starid 
 FROM stars, gateway 
 WHERE star2=starid;
 -- Use ALTER TABLE to rename the 'gateway' table to 'gateways'
 ALTER TABLE gateway 
 RENAME TO gateways;