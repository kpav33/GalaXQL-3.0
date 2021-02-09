/*  First, create and populate a table using this command. Rename the table to 'my_table', and add a column called 'moredata'. 
Add one whole new row and change the 'moredata' value of at least one existing row. (Yes, I'm aware you could do all that by 
changing the creation commands, but that is not the point of this exercise).*/
-- Create and populate the table
CREATE TABLE alter_test
 (id INTEGER PRIMARY KEY,
  data TEXT NOT NULL);
INSERT INTO alter_test (data) VALUES ('Foo');
INSERT INTO alter_test (data) VALUES ('Bar');
INSERT INTO alter_test (data) VALUES ('Baz');
-- Rename the table
ALTER TABLE alter_test RENAME TO my_table;
-- Add a column
ALTER TABLE my_table ADD COLUMN moredata TEXT;
-- Add one whole row
INSERT INTO my_table (data, moredata) VALUES ('Kaz', "Extra data");
-- Change the moredata value of the existing rows
UPDATE my_table SET moredata='Changed row values' WHERE id > 0 AND id < 4;