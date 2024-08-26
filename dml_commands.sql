insert into authors values(1,'colleen hoover');
insert into authors values(2,'robin sharma');
insert into authors values(3,'robert kiyosika');
insert into authors values(4,'zhu yi');
insert into authors values(5,'kim ki-ho'); 

INSERT INTO Books VALUES (1,'it starts with us',1,'love');
INSERT INTO Books VALUES (2,'the 5AM club',2,'fiction');
INSERT INTO Books VALUES (3,'Richdad poordad',3,'finance');
INSERT INTO Books VALUES (4,'welcome to waikiki',4,'comedy');
INSERT INTO Books VALUES (5,'hidden love',5,'drama');

INSERT INTO Members VALUES (1, 'john', TO_DATE('2023-01-15', 'YYYY-MM-DD'), '123-456-7890', 'john@abc.com');
INSERT INTO Members VALUES (2, 'smith', TO_DATE('2023-02-20', 'YYYY-MM-DD'), '098-765-4321', 'smith@abc.com');
INSERT INTO Members VALUES (3, 'robert', TO_DATE('2024-01-10', 'YYYY-MM-DD'), '456-789-7880', 'robert@abc.com');
INSERT INTO Members VALUES (4, 'jane', TO_DATE('2024-02-25', 'YYYY-MM-DD'), '097-755-4671', 'jane@abc.com');


INSERT INTO BorrowedBooks VALUES (1, 1, 1, TO_DATE('2023-05-01', 'YYYY-MM-DD'), TO_DATE('2023-07-10', 'YYYY-MM-DD'));
INSERT INTO BorrowedBooks VALUES (2, 2, 2, TO_DATE('2023-04-10', 'YYYY-MM-DD'), TO_DATE('2023-06-05', 'YYYY-MM-DD'));
INSERT INTO BorrowedBooks VALUES (3, 3, 3, TO_DATE('2024-02-22', 'YYYY-MM-DD'),null);
INSERT INTO BorrowedBooks VALUES (4, 5, 4, TO_DATE('2024-03-15', 'YYYY-MM-DD'),null);

