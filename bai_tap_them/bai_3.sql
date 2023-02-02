use library;

insert into student(id,`name`,birthday,class_name) 
value(1, 'Nguyễn Văn A', '12-12-1999', 'C0822G1'),
('2', 'Nguyễn Văn B', '12-13-1999', 'C0822G1'),
('3', 'Nguyễn Văn C', '12-14-1999', 'C0822G1'),
('4', 'Nguyễn Văn D', '12-15-1999', 'C0922G1'),
('5', 'Nguyễn Văn E', '12-16-1999', 'C1022G1');

insert into authors(id,`name`) 
value(1, 'Tự nhiên'),
(2, 'Xã Hội'),
(3, 'Truyện'),
(4, 'Tiểu Thuyết'),
(5, 'Khác');

insert into category(id,`name`)
value (1, 'Nguyễn Thái Học'),
('2', 'Trần Mình Hoàng'),
('3', 'Dương Trung Quốc'),
('4', 'Lê Văn Hiến'),
('5', 'Hà Văn Minh');

insert into books(id,title,page_size,authors_id,category_id)
value (1, 'Toán', 45, 1, 1),
(2 ,'Văn', 34, 2, 2),
(3 ,'Sử', 5, 3, 2),
(4 , 'Địa', 76, 4, 2),
(5 , 'Hoá', 32, 5, 1);

insert into borrows(id,student_id,book_id,borrow_date,return_date)
value(1, 1, 1, '12-12-2022', '12-13-2022'),
(2, 2, 2, '12-12-2022', '12-15-2022'),
(3, 3, 3, '12-12-2022', '12-15-2022'),
(4, 4, 4, '12-12-2022', '12-12-2022'),
(5, 1, 5, '12-13-2022', '12-15-2022'),
(6, 1, 5, '12-14-2022', '12-14-2022'),
(7, 3, 4, '12-15-2022', '12-29-2022'),
(8, 3, 3, '12-8-2022', '12-14-2022'),
(9, 1, 2, '12-6-2022', '12-30-2022');

set sql_safe_updates = 0;
select books.title, books.page_size, authors.`name`,category.`name` from books
left join category on category.id = books.category_id
left join authors on authors.id = books.authors_id;

select student.name from borrows
left join student on student.id = borrows.student_id
order by name;

select books.title , count(books.id) from borrows
left join books on books.id=borrows.book_id
group by books.id
order by books.id limit 2;

