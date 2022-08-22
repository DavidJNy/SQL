SELECT occurred_at, account_id, channel
	FROM web_events
LIMIT 15

-- QUIZ: ORBER BY Part II
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY account_id, total_amt_usd DESC

--QUIZ: NOT
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom')

SELECT *
FROM web_events
WHERE channel NOT IN ('organic', 'adwords')

SELECT name
FROM accounts
WHERE name NOT LIKE 'C%'

SELECT name
FROM accounts
WHERE name NOT LIKE '%s'

--QUIZ: AND and BETWEEN
WHERE column >= 6 AND column <= 10

SELECT *
FROM orders
WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0

--QUIZ: OR
SELECT id
FROM orders
WHERE gloss_qty > 4000 OR poster_qty > 4000

SELECT *
FROM orders
WHERE gloss_qty > 1000 OR poster_qty > 1000 AND standard_qty = 0

SELECT *
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%') 
           AND ((primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
           AND primary_poc NOT LIKE '%eana%')

--RECAP & LOOKING AHEAD

		   Statement	How to Use It	Other Details
SELECT	SELECT Col1, Col2, ...	Provide the columns you want
FROM	FROM Table	Provide the table where the columns exist
LIMIT	LIMIT 10	Limits based number of rows returned
ORDER BY	ORDER BY Col	Orders table based on the column. Used with DESC.
WHERE	WHERE Col > 5	A conditional statement to filter your results
LIKE	WHERE Col LIKE '%me%'	Only pulls rows where column has 'me' within the text
IN	WHERE Col IN ('Y', 'N')	A filter for only rows with column of 'Y' or 'N'
NOT	WHERE Col NOT IN ('Y', 'N')	NOT is frequently used with LIKE and IN
AND	WHERE Col1 > 5 AND Col2 < 3	Filter rows where two or more conditions must be true
OR	WHERE Col1 > 5 OR Col2 < 3	Filter rows where at least one condition must be true
BETWEEN	WHERE Col BETWEEN 3 AND 5	Often easier syntax than using an AND