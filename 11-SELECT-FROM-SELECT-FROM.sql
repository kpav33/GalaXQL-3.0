-- Hilight the star (or stars) which has the planet with the highest orbit distance in the galaxy. Remember to clear the old hilights before beginning. 
-- DELETE FROM hilight, clear old highlights
INSERT INTO hilight
SELECT stars.starid
FROM stars, planets, (SELECT MAX(orbitdistance) AS od FROM planets)
WHERE planets.orbitdistance = od
AND planets.starid = stars.starid;