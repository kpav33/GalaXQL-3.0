--  Starting from the normal galaxy, update it so that you swap the x and z coordinates for stars which have star id between 10000 and 15000.
BEGIN;
UPDATE stars 
SET x = z, z = x 
WHERE starid > 10000 AND starid < 15000;
-- Use ROLLBACK to undo the changes.