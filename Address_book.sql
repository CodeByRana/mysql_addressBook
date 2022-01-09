show databases;
-- UC 1 --
create database address_book_service;
use address_book_service;

-- UC 2 --
CREATE TABLE address_book(
	id INT unsigned NOT NULL AUTO_INCREMENT,
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    address VARCHAR(150) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip VARCHAR(25) NOT NULL,
    phone VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    created_at DATETIME NOT NULL default localtimestamp,
    PRIMARY KEY (id)
);
desc address_book;
drop table address_book;

-- UC 3 --
insert into address_book(firstname, lastname, address, city, state, zip, phone, email) values
('Abc','xyz','ddsd','sdasdsad','sadsad',555864,455446,'asdsaas@gmail.com');

insert into address_book(firstname, lastname, address, city, state, zip, phone, email) values
('Deepak','Rana','Suriya','Giridih','Jharkhand',825320,7011133639,'dipakrana2760@gmail.com'),
('Navneet','kumar','indranagar','bangalore','karanatka',705552,123045678,'navneetkr@gmail.com'),
('manisha','kahar','Bell','mumbai','Maharastra',587225,658785225,'manishakahar@gmail.com'),
('Ankur','kr','Ariaa','Kolhapur','mumbai',555864,987542255,'ankurkr@gmail.com');


select * from address_book;

-- UC 4 --
update address_book set city = 'Ramgargh' where firstName = 'Deepak' and id = '2';
update address_book set firstname = 'Ram' where id = '2';
update address_book set lastname = 'Singh' where id = '2';
update address_book set firstname = 'Pritam', lastname = 'Kumar' where id = '2';
update address_book set address = 'Bagodar' where firstName = 'Pritam' and id = '2';
update address_book set phone = '869636563' where id='2';

-- UC 5 --
delete from address_book where firstName = 'Abc' and id = '6';

-- UC 6 --
select * from address_book where city = 'Giridih';
select * from address_book where city = 'Giridih' or state = 'Jharkhand';
select * from address_book where state = 'Mumbai';

-- UC 7 --
select count(*) from address_book where city = 'Giridih';
select count(*) from address_book where state = 'Jharkhand';

-- UC 8 --
select * from addressbook where city = 'Giridih' order by firstName asc;
select * from address_book where state = 'Jharkhand' order by firstName desc;

-- UC 9 --
alter table address_book add type varchar(25) not null;
desc address_book;
select * from address_book;
update address_book set type = 'Friend' where firstName = 'Navneet' and id = '3';

-- UC 10 --
select count(*) from address_book where type = 'Friend';

-- UC 11 --
insert into address_book (firstname, lastname, address, city, state, zip, phone, email, type) values
('Vikash','Kumar','Silong','Himachal','UK',2555255,887995552,'vikashkr@gmail.com','Proffession');

-- UC 12 --
