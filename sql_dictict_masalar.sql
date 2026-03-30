--1 masala

SELECT 
		c.customer_id       AS mijoz_id,
		c.first_name        AS mijoz_ismi,
		c.last_name         AS mijoz_familyasi,
		c.create_date       AS yaratish_sanasi,
		c.store_id          AS xodim_id
FROM    customer c 
WHERE   c.create_date       BETWEEN '2007-03-01' AND '2007-03-03'


--2 masala

SELECT 
			 f.title                   AS film_nomi,
			 f.rental_rate             AS ijara_darajasi,
			 f.replacement_cost        AS almashtirish_narxi,
			 f.replacement_cost * 1.3  AS total_cost
FROM         film f 
WHERE        f.rental_rate < 3
ORDER BY     total_cost DESC

-- 3 masala

SELECT 
			c.first_name        AS mijoz_ismi,
			c.last_name         AS mijoz_familyasi,
			c.last_update       AS oxirgi_yangilanish  -- to'lovlar qilingan san
FROM        customer c 
WHERE       c.last_update       BETWEEN '2005-06-01' AND '2005-06-30'
ORDER BY    c.first_name        DESC 
LIMIT                           20


-- 4 masala

SELECT 
			f.title            AS film_nomi,
			f.rental_rate      AS ijara_darajasi,
			f.rental_rate * 50 AS profit
FROM        film f 
WHERE       f.rental_rate * 50 > 100
ORDER BY    profit             DESC 
LIMIT       11


-- 5 masala

SELECT 
			p.payment_id       AS tolov_id,
			p.amount           AS tolov,
			p.amount * 10      AS total_with_max
FROM 		payment p 
WHERE       p.amount * 10      > 5
ORDER BY    total_with_max     DESC 
LIMIT       100


-- 6 masala

SELECT 
			f.title                AS film_nomi,
			f.rental_rate          AS ijara_darajasi,
			f.replacement_cost     AS almashish_darajasi
FROM 		film f
WHERE       f.rental_rate < 3      AND 
			f.replacement_cost >15 AND 
			f.title                LIKE '%a%'
			

-- 7 - masala
SELECT 
			p.payment_id        AS tolov_id,
			p.amount * 10       AS total
FROM        payment p 
WHERE       p.amount * 10 > 50
ORDER  	BY  total               DESC 
LIMIT       7


-- 8 masala

SELECT 
			c.first_name     AS mijoz_ismi,
			c.last_name      AS mijoz_familyasi,
			c.create_date    AS yaratilgan_sana
FROM 		customer c 
WHERE		c.create_date    BETWEEN '2007-01-01' AND '207-03-01' AND 
			c.first_name     ILIKE   'A%'
ORDER BY    c.last_name      DESC 


-- 9 masala

SELECT 
			f.title                                 AS film_nomi,
			f.rental_rate                           AS ijara_narxi,
			f.replacement_cost                      AS almashish_darajasi,
			f.rental_rate * 20                      AS oshgan_rental,
			f.rental_rate * 20 + f.replacement_cost AS total_valu
FROM 		film f 
WHERE       f.rental_rate * 20 + f.replacement_cost > 100
ORDER BY    total_valu DESC 


-- 10 masala

SELECT 
			p.payment_id   AS tulov_id,
			p.amount       AS tulov,
			p.amount * 5   AS total
FROM        payment p 
WHERE       p.amount > 2   AND 
			p.amount < 7
LIMIT       5
OFFSET      5


--11 masala

SELECT 
			f.title                 AS film_nomi,
			f.rental_rate           AS ijara_narxi,
			f.replacement_cost      AS almashtirish_narxi
FROM        film f
WHERE       (f.title                LIKE '%t%' OR 
			f.rental_rate > 4)      AND 
			f.replacement_cost < 20 
			
			

-- 12 masala
			
SELECT 
			c.customer_id         AS mijoz_id,
			c.first_name          AS mijoz_ismi,
			c.last_name           AS mijoz_familyasi,
			c.store_id            AS magazin_id,
			c.last_update         AS oxirgi_yangilanish,
			c.store_id * 100      AS total_magazin
FROM        customer c 
ORDER BY    total_magazin
LIMIT       15


-- 13 masala

SELECT 
			f.title               AS film_nomi,
			f.rental_rate         AS ijara_narxi,
			f.replacement_cost    AS almashtirish_narxi
FROM 		film f 
WHERE       f.replacement_cost    BETWEEN 10 AND 30 AND 
			NOT  f.rental_rate    < 2     
