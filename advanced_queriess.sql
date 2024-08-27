 --to retrieve the details about the book 
 create or replace view bookdetails_v
 AS 
 select b.book_id,
        b.title,
        b.catogoryname,
        a.author_name 
 from Books b
 join authors a
 on b.author_id = a.author_id;

select * from bookdetails_v;

--to retrieve all the members with over due books
create or replace view duedetails_v
as
select m.member_id,
       m.member_name,
        bb.borrow_id,
        b.title
from members m
join borrowedbooks bb
on m.member_id=bb.member_id
join books b
on b.book_id=bb.book_id
where bb.returndate is null;

select * from duedetails_v; 

create or replace trigger borrowedtrigger
after update on borrowedbooks
for each row 
begin 
dbms_output.put_line('update on borrowedbooks');
end; 

update borrowedbooks set returndate = sysdate
where returndate is null;

drop trigger borrowedtrigger;