drop table spring_member;

create table spring_member(
	id varchar2(100) primary key,
	password varchar2(100) not null,
	name varchar2(100) not null,
	address varchar2(100) not null
)

insert into spring_member(id,password,name,address) values('java','1234','정우성','판교');
insert into spring_member(id,password,name,address) values('spring','1234','전지현','강남');