/* Generate a list of stars with star ids between 500 and 600 (but not including 500 and 600) with columns "starname", "startemp", "planetname", and "planettemp".
The list should have all stars, with the unknown data filled out with NULL. These values are, as usual, fictional. Calculate the temperature for a star 
with ((class+7)*intensity)*1000000, and a planet's temperature is calculated from the star's temperature minus 50 times orbit distance. */
SELECT stars.name AS starname,
((stars.class + 7) * stars.intensity) * 1000000 AS startemp,
planets.name AS planetname,
(((stars.class + 7) * stars.intensity) * 1000000) - (50 * planets.orbitdistance) AS planettemp
FROM stars 
LEFT OUTER JOIN planets
ON stars.starid = planets.starid
WHERE stars.starid > 500
AND stars.starid < 600