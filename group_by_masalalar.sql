-- 1 masala
		
SELECT 
		    p.customer_id,
		    p.payment_date,
		    SUM(p.amount) AS total_payment
FROM 		payment p
GROUP BY 
		    p.customer_id,
		    p.payment_date
				
--2 masala

SELECT
		    p.customer_id,
		    SUM(p.amount) AS total_amount,
		    COUNT(*) AS payment_count,
		    CASE
		        WHEN SUM(p.amount) < 50 THEN 'Past'
		        WHEN SUM(p.amount) BETWEEN 50 AND 100 THEN 'Orta'
		        ELSE 'Katta'
		    END AS miqdorlar
FROM       payment p
GROUP BY   p.customer_id
ORDER BY   customer_id 


-- 3 masala

SELECT
    		EXTRACT(HOUR FROM r.rental_date) AS rental_hour,
    		COUNT(*) AS rental_count
FROM 		rental r
GROUP BY	rental_hour
ORDER BY 	rental_hour


-- 4 masala

SELECT 
    CASE 
        WHEN rental_rate < 1.00 THEN 'kichik'
        WHEN rental_rate BETWEEN 1.00 AND 2.99 THEN 'orta'
        WHEN rental_rate >= 3.00 THEN 'katta'
    END AS guruhlar,
    COUNT(*) AS film_soni
FROM film
GROUP BY 
    CASE 
        WHEN rental_rate < 1.00 THEN 'kichik'
        WHEN rental_rate BETWEEN 1.00 AND 2.99 THEN 'orta'
        WHEN rental_rate >= 3.00 THEN 'katta'
    END
ORDER BY guruhlar;


-- 5 masala

SELECT
	     EXTRACT(DOW FROM p.payment_date) AS hafta_kuni,
	     SUM(p.amount) AS jami_tolov,
	     AVG(p.amount) AS orta_tolov
FROM     payment p
WHERE    EXTRACT(DOW FROM p.payment_date) > 5 
GROUP BY EXTRACT(DOW FROM p.payment_date)
ORDER BY hafta_kuni

-- 6 masala

SELECT 
    CASE
        WHEN amount BETWEEN 1 AND 5 THEN 'kichik'
        WHEN amount BETWEEN 6 AND 16 THEN 'orta'
        WHEN amount > 16 THEN 'katta'
    END AS toifalar,
    COUNT(*) AS mijozlar_soni
FROM payment
GROUP BY 
    CASE
        WHEN amount BETWEEN 1 AND 5  THEN 'kichik'
        WHEN amount BETWEEN 6 AND 16 THEN 'orta'
        WHEN amount > 16             THEN 'katta'
    END
ORDER BY toifalar






