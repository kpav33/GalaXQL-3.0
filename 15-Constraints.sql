/*  Create a table called "quotes" with two columns: "id", which is primary key, and takes integers, and "quote" which contains non-null text strings, 
such as quote of the day (http://www.qotd.org/). Fill in a couple of rows so that I have something to query for. */
CREATE TABLE quotes (id INTEGER PRIMARY KEY, quote TEXT NOT NULL)
INSERT INTO quotes (quote) VALUES ("Be yourself; everyone else is already taken.");
INSERT INTO quotes (quote) VALUES ("So many books, so little time.");
INSERT INTO quotes (quote) VALUES ("A room without books is like a body without a soul.");
INSERT INTO quotes (quote) VALUES ("You only live once, but if you do it right, once is enough.");
INSERT INTO quotes (quote) VALUES ("Be the change that you wish to see in the world.");