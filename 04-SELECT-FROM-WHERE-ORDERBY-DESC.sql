/*  Okay. Time for you to try something out. Make a query which returns starid, x, y and z for all stars where x is greater than zero and starid is less than one hundred. 
Sort the results by the y-coordinate so that the smallest values come first. */
SELECT starid, x, y, z FROM stars WHERE x > 0 AND starid < 100 ORDER BY y