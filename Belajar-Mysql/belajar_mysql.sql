select * from products;
select id, category, name, price from products order by category asc, price desc;
select * from products order by id limit 4,4;
select distinct category from products;
create table admin (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;
describe admin;
insert into admin(first_name, last_name)
values
    ('Rendi', 'Hendra'),
    ('Babe', 'Syahputra'),
    ('Joko', 'Widodo');

select * from admin;
select id, YEAR(products.created_at), MONTH(products.created_at) from products;
select id,
       case category
            when 'Makanan' then 'Enak'
            when 'Minuman' then 'Segar'
            else 'Apa itu?'
            end as 'Category'
from products;
select id, name, ifnull(description, 'Kosong') as 'description' from products;
select count(id) as 'Total Product' from products;
select avg(price) as 'Rata-Rata' from products;
select max(price) as 'Harga termahal' from products;
select min(price) as 'Harga termurah' from products;
select category, quantity from products where category = 'Makanan';
select category, sum(quantity) as 'Total stock', sum(price) as 'Total harga' from products group by category;
select count(id) as total, category from products group by category having total >= 1;
select category, count(id) as 'Total Product', sum(quantity) as 'Total Stock' from products group by category;
