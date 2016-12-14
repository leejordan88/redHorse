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

insert into member(id,password,name,tel,sex,age,address,introduce,profileImg,range)
values('java3','1234','아이유',0102226971,1,25,'판교','반갑스니다?','path3',0)



 drop table category;

 create table category(
categoryname varchar2(100) primary key,
categorypicture varchar2(100) not null
)

insert into category(categoryname,categorypicture) values('관광지','관광지.jpg');
insert into category(categoryname,categorypicture) values('맛집','맛집.jpg');
insert into category(categoryname,categorypicture) values('엑티비티','엑티비티.jpg');





drop table area;

create table area(
areaname varchar2(100) primary key,
areapicture varchar2(100) not null
)

insert into area(areaname,areapicture) values('강원도','강원도.jpg');
insert into area(areaname,areapicture) values('경기도','경기도.jpg');
insert into area(areaname,areapicture) values('경상도','경상도.jpg');
insert into area(areaname,areapicture) values('부산','부산.jpg');
insert into area(areaname,areapicture) values('서울','서울.jpg');
insert into area(areaname,areapicture) values('인천','인천.jpg');
insert into area(areaname,areapicture) values('전라도','전라도.jpg');
insert into area(areaname,areapicture) values('제주도','제주도.jpg');
insert into area(areaname,areapicture) values('충청도','충청도.jpg');






drop sequence place_seq;
create sequence place_seq;

select place_seq.nextval from dual;
select place_seq.currval from dual;


 drop table category;
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


-- 12/10 수정  DeleteState (send, receive) 두가지 추가
create table message(
 messageNo number primary key,
 id varchar2(100) constraint fk_message_id references member(id),
 sender varchar2(100) constraint fk_message_sender references member(id),
 receiver varchar2(100) constraint fk_message_receiver references member(id),
 messageDate date not null,
 messageContent clob not null,
 messageState number default 1 ,       --내가 내메세지를 확인안했으면 1        했으면 0으로 수정
 receiveDeleteState number default 1, 
 sendDeleteState number default 1  
 )
-- sender와 receiver 가 같을경우 생각해보자

insert into message(messageNo,sender,receiver,messageDate,messageContent)
values(message_seq.nextval,'java1','java2',sysdate,'받은삭제');

insert into message(messageNo,sender,receiver,messageDate,messageContent)
values(message_seq.nextval,'java2','java1',sysdate,'보낸삭제');

insert into message(messageNo,sender,receiver,messageDate,messageContent)
values(message_seq.nextval,'java1','java2',sysdate,'ㅇ?');

insert into message(messageNo,sender,receiver,messageDate,messageContent)
values(message_seq.nextval,'java1','java3',sysdate,'ㅇ');

----------------------------------------------
-- 미확인 메세지 띄우는창
-- 현재 유효한 session값

--날짜순 정렬과  //  최근 5개만 보여주기


--보낸쪽지
select ms.receiver, ms.messageContent, ms.messageDate, m2.profileIMG
from message ms, member m, member m2 
where ms.receiver=m2.id and m.id='java' and ms.messageState=1 and not ms.receiver='java' ;
--------

--받은쪽지 - 확인안됨 

select ms.receiver, ms.messageContent, ms.messageDate, m2.profileIMG
from message ms, member m, member m2 
where  ms.sender=m2.id  and ms.receiver=m.id  and ms.messageState=1 and  ms.receiver='java1'  ;


--받은쪽지 - 전체 

select ms.receiver, ms.messageContent, ms.messageDate, m2.profileIMG
from message ms, member m, member m2 
where  ms.sender=m2.id  and ms.receiver=m.id  and  ms.receiver='java'  ;


  select receiver, messageContent, messageDate
from message
where sender='java1';


select count(*)from 
message where messageState=1 and receiver='java1'

select *from 
message where messageState=1 and receiver='java1'





select messageNo,sender,receiver, messageContent, messageDate, profileIMG 
from message 
where  messageState=1 and receiver='java1'



select rnum, messageNo, sender ,receiver, messageDate, messageContent, messageState FROM
( SELECT row_number() over(order by messageNo desc)  as rnum, messageNo,sender,receiver,messageDate,messageContent,messageState  FROM message
where receiver ='java1'  ) rnum
where   rnum  between 1 and 4 order by messageNo desc


-- 받은쪾지 페이징빈
select rnum, messageNo,sender,receiver,messageDate,messageContent,messageState, profileIMG, receiveDeleteState FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo,ms.receiveDeleteState, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,ms.messageState, m2.profileIMG   
FROM message ms, member m2 
where ms.sender=m2.id and  ms.receiver ='java1' and ms.receiveDeleteState=1)  rnum
where   rnum  between 1 and 4 order by messageNo desc



-- 안읽은쪽지페이징빈
select rnum, messageNo,sender,receiver,messageDate,messageContent,messageState, profileIMG FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,ms.messageState, m2.profileIMG   
FROM message ms, member m2 
where ms.messageState=1 and ms.sender=m2.id and  ms.receiver ='java1')  rnum
where   rnum  between 1 and 4 order by messageNo desc


 -- 보낸쪽지 수정전 
select rnum, messageNo, receiver, sender, messageContent , messageDate FROM
( SELECT row_number() over(order by messageNo desc)  as rnum, messageNo,messageContent, messageDate, sender, receiver  FROM message
where sender =#{messageVO.id}) rnum
where   rnum  between #{startRowNumber} and #{endRowNumber}  order by messageNo desc



-- list 삭제 된 메세지 추가 
select rnum, messageNo,sender,receiver,messageDate,messageContent,messageState,receiveDeleteState, profileIMG FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum, ms.receiveDeleteState, ms.messageNo, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,ms.messageState, m2.profileIMG   
FROM message ms, member m2 
where ms.sender=m2.id and  ms.receiver ='java1' and ms.receiveDeleteState=1)  rnum
where   rnum  between 1 and  4 order by messageNo desc


select rnum, messageNo,sender,receiver,messageDate,messageContent,messageState,receiveDeleteState, profileIMG FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.receiveDeleteState, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,ms.messageState, m2.profileIMG   
FROM message ms, member m2 
where ms.sender=m2.id and  ms.receiver ='java2' and ms.receiveDeleteState=1)  rnum
where   rnum  between 1 and 4 order by messageNo desc


select receiver, messageContent, messageDate,receiveDeleteState
from message
where receiver='java2';


select count(*)from message where receiver='java2'
 select count(*)from message where receiver='java2' and receiveDeleteState=0
 select count(*)from message where receiver='java2' and receiveDeleteState=1
 
 select count(*)from message where sender='java2'
 
  select count(*)from message where  receiver='java2' 
  and receiveDeleteState=1
 
  select count(*)from message where messageState=1 and receiver='java2' and receiveDeleteState=1
  
  
  
  select rnum, messageNo,sender,receiver,messageDate,messageContent,messageState, profileIMG FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.receiveDeleteState, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,ms.messageState, m2.profileIMG   
FROM message ms, member m2 
where ms.sender=m2.id and  ms.receiver ='java2' and ms.receiveDeleteState=0)  rnum
where   rnum  between #{startRowNumber} and  #{endRowNumber} order by messageNo desc




select rnum, messageNo,sender,receiver,messageDate,messageContent,messageState, profileIMG FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.receiveDeleteState, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,ms.messageState, m2.profileIMG   
FROM message ms, member m2 
where ms.sender=m2.id and  ms.sender ='java2' ) 


--보낸 메세지 개수 확인
-- 보낸 메세지  보존 6   삭제 5      전체 11
select receiver, messageNo,messageContent, messageDate,receiveDeleteState
from message
where sender='java2';

select receiver, messageContent, messageDate,sendDeleteState
from message
where sender='java2' and sendDeleteState=1;

select receiver, messageContent, messageDate,sendDeleteState
from message
where sender='java2' and sendDeleteState=0;

--받은메세지 개수확인
--전체 8  보존 5    삭제 3
select receiver, messageNo,messageContent, messageDate,receiveDeleteState
from message
where receiver='java2';

select receiver, messageContent, messageDate,receiveDeleteState,sender
from message
where receiver='java2' and receiveDeleteState=1;

select receiver, messageContent, messageDate,receiveDeleteState,sender
from message
where receiver='java2' and receiveDeleteState=0;

--전체 
-- 합 19  보존 11 삭제 8

select receiver, messageNo,messageContent, messageDate,receiveDeleteState,sendDeleteState
from message
where receiver='java2' and receiveDeleteState=0  or sender='java2' and sendDeleteState=0;

select receiver, messageNo,messageContent, messageDate,receiveDeleteState,sendDeleteState
from message
where receiver='java2' and receiveDeleteState=0 or sender='java2'  and sendDeleteState=0 ;

--------------------------------

select rnum, messageNo,sender,receiver,messageDate,messageContent,messageState, profileIMG FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.receiveDeleteState, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,ms.messageState, m2.profileIMG   
FROM message ms, member m2 
where  ms.sender ='java2' and ms.sendDeleteState=0 or ms.receiver='java2' and ms.receiveDeleteState=0) 


select ms1.sender, ms2.receiver, ms1.messageNo, ms2.messageContent, ms1.messageDate, ms1.receiveDeleteState, ms2.sendDeleteState
from message ms1, message ms2 , member m1, member m2
where ms1.receiver='java2' and ms1.receiveDeleteState=0   or    ms2.sender='java2'  and ms2.sendDeleteState=0 and  m1.id=ms1.sender and m2.id=ms2.receiver;





select receiver, messageNo,messageContent, messageDate,receiveDeleteState,sendDeleteState
from message
where receiver='java2' and receiveDeleteState=0 or sender='java2' and sendDeleteState=0 ;



-- member 참조없이  java2의 메세지만 조회해을경우  8 경우
select receiver, messageNo,messageContent, messageDate,receiveDeleteState,sendDeleteState
from message
where receiver='java2' and receiveDeleteState=0 or sender='java2' and sendDeleteState=0 ;

update message set sendDeleteState=0 where messageNo=22

select ms1.sender, ms2.receiver, ms1.messageNo, ms2.messageContent, ms1.messageDate, ms1.receiveDeleteState, ms2.sendDeleteState
from message ms1, message ms2 , member m1, member m2
where ms1.receiver='java2' and ms1.receiveDeleteState=0  m1.id=ms1.sender  or  ms2.sender='java2'  and ms2.sendDeleteState=0  m2.id=ms2.receiver;

select ms1.sender, ms2.receiver, ms1.messageNo, ms2.messageContent, ms1.messageDate, ms1.receiveDeleteState, ms2.sendDeleteState
from message ms1, message ms2 , member m
where ms1.receiver='java2' and ms1.receiveDeleteState=0  m1.id=ms1.sender or  ms2.sender='java2'  and ms2.sendDeleteState=0  m2.id=ms2.receiver;



select ms.sender,ms.receiver, ms.messageNo,ms.messageContent, ms.messageDate,ms.receiveDeleteState,ms.sendDeleteState,m.profileIMG
from message ms, member m
where ms.receiver='java2' and ms.receiveDeleteState=0 and  ms.sender=m.id or ms.sender='java2' and ms.sendDeleteState=0 and ms.receiver=m.id;



select receiver, messageNo,messageContent, messageDate,receiveDeleteState,sendDeleteState
from message
where receiver='java2' and receiveDeleteState=0  or sender='java2' and sendDeleteState=0 ;



select rnum, messageNo,sender,receiver,messageDate,messageContent, profileIMG, sendDeleteState,receiveDeleteState FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,m.profileIMG , ms.sendDeleteState,ms.receiveDeleteState
FROM message ms, member m
where ms.receiver='java2' and ms.receiveDeleteState=0 and  ms.sender=m.id or ms.sender='java2' and ms.sendDeleteState=0 and ms.receiver=m.id)  rnum
where   rnum  between 1 and  20 order by messageNo desc



select rnum, messageNo,sender,receiver,messageDate,messageContent, profileIMG, sendDeleteState,receiveDeleteState FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,m.profileIMG , ms.sendDeleteState,ms.receiveDeleteState
FROM message ms, member m
where ms.receiver=#{messageVO.id} and ms.receiveDeleteState=0 and  ms.sender=m.id or ms.sender=#{messageVO.id} and ms.sendDeleteState=0 and ms.receiver=m.id)  rnum
where   rnum  between 1 and  20 order by messageNo desc


select rnum, messageNo,sender,receiver,messageDate,messageContent, profileIMG, sendDeleteState,receiveDeleteState FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,m.profileIMG , ms.sendDeleteState,ms.receiveDeleteState
FROM message ms, member m
where ms.receiver='java2' and ms.receiveDeleteState=0 and  ms.sender=m.id or ms.sender='java2' and ms.sendDeleteState=0 and ms.receiver=m.id)  rnum
where   rnum  between 1 and  20 order by messageNo desc



select rnum, messageNo,sender,receiver,messageDate,messageContent, profileIMG, sendDeleteState,receiveDeleteState FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,m.profileIMG , ms.sendDeleteState,ms.receiveDeleteState
FROM message ms, member m
where ms.receiver='java2' and ms.receiveDeleteState=0 and  ms.sender=m.id or ms.sender='java2' and ms.sendDeleteState=0 and ms.receiver=m.id)  rnum
where   rnum  between 1 and 20 order by messageNo desc


select count(*)from message where receiver='java2' and receiveDeleteState=0 or sender='java2' and sendDeleteState=0


select rnum, messageNo,sender,receiver,messageDate,messageContent, profileIMG, sendDeleteState,receiveDeleteState FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,m.profileIMG , ms.sendDeleteState,ms.receiveDeleteState
FROM message ms, member m
where ms.receiver='java2' and ms.receiveDeleteState=0 and  ms.sender=m.id or ms.sender='java2' and ms.sendDeleteState=0 and ms.receiver=m.id)  rnum
where   rnum  between 1 and 20 order by messageNo desc




select rnum, messageNo,sender,receiver,messageDate,messageContent,messageState, profileIMG FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,ms.messageState,ms.receiveDeleteState, m2.profileIMG   
FROM message ms, member m2 
where ms.messageState=1 and ms.sender=m2.id and  ms.receiver ='java2' and ms.receiveDeleteState=1)  rnum
where   rnum  between 1 and 20 order by messageNo desc


  select rnum, messageNo,sender,receiver,messageDate,messageContent,messageState, profileIMG FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,ms.messageState,ms.receiveDeleteState, m2.profileIMG   
FROM message ms, member m2 
where ms.messageState=1 and ms.sender=m2.id and  ms.receiver =#{messageVO.id}  and ms.receiveDeleteState=1)  rnum
where   rnum  between #{startRowNumber} and #{endRowNumber} order by messageNo desc


