-- 1masala

SELECT 
		 f.title             AS nomi,
		 f.rental_rate   	 AS ijara_narxi,
		 f.replacement_cost  AS almashish_narxi
FROM     film f 
ORDER BY f.rental_rate       ASC 
LIMIT    10

-- 2 masala

SELECT 
		  f.title             AS nomi,
		  f.replacement_cost  AS alamashish_narxi
FROM      film f 
WHERE     f.replacement_cost  > 25
ORDER BY  f.replacement_cost  DESC 

-- 3masala

SELECT 
		   f.title   AS nomi,
		   f.length  AS uzunligi
FROM       film f 
ORDER BY   f.length  DESC 
LIMIT      15

-- 4 masala

SELECT 
			f.title         AS nomi,
			f.rental_rate   AS sotilgan_f
FROM        film f 
ORDER BY    f.title         ASC 
LIMIT       20
OFFSET      20

--5 masala

SELECT 
		  p.payment_id          AS tulov_id,
		  p.amount              AS tulov,
		  p.payment_date::date  AS tulov_vaqti
FROM      payment p 
WHERE     p.amount        > 5
ORDER BY  p.payment_date  DESC 
LIMIT     10


-- 6 masala

SELECT 
			f.title        AS film_title,
			f.rental_rate  AS sotuv_miqdori,
			f.length       AS duration_minutes
FROM        film f 
WHERE       f.length       > 100
ORDER BY    f.title        ASC 

-- 7 masala

SELECT 
	     'Payment of $ '|| 
	      p.amount      || ' on ' || 
	      p.payment_date:: date   AS summary
FROM      payment p 
ORDER BY  p.payment_date DESC 


-- 8 masala

SELECT 
		 'Customer paid $ ' || 
		 p.amount  ||' on ' ||
		 p.payment_date     AS summary  
FROM     payment p 
WHERE    p.amount > 8
ORDER BY p.payment_date DESC 
LIMIT    12

SELECT *
FROM payment p 
-- 9 masala

SELECT                         
		  p.payment_id    AS tolov_id,
		  p.amount        AS tolov,
		  p.payment_date  AS tolov_vaqti
FROM      payment p
ORDER BY  p.payment_date  DESC  
LIMIT     10 
OFFSET    30

-- 10 masala

SELECT 
		    f.title            AS film_nomi,
		    f.rental_rate      AS lenght,
		    f.length           AS film_uzunligi,
		    f.replacement_cost AS almashish_narxi
FROM        film f
WHERE       f.length > 120     AND 
			f.rental_rate      BETWEEN 2 AND 4
ORDER BY    f.replacement_cost DESC 
LIMIT       7


--11 masala

SELECT  *
FROM    film f 
WHERE   f.length > 90  AND f.rental_rate < 2 AND f.replacement_cost > 20 AND f.title ILIKE 'S%' AND length(f.title) > 5 OR 
        f.length > 100 AND f.rental_rate < 3 OR f.length            < 70 AND f.rental_rate > 3
OFFSET  60
LIMIT   10

