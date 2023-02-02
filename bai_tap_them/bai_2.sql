create database library;
use library;

create table student(
id int primary key,
`name` varchar(45),
birthday varchar(45),
class_name varchar(45)
);

create table borrows(
id int primary key,
student_id int,
foreign key (student_id) references student(id),
book_id int,
foreign key (book_id) references student(id),
borrow_date varchar(45),
return_date varchar(45)
);

create table category(
id int primary key,
name varchar(45)
);

create table authors(
id int primary key,
`name` varchar(45)
);

create table books (
id int,
title varchar(45),
page_size varchar(45),
authors_id int,
foreign key (authors_id) references authors(id),
category_id int,
foreign key (category_id) references category(id)
);