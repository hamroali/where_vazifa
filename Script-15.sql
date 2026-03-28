
-- 1 masala
SELECT   *
FROM     payment
WHERE    staff_id NOT IN (1, 2)  AND amount !=  0.99

-- 2 masala

SELECT *
FROM   rental r 
WHERE  r.return_date IS NULL OR 
	   r.return_date > '2005-07-01' AND 
	   r.inventory_id BETWEEN   100 AND 200
	   
--3 masala

SELECT *
FROM   payment p
WHERE  p.amount < 1  OR 
	   p.amount > 10 AND 
	   p.payment_date < '2005-07-01'
	   
--4 masala
	   
SELECT 
		c.first_name,
		c.last_name 
FROM    customer c 
WHERE   c.first_name LIKE  '%er%' AND  NOT 
	    c.first_name ILIKE 'B%'
	    
-- 5 masala
	    
SELECT 
		 concat(c.first_name, ' ', c.last_name ),
		 c.customer_id 
FROM     customer c 
WHERE    (c.customer_id BETWEEN 100 AND 150 
     OR  c.last_name    LIKE '%son')
     AND c.address_id   != 5
     
--6 masala
  
SELECT 
		p.staff_id,
		p.amount 
FROM    payment p 
WHERE   p.staff_id NOT IN (1,2) AND 
	    p.amount = 0.99
	    
-- 7 masala
	    
SELECT 
		r.staff_id,
		r.return_date 
FROM    rental r 
WHERE   r.return_date  IS NULL AND 
		r.staff_id = 1

-- 8 masala
	
SELECT  
	    c.customer_id ,
	    c.first_name,
	    c.store_id 
FROM    customer c 
WHERE   (c.first_name ILIKE 'A%'  OR 
		c.customer_id > 500)      AND 
		c.store_id !=  1
		
		
-- 9 masala
		
SELECT 
		c.first_name, 
		c.last_name 
FROM    customer c 
WHERE   c.customer_id < 200 AND 
		(c.last_name        LIKE '%s%' OR 
		c.first_name        LIKE '%y')
		
		
SELECT *
FROM customer














