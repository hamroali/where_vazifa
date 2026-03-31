-- 1 masala

SELECT 
		title,
		replacement_cost,
		trunc(f.replacement_cost / 20) * 2 AS discount_amount
FROM    film f
WHERE   trunc(f.replacement_cost / 20) * 2 > 0


-- 2 masala

SELECT 
		c.customer_id     AS mijoz_id,
		CONCAT(
        LEFT(first_name, 1), 
        LENGTH(last_name), 
        RIGHT(address_id::TEXT, 1)
    	)                 AS customer_code
FROM    customer c 


--3 masala

SELECT 
		a.address_id     AS manzil_id,
		LEFT(a.phone, 3) AS profit_perfict,
		CASE 
			WHEN LEFT(a.phone,3) IN('140', '150') THEN 'North'
			WHEN LEFT(a.phone,3) IN('160')        THEN 'East'
			ELSE 'Other'
		END AS region 	
FROM    address a 

-- 4 masala

SELECT 
		payment_id                              AS tolov_id,
		to_char(p.payment_date, 'YYYY - Month') AS month_label
FROM    payment p 


-- 5 masala


SELECT 
			c.customer_id AS mijoz_id,
			c.email       AS elektron_pochta
FROM        customer c 
WHERE       c.email NOT LIKE '%@%'


-- 6 masala

SELECT 
			f.film_id    AS film_id,
			f.title      AS film_nomi,
			CASE 
				WHEN f.title ILIKE '%love%' OR f.title   ILIKE '%wedding%' THEN 'Romance'
				WHEN f.title ILIKE '%fight%'OR f.title   ILIKE '%War%'     THEN 'Action'
				ELSE 'Other'
			END	AS estimated_category 
FROM        film f 


-- 7 masala

SELECT 
			f.film_id         AS film_id,
			f.rental_duration AS ijara_davomiyligi,
			(rental_duration * 24 * 60)  AS farq_daqiqa
FROM        film f 


-- 8 masala


SELECT 
			c.customer_id                                  AS mijoz_id,
			concat(c.last_name,' ', LEFT(c.first_name, 1)) AS  formated_name
FROM customer c 


-- 9 masala

SELECT 
		    film_id, 
		    title, 
		    replacement_cost % 1 = 0
FROM film

-- 10 masala

SELECT 
    film_id, 
    title, 
    (LENGTH(title) * 2) + 
    (CASE 
        WHEN title LIKE '%Secret%' THEN 10 
        ELSE 0 
    END) AS score
FROM film
