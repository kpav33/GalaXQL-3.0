--  Hilight all the stars with starid between 10000 and 11000. (I know, this is not too difficult, but it looks neat).
INSERT INTO hilight 
SELECT starid 
FROM stars 
WHERE starid > 10000 and starid < 11000;