create database book_management;
use book_management;

create table books(
id int,
title varchar(45),
page_size int,
author varchar(45)
);

insert into books (id,title,page_size,author)
VALUES (1, 'Toán', 45, 'Nguyễn Thái Học'),
(2, 'Văn', 34, 'Trần Mình Hoàng'),
(3, 'Sử', 56, 'Dương Trung Quốc'),
(4, 'Địa', 76, 'Lê Văn Hiến'),
(5, 'Hoá', 32, 'Hà Văn Minh');

set sql_safe_updates = 0;
update books
set title='Sử',page_size =50
where id = 3;

delete from books
where id=5;

drop database book_management;