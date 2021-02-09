-- Kill off all stars with starid lower than 10000. Do this inside a transaction, so that when I run the ROLLBACK command, we're back with the original galaxy.
BEGIN;
DELETE FROM stars 
WHERE starid < 10000;