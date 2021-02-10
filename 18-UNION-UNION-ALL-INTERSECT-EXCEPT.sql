/* Build a query which returns starids from planets.
The starids should be selected so that for each starid (x) in the list:
- there should exist a planet with a starid that's three times x
but
- there should not exist a planet with starid two times x.
Only use starids from the planets table. */
-- Select starids from planets
SELECT starid
FROM planets
-- Return only rows with a starid that is three times x
INTERSECT
SELECT 3 * starid
FROM planets
-- Do not return rows with a starid two times x
EXCEPT
SELECT 2 * starid
FROM planets