create table authors(
          author_id number constraint aut_id_pk primary key,
		  author_name   varchar2(30)
		  );
          
CREATE TABLE Books (
    book_id NUMBER constraint book_id_pk primary key,
    Title VARCHAR2(30)constraint ti_NN NOT NULL,
    author_id NUMBER,
	catogoryname  varchar(25),
    constraint aut_id_fk foreign key(author_id)
	references authors(author_id)
 ); 
 
 
CREATE TABLE Members (
    Member_id NUMBER constraint mem_id_pk primary key,
    Member_Name VARCHAR2(100)constraint Mn_NN NOT NULL,
    MembershipDate DATE,
    PhoneNumber VARCHAR2(15)constraint Pn_NN NOT NULL,
    Email VARCHAR2(100)
	); 
    
CREATE TABLE BorrowedBooks (
    Borrow_id NUMBER constraint bor_id_pk PRIMARY KEY,
    Book_id NUMBER,
    Member_id NUMBER,
    BorrowDate DATE,
    ReturnDate DATE,
    constraint bor_id_Fk foreign key(Book_id)
	references books(Book_id),
	constraint mem_id_Fk foreign key(member_id)
	references members(member_id)
);