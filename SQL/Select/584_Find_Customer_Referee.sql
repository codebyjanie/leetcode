-- Solution 1
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;



-- Solution 2 (convert NULL values to 0 first)
SELECT name
FROM Customer
WHERE COALESCE(referee_id,0) != 2;



-- Solution 3 (convert NULL values to 0 first)
SELECT name
FROM Customer
WHERE IFNULL(referee_id,0) != 2;
