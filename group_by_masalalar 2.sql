--1 masala

SELECT   rating, COUNT(*) AS filmlar_soni
FROM     film
GROUP BY rating

--2 masala

SELECT                   
			f.rental_duration             AS ijara_davomiyli,
			round(AVG(f.rental_rate ),1)  AS ortacha_narx
FROM        film f 
GROUP BY    f.rental_duration


-- variant B

SELECT       
			f.title                       AS film_nomi,
			f.rental_duration             AS ijara_davomiyli,
			round(AVG(f.rental_rate ),1)  AS ortacha_narx
FROM        film f 
GROUP BY    f.rental_duration, f.title             --- ikala variant farqini topamiz.......
ORDER  BY   film_nomi                     ASC 


-- 3 masala

SELECT 
		 p.customer_id     AS mijoz_id,
		 SUM(p.amount )    AS umumiy_tolov
FROM     payment p
GROUP BY mijoz_id 


-- 4 masala

SELECT 
		 p.customer_id     AS mijoz_id,
		 SUM(p.amount )    AS umumiy_tolov
FROM     payment p
GROUP BY mijoz_id 
HAVING   SUM(p.amount )    > 100
ORDER BY mijoz_id 


-- 5 masala

SELECT 
			i.store_id    AS dokon_id,
			count(*)
FROM        inventory i 
GROUP BY    dokon_id 


-- 6 masala

SELECT 
			a.district    AS  tuman,
			count(*)
FROM 		address a 
GROUP BY    tuman 
ORDER BY    tuman 


-- 7 masala

SELECT 
			p.staff_id    AS xodim_id,
			count(*)
FROM        payment p 
GROUP  BY   xodim_id 


-- 8 masala

SELECT
		    f.rating,
		    MIN(f.length) AS eng_qisqa,
		    MAX(f.length) AS eng_uzun
FROM        film f
GROUP BY    f.rating


-- 9 masala

SELECT 
			f.rental_rate                       AS ijara_narx ,
			round(AVG(f.rental_duration),2)     AS ortacha_ijaralar_kuni
FROM        film f 
GROUP BY    f.rental_rate 
ORDER BY    f.rental_rate ASC 

-- 10 masala

SELECT 
			f.rating   AS reyting,
			count(*)   AS filimlar_soni
FROM 		film f 
GROUP BY 	f.rating 
HAVING      count(*)   > 200


-- 11 masala

SELECT 
			f.rating                AS reyting,
			MAX(f.rental_duration ) AS almashtirish_narxi
FROM        film f 
GROUP BY   f.rating 
ORDER BY    almashtirish_narxi 







------------------ KECHAGI MAVZULAR BILAN UMUMIY MASALAR