ORDER BY    film_nomi             DESC 











--1-vazifa: Xodim va mijozni aniqlash

Sotuv bo’limi rahbari 2007 yil 1 mart va 3 mart oralig‘ida qaysi xodim qaysi mijozlarga xizmat ko’rsatganini bilmoqchi.

Talablar:

customer jadvalidan kerakli ustunlarni chiqarish
create_date 2007-03-01 va 2007-03-03 oralig‘ida bo‘lsin
Natijada har bir mijoz va unga xizmat qilgan xodim ko‘rsatilgan bo‘lsin


2-vazifa: Har bir filmning umumiy xarajatini hisoblash

Ombor bo’limi har bir filmning umumiy qiymatini hisoblamoqchi.

Talablar:

film jadvalidan title, rental_rate, replacement_cost ustunlarini chiqarish
Har bir film uchun total_cost ustunini yaratish: replacement_cost + 30%
Faqat rental_rate < 3 bo‘lgan filmlar
Natijani eng qimmat film birinchi bo‘lishi bilan saralash


-- 3 masala

--3-vazifa: Mijozlarning ismlari

Marketing bo‘limi to’lov qilgan mijozlarning ismlari ro‘yxatini olishni xohlamoqda.

Talablar:

2005 yil iyul oyida to’lov qilgan mijozlar
Alfavit tartibida saralash
Faqat 20 ta natija


--4-vazifa: Film foydasini taxminiy hisoblash

Savdo bo‘limi film foydalarini taxmin qilmoqchi.

Talablar:

title, rental_rate va yangi profit ustunini chiqarish
Har bir film 50 marta ijaraga berilishi mumkin deb hisoblash
Faqat $100 dan ko‘proq foyda keltiradigan filmlar
Eng yuqori foyda keltiradigan 11 ta filmni chiqarish

--5-vazifa: To‘lovga soliq qo‘shilgan qiymat

Moliyaviy bo‘lim oxirgi to’lovlarni 10% soliq bilan ko‘rmoqchi.

Talablar:

payment_id, amount va yangi total_with_tax ustunini chiqarish
Faqat 5 dan katta to’lovlar
Soliq qiymati eng yuqori bo‘lgan 100 ta to’lov


--6 masala
film jadvalidan shunday yozuvlarni topingki, ularning rental_rate qiymati 3 dan kichik, 
replacement_cost 15 dan katta bo‘lsin va film nomida "a" harfi qatnashsin.

--7 masala
payment jadvalidan amount * 10 qiymati 50 dan katta bo‘lgan yozuvlarni chiqaring. 
Hisoblangan qiymatni total_value nomi bilan ko‘rsating, natijani kamayish tartibida saralang va faqat 7 ta yozuv chiqaring.

-- 8 masala
customer jadvalidan create_date 2007-01-01 va 2007-03-01 oralig‘ida bo‘lgan hamda ismi "J" harfi bilan 
boshlanadigan mijozlarni toping. Natijani familiyasi (last_name) bo‘yicha A dan Z gacha tartiblang.

--9 masala
film jadvalidan (rental_rate * 20 + replacement_cost) ifodasini hisoblang va uni total_value nomi bilan chiqaring. 
Shu qiymati 100 dan katta bo‘lgan yozuvlarni tanlab, natijani kamayish tartibida saralang.

--10 masala
payment jadvalidan amount 2 dan katta va 7 dan kichik bo‘lgan yozuvlarni oling. (amount * 5) ni hisoblab chiqaring 
va natijani sahifalash orqali 6-dan 10-gacha bo‘lgan yozuvlar bilan cheklang.

--11 masala
film jadvalidan shunday yozuvlarni topingki, film nomi "T" harfi bilan boshlansin yoki rental_rate 4 dan katta 
bo‘lsin. Shu bilan birga replacement_cost 20 dan kichik bo‘lishi shart. Logikani to‘g‘ri qo‘llashga e’tibor bering.

--12 masala
customer jadvalidan last_update 2005-01-01 sanasidan keyin bo‘lgan yozuvlarni chiqaring. (store_id * 100) ni hisoblab,
yangi ustun sifatida qo‘shing. Natijani o‘sish tartibida saralang va faqat 15 ta yozuv chiqaring.

--13 masala
film jadvalidan replacement_cost 10 va 30 oralig‘ida bo‘lgan yozuvlarni toping. Shu bilan birga 
rental_rate 2 dan kichik bo‘lmasin (NOT ishlating). Natijani film nomi (title) bo‘yicha kamayish








