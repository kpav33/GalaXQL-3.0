/* Hilight the star with the most orbitals (combined planets and moons). If multiple stars have the highest number of orbitals, 
highlight the one with the lowest star id. */
-- Create a view with orbitals count per star and sort it by orbitals count
CREATE VIEW max AS SELECT stars.starid, (COUNT(planets.planetid) + COUNT(moons.planetid)) AS orbitals
FROM stars
JOIN planets
ON stars.starid = planets.starid
JOIN moons
ON planets.planetid=moons.planetid
GROUP BY stars.starid
ORDER BY orbitals
DESC;
-- Create a view which contains the star with the most orbitals
CREATE VIEW star AS SELECT starid, MAX(orbitals) FROM max;
-- Insert the star with the most orbitals into the hilight table
INSERT INTO hilight SELECT starid FROM star;