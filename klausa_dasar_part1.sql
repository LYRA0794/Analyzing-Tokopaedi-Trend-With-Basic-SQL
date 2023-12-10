-- Membuat Tabel --
CREATE TABLE tokopaedi(
	row_id INTEGER,
	order_id VARCHAR(255),
	order_date DATE,
	ship_date DATE,
	ship_mode VARCHAR(8),
	customer_id VARCHAR(255),
	customer_name VARCHAR(255),
	segment VARCHAR(6),
	country VARCHAR(50),
	city VARCHAR(50),
	state VARCHAR(50),
	postal_code CHAR(5),
	region VARCHAR(50),
	product_id VARCHAR(255),
	category VARCHAR(50),
	subcategory VARCHAR(50),
	product_name VARCHAR(50),
	sales FLOAT,
	quantity INTEGER,
	discount FLOAT,
	profit FLOAT
)

-- Untuk melihat isi tabel --
select * from tokopaedi



