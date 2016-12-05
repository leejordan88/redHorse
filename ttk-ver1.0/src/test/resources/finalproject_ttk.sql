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



-- 멤버 테이블
select *from member;
drop table member
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

-- 지역 테이블 
select*from area
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

-- 카테고리 테이블 
select*from category
drop table category;
create table category(
categoryname varchar2(100) primary key,
categorypicture varchar2(100) not null
)
insert into category(categoryname,categorypicture) values('관광지','관광지.jpg');
insert into category(categoryname,categorypicture) values('맛집','맛집.jpg');
insert into category(categoryname,categorypicture) values('엑티비티','엑티비티.jpg');  
 
-- place 시퀀스 생성
drop sequence place_seq;
create sequence place_seq;

select place_seq.nextval from dual;
select place_seq.currval from dual;

-- 세부장소 테이블
select*from place
drop table place
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
values(place_seq.nextval,'place1','한강오리배','한강변두리 44-1번지',123.66,47.44,'엑티비티','서울')
insert into place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname)
values(place_seq.nextval,'place2','롯데월드_아이스링크','05554  서울 송파구 올림픽로 240 (롯데월드)',37.51157,127.0979,'엑티비티','서울')

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

insert into traveler(placeNo,id,tdate,trange)
values(1,'java2',to_date('2016/7/20'),3)

insert into traveler(placeNo,id,tdate,trange)
values(2,'java',to_date('2016/7/20'),3)

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
 pictureContent clob not null,
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
 receiver varchar2(100) constraint fk_message_reciever references member(id),
 messageDate date not null,
 messageContent clob not null,
 messageState number default 1        --내가 내메세지를 확인안했으면 1        했으면 0으로 수정
 )
-- sender와 reciever 가 같을경우 생각해보자

insert into message(messageNo,sender,receiver,messageDate,messageContent)
values(message_seq.nextval,'java','java2',sysdate,'2번째경우')

insert into message(messageNo,sender,receiver,messageDate,messageContent)
values(message_seq.nextval,'java2','java',sysdate,'2번째경우 반대의경우')


-- 핫플레이스 랭킹 5 

	select p.areaname, p.categoryname, p.placeName, t.placeNo, rank() over(order by count(t.id) desc)ranking
	from traveler t, place p
	where p.placeNo=t.placeNo 
	group by p.areaName, p.categoryName, p.placeName, t.placeNo
	
	select from(
	select p.areaName, p.categoryName, p.placeName, t.placeNo, rank() over(order by count(t.id) desc)as rank
	from traveler t, place p
	where p.placeNo=t.placeNo 
	group by p.areaName, p.categoryName, p.placeName, t.placeNo)place, traveler where rank<=5;
	

		<![CDATA[
		SELECT KEYWORD,COUNT,RANKING FROM(
		SELECT KEYWORD,COUNT,RANK() OVER(ORDER BY COUNT DESC)
		AS RANKING FROM REPORT
		) WHERE RANKING <= 5
	]]>
	
	급여가 부서번호 20인 부서의 평균 급여보다 크고 사원을 관리하는 사원으로서 
     부서번호 20인 부서에 속하지 않은 사원의 정보를 보여주는 SQL문 입니다.
 
SQL>SELECT b.empno, b.ename, b.job, b.sal, b.deptno
        FROM (SELECT empno
                  FROM emp  
                  WHERE sal >(SELECT AVG(sal) FROM emp WHERE deptno = 20)
                 ) a, emp b
        WHERE a.empno = b.empno AND b.mgr is NOT NULL AND b.deptno != 20;
	 
    select rank() over(order by tcount desc)as ranking from(select t.placeNo, count(t.id) as tcount from traveler group by placeNo)  
        등록자 수가 많은 장소로 랭킹
	select p.areaname, p.categoryname, p.placeName, tcount, ranking from(
	select rank() over(order by tcount desc) as ranking from(
	(select placeNo, count(id) as tcount from traveler group by placeNo)))t, place p
	where t.placeNo = p.placeNo and rank<=5
        
	select p.areaname, p.categoryname, p.placeName, t.placeNo, rank() over(order by count(t.id) desc)rank
	from traveler t, place p
	where p.placeNo=t.placeNo 
	group by p.areaName, p.categoryName, p.placeName, t.placeNo
        

select areaname, categoryname, placeName, placeNo, rank from(
select p.areaname, p.categoryname, p.placeName, t.placeNo, rank() over(order by count(t.id) desc) as rank
	from traveler t, place p
	where p.placeNo=t.placeNo 
	group by p.areaname, p.categoryname, p.placeName, t.placeNo) where rank<=5

	
	
	select p.areaname, p.categoryname, p.placeName, t.placeNo, rank() over(order by count(t.id) desc) as rank
	from traveler t, place p
	where p.placeNo=t.placeNo and rank<=5
	group by p.areaname, p.categoryname, p.placeName, t.placeNo
	
	
	
	

	
	