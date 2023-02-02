use library;

delimiter //
create procedure add_books(in book_id1 int, title1 varchar(50),in page_size1 int,in id_author1 int,in id_category1 int
)
begin
insert into books(id, title,page_size,author_id,category_id) values (book_id1,title1,page_size1,id_author1,id_category1);
end // delimiter //;
call add_books(6,'Sinh',34,5,4);
create index index_title on books(title);
create view views_borrows as
   select books.title, count(books.id) as 'số lần đã mượn' from borrows
   left join books on books.id= borrows.id
   group by books.id 
   order by books.id
  ;

drop view views_borrows;