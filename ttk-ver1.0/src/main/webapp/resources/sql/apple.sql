select *from memberRange;
drop table memberRange;



  -- 0일때 전체공개 거부    //  1일때 전체공개 허용    -- 프로필리스트에서
create table memberRange(
range number primary key,
rangeCategory varchar2(100) not null
)

insert into memberRange(range,rangeCategory)
values(1,'공개허용');

insert into memberRange(range,rangeCategory)
values(0,'공개거부');




select *from member;
drop table member;


create table member(
   id varchar2(100) primary key,
   password varchar2(100) not null,
   name varchar2(100) not null,
   tel number not null,
   sex number not null,
   age number not null,
   address varchar2(100) not null,
   introduce clob,
   profileIMG varchar2(100) not null,
   range number constraint fk_member_range references memberRange(range),
   enabled number default 1,           --1 일때 활성,    0 일때 비활성
   hit number default 0
 )

insert into member(id,password,name,tel,sex,age,address,introduce,profileImg,range)
values('java','1234','천영해',01045496971,1,27,'야탑','안녕하세요?','path',1)

insert into member(id,password,name,tel,sex,age,address,introduce,profileImg,range)
values('java2','1234','아이유',01022226971,1,25,'판교','반갑스니다?','path2',0)


 drop table category;

 create table category(
categoryname varchar2(100) primary key,
categorypicture varchar2(100) not null
)

insert into category(categoryname,categorypicture)
values('activity','category1')


drop table area;
create table area(
areaname varchar2(100) primary key,
areapicture varchar2(100) not null
)
insert into area(areaname,areapicture)
values('seoul','area1')

drop sequence place_seq;
create sequence place_seq;

select place_seq.nextval from dual;
select place_seq.currval from dual;  --안댐


drop table area;
drop table place;
create table place(
 placeNo number primary key,
 placePicture varchar2(100) not null,
 placeName varchar2(100) not null,
 placeAddress clob not null,
 placeX number not null,
 placeY number not null,
 categoryname varchar2(100) not null,
 areaname varchar2(100) not null,
 constraint fk_category foreign key(categoryname) references category(categoryname),
 constraint fk_area foreign key(areaname) references area(areaname)
)

insert into place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname)
values(place_seq.nextval,'place1','한강오리배','한강변두리 44-1번지',123.66,47.44,'activity','seoul')

drop table category
drop table area
drop table place
select*from area
select*from category
select*from place



--------------------------회원, 장소 까지 
drop table travelerRange
select*from travelerRange

----공개범위설정
create table travelerRange(
trange number primary key,
trangeCategory varchar2(100) not null
)

insert into travelerRange(trange,trangeCategory)
values(1,'남자')

insert into travelerRange(trange,trangeCategory)
values(2,'여자')

insert into travelerRange(trange,trangeCategory)
values(3,'전체')

--  1 일때 남자   , 2 일때 여자  3 일때 전체공개     -- -- 0일때 전체공개 거부    //  1일때 전체공개 허용  !!수정해야함 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

drop table traveler
select*from traveler

create table traveler(
 placeNo number,
 id varchar2(100),
 tdate date not null,
 tstate number default 1,              -- 1일때 진행중   0일때 감추기
 
 trange number constraint fk_traveler_trange references travelerRange(trange),               
 
 constraint pk_placeNo foreign key(placeNo) references place,
 constraint pk_id foreign key(id) references member,
 constraint pk_traveler primary key(placeNo,id,tdate)
 )


 
 -- to_date(시간정보,포맷)
insert into date_test(id,mydate) 
values('jsp',to_date('2016/7/20 9:00:10','YYYY/MM/DD HH24:MI:SS'));
 
 
 --insert 시 sysdate가아닌 선택한 특정날짜가 입력되어야한다
insert into traveler(placeNo,id,tdate,trange)
values(1,'java',to_date('2016/7/20'),3)


---??  sysdate 로 자동으로 주면 해당날짜에 들어가는지??????? 
-- 해당날짜를 선택해서 삽입해야하는데 sysdate로
-- 들어가게되면 자동으로 현재날짜가 들어감 (생각해보기

-- to_date(시간정보,포맷)
insert into date_test(id,mydate) 
values('jsp',to_date('2016/7/20 9:00:10','YYYY/MM/DD HH24:MI:SS'));


--여행사진

drop sequence memberPicture_seq;
create sequence memberPicture_seq;

drop table memberPicture;
select*from memberPicture

create table memberPicture(
 pictureNo number primary key,
 id varchar2(100),
 filename varchar2(100) not null,
 pictureTitle varchar2(100) not null,
 pictureDate date not null,
constraint fk_member foreign key(id) references member(id)
 )

 
 insert into memberPicture(pictureNo,id,filename,pictureTitle,pictureDate)
values(memberPicture_seq.nextval,'java','iu2.jpg','강릉에서~~~!2',sysdate)



--message

drop sequence message_seq;
create sequence message_seq;

select*from message

drop table message;

create table message(
 messageNo number primary key,
 sender varchar2(100) constraint fk_message_sender references member(id),
 reciever varchar2(100) constraint fk_message_reciever references member(id),
 messageDate date not null,
 messageContent clob not null,
 messageState number default 1        --내가 내메세지를 확인안했으면 1        했으면 0으로 수정
 )
-- sender와 reciever 가 같을경우 생각해보자

insert into message(messageNo,sender,reciever,messageDate,messageContent)
values(message_seq.nextval,'java','java2',sysdate,'2번째경우')

insert into message(messageNo,sender,reciever,messageDate,messageContent)
values(message_seq.nextval,'java2','java',sysdate,'2번째경우 반대의경우')

select * from MEMBER;

 		select id,password,name,tel,sex,age,address,introduce,profileimg, range,enabled,hit from member where id = 'java' and password = '1234';
 		