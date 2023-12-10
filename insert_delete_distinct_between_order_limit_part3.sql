select * from orders
-- " " -> double quote digunakan untuk mengapit nama kolom
-- ' ' -> single quote digunakan untuk literal value -> teks







-- BETWEEN = diantara
-- menyederhanakan nilai yang diapit oleh dua batas
-- nilai -> angka atau tanggal atau teks
-- between tuh setara dengan <= dan <=

-- filter baris yang kuantitas belanjaannya diantara 3 dan 5
select * from orders where quantity between 3 and 5
select * from orders where quantity >= 3 and quantity <= 5

-- filter baris yang nilai sales diantara 100 dan 200
select * from orders where sales >= 100 and sales <= 200
select * from orders where sales between 100 and 200

-- filter baris yang diorder selama bulan oktober di tahun 2015
-- 'yyyy-mm-dd'
-- kenapa tanggalnya perlu dikasih kutip? karena jika gak ada
-- bakal disangka numerik
select * from orders where order_date between '2015-10-01' and '2015-10-31'

select 
	* 
from 
	orders 
where 
	order_date between '2015-01-01' and '2015-12-31'
	and
	state = 'California'
	and 
	not segment = 'Home Office'

-- ngefilter baris dimana nama konsumennya diantara B sampai E
select * from orders where customer_name between 'B' and 'E'

-- seperti kamus, menampilkan kata kata diantara kata buku dan meja
-- contoh : select * from kamus where kata between 'buku' and 'meja'
-- whiteboard interview
-- between bisa ngefilter nilai : angka, tanggal, text







-- SELECT DISTINCT -> menampilkan data data yang unik/berbeda
-- ship_mode ada pilihan apa aja?
select distinct ship_mode from orders

-- ada segment konsumen apa aja?
select distinct segment from orders

-- subcategory product
select distinct subcategory from orders







-- ORDER 
-- untuk mengurutkan, by default dia tuh asc
-- menaik -> ascending ASC = dimulai dari yg paling kecil
-- menurun -> descending DESC = dimulai dari yg paling besar
select
	*
from
	orders
where
	category = 'Furniture'
order by
	order_date DESC
	






-- SQL order of execution
/* 
1. from
2. where
3. group by
4. having
5. select = walopun select sering ditulis duluan sebenernya dia
di run sesuai urutannya
6. order by
7. limit
*/







-- MENGGABUNGKAN DISTINCT DAN ORDER
select
	distinct subcategory
from
	orders
order by
	subcategory
	

-- 1 menggantikan urutan kolom dari mulai select
select
	distinct subcategory -- kolom pertama
from
	orders
order by
	1 ASC
	
-- bisa mengurutkan lebih dari 1 kolom
select
	*
from
	orders
order by
	order_date, ship_mode
	
select
	*
from
	orders
order by
	3, 5
	

-- 3 adalah urutan untuk kolom order date, 5 adalah urutan untuk ship_date
select
	*
from
	orders
order by
	order_date ASC, ship_date DESC

select
	distinct segment,
	subcategory
from
	orders
order by
	1,2
	
select
	distinct segment,
	subcategory
from
	orders
order by
	2,1
	




	
	
-- LIMIT 
-- untuk menampilkan baris
select * from orders limit 5

-- menampilkan konsumen dengan revenue tertinggi
-- menampilkan 5 barang termahal
-- menampilkan 3 sales terbesar
-- membatasi menampilkan tabel yang besar
-- limit digunakan untuk melihat tabel secara sekilas dengan 
-- tidak membebani RAM
select * from activities <- menampilkan semua tabel

-- tampilkan 5 baris teratas berdasarkan sales
-- diurutkan berdasarkan sales, langsung dilimit
select
	*
from
	orders
order by
	sales desc
limit 5

-- tampilkan 5 baris teratas dengan kerugian terbesar
select * from orders order by profit asc limit 5

-- memasukkan data ke tabel
insert into orders (row_id, customer_name) values (99999, 'Rizki Teguh Kurniawan')

select * from orders order by row_id desc

-- tarik data yang order_id nya kosong
select * from orders where order_id = ''

-- khusus untuk data kosong, gunakan NULL
select * from orders where order_id IS NULL

-- menampilkan data yang tidak kosong?
select * from orders where order_id is not null order by row_id desc

-- cara menghapus baris pada tabel yang memenuhi kondisi tertentu
DELETE FROM orders where order_id is null







-- ALIAS
-- di kolom, ini tuh sifatnya gak permanen yah
select
	customer_name as nama_lengkap,
	city as kota
from
	orders
	
	




	
-- INSERT
select * from orders

-- contoh query (WARNING ; jan di run!!!)
INSERT INTO orders values (tulis valuenya based on urutan nama kolomnya)

INSERT INTO orders(city, ship_mode) values (tulis valuenya based on kolom yg kamu tulis disebelah kiri)







-- DELETE 
-- berdasarkan kondisi baris -> baris tertentu
-- Kalo delete itu datanya aja yg ilang, tabelnya tetep ada
-- kalo drop, data dan tabelnya itu ilang
DELETE FROM orders where city = 'xxxx'







-- TASK NO 1
-- Display a list of names of individual consumers who transacted in the month May 2014 and is located in the city of San Francisco
SELECT
	customer_id,
	customer_name,
	order_date,
	city
FROM
	orders
WHERE
	order_date BETWEEN '2014-05-01' AND '2014-05-30'
	AND
	city = 'San Francisco'
	
	
	
-- TASK NO 2
-- Display the 10 most profitable goods transactions
SELECT
	profit
FROM
	orders
ORDER BY
	profit desc 
LIMIT 10



-- TASK NO 3
-- Display the 10 transactions with the greatest value
SELECT
	sales
FROM
	orders
ORDER BY
	sales desc 
LIMIT 10






