/*  Create a table named 'colors' with the columns 'color' and 'description'. Color is integer, description is text. 
Populate the table with color values from -3 to 10; each star class has its own color; fill the description with something (I won't care exactly what). 
Basic idea is that it will be possible to make a join between stars and colors where stars' class is compared to colors' color number.  */
-- Create the table
CREATE TABLE colors (color INTEGER, description TEXT);
-- Populate the table with data
INSERT INTO colors (color, description) VALUES (-3, "Something");
INSERT INTO colors (color, description) VALUES (-2, "Something");
INSERT INTO colors (color, description) VALUES (-1, "Something");
INSERT INTO colors (color, description) VALUES (0, "Something");
INSERT INTO colors (color, description) VALUES (1, "Something");
INSERT INTO colors (color, description) VALUES (2, "Something");
INSERT INTO colors (color, description) VALUES (3, "Something");
INSERT INTO colors (color, description) VALUES (4, "Something");
INSERT INTO colors (color, description) VALUES (5, "Something");
INSERT INTO colors (color, description) VALUES (6, "Something");
INSERT INTO colors (color, description) VALUES (7, "Something");
INSERT INTO colors (color, description) VALUES (8, "Something");
INSERT INTO colors (color, description) VALUES (9, "Something");
INSERT INTO colors (color, description) VALUES (10, "Something");