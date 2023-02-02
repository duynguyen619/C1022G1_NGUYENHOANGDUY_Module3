use library;

select books.book_id,books.title as name,count(books.id) as sl from borrows
join books on books.id = borrows.id
group by book.id
having sl = (
select count(books.id) as sl from borrows
join books  on books.id = borrows.id
group by books.id
order by sl desc limit 1
);

select books.id,books.title as name,count(books.id) as sl from borrows
join books on books.id = borrows.id
group by books.id
having sl = (
select count(books.id) as sl from borrows
join books  on books.id = borrows.id
group by books.id
order by sl desc limit 0
);

select s.name , count(b.id) as sl from borrows as b
join student as s on s.id = b.student_id
group by s.name
order by sl desc;

select s.name , count(b.id) as sl from borrows as b
join student as s on s.id = b.student_id
group by s.name
order by sl desc limit 1;