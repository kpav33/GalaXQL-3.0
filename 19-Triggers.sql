/*  Create a trigger which, when a new star is created, clears the hilight table and inserts the new star id to the hilight table. */
CREATE TRIGGER newStar
AFTER INSERT ON stars
BEGIN
	DELETE FROM hilight;
	INSERT INTO hilight (starid) VALUES (NEW.starid);
END;