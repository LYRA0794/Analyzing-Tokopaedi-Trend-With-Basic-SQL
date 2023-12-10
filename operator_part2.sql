-- kapital -> membedakan keyword SQL dengan kata lainnya

select * from orders

-- memilih kolom pada sql
-- SELECT untuk menampilkan kolom
-- tanda '*' = everything/semua
select * from orders



-- memilih kolom tertentu
-- select kol1, kol2, .... from nama_tabel
-- kemunculan kolom akan based on urutan yang ditulis
select
	customer_id,
	segment,
	city
from orders

select order_id, segment from orders

select segment, customer_name, state from orders



-- memilih baris yang memenuhi kondisi tertentu (WHERE)
-- ambil semua transaksi yang ada di negara bagian Kentucky & california
SELECT * FROM orders WHERE state = 'Kentucky'
select * from orders where state = 'California'



-- tampilkan semua (kolom) transaksi dari konsumen yang bernama Justin Hirsh
-- tanda '=' memastikan nilainya harus sama eprsis bgt bgt bgt 
select
	*
FROM
	orders
WHERE
	customer_name = 'Justin Hirsh'



-- tampilkan semua baris yang nilai sales nya di atas 100 dollar
-- operasi yang berlaku di where (=, <, >, <=, >=, !=)
-- data numerik/angka jangan diapit oleh kutip
-- kutip digunakan untuk teks/literal value
select * from orders where sales > 100

-- tampilkan semua baris yang mengalami kerugian
select * from orders where profit < 0
-- tampilkan semua baris yang mengalami keuntungan
select * from orders where profit > 100



-- profit ration adalah % keuntungan profit/sales
-- alter -> permanen
-- jadi kalo kamu pake alter buat bikin kolom dia akan menetap kolomnya
select
	*,
	profit/sales*100.0 as profit_ratio
from
	orders

select * from orders

-- bikin kolom baru bernama unit_price -> sales/quantity
select
	*,
	sales/quantity as unit_price
from
	orders



-- bagaimana jika where menggunakan banyak kondisi
-- where itu berpasangan dengan Operator logika (AND, OR, NOT)
-- AND -> semua kondisi harus benar
-- OR -> salah satu kondisi harus ada yang benar
-- tampilkan semua baris yang berasal dari negara bag California DAN merugikan
select
	*
from
	orders
where
	state = 'California' AND profit < 0

-- memilih negara bag california category tech yang profit merugikan
select 
	* 
from 
	orders 
where state = 'California' 
	and 
	category = 'Technology' 
	and 
	profit < 0

-- tampilkan semua baris yang memiliki sales diantara 100 dan 200 dolar
-- diantara 100 dan 200 ->> sales >= 100 dan sales <= 200
select * from orders where sales >= 100 and sales <= 200

-- transaksi yang ada di kota los angeles, philadelphia, houston
select * from orders where city = 'Los Angeles' or city = 'Philadelphia' or city = 'Houston'



-- IN (meringkas OR berantai pada satu variabel)
SELECT
	*
FROM
	orders
where
	city in ('Los Angeles', 'Philadelphia', 'Houston')
	and category = 'Technology'



-- logika operator NOT
-- query semua transaksi yang bukan berasal dari kota los angeles
select * from orders where not city = 'Los Angeles'
select * from orders where city != 'Los Angeles'
select * from orders where city <> 'Los Angeles'

-- transaksi yang tidak ada di kota los angeles, philadelphia, houston
SELECT
	*
FROM
	orders
where
	city not in ('Los Angeles', 'Philadelphia', 'Houston')
	
-- transaksi yang ada di los angeles dengan sales > 100 serta di Seattle tapi sales < 100
select 
	* 
from
	orders
where
	(city = 'Los Angeles' and sales > 100) OR (city = 'Seattle' and sales < 100)

--
select
	order_id,
	customer_name,
	product_name,
	sales
from
	orders
where
	(city='Henderson' and profit<0 and segment='Home Office') 
	or 
	(city='Los Angeles' and profit<0 and segment='Home Office')

-- IS, NOT, NULL 



-- MENJAWAB SOAL LATIHAN MINI TASK
-- No. 1 Show only the order_id, customer_id, and sales columns
select
	order_id, 
	customer_id, 
	sales
from 
	orders
	
-- No. 2 Show all transactions originating from the City of Seattle
select 
	*
from 
	orders
where
	city = 'Seattle'
	
--No.3 Show all lists of transactions from individual consumers (segment = Consumer) who buy Furniture products in New York City
select
	*
from
	orders
where
	segment = 'Consumer'
	and
	city = 'New York City'
	
	
	
	
	