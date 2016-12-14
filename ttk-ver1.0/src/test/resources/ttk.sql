

--create table member ( sex(남1,여2) ,  
--create table memberPicture( pictureNo number primary key,  --사진 업로드 쏩기

--create table traveler(  tstate number default 1,     

select sex,pictureNo,tstate,count(*) from a.member,b.memberPicture,c.traveler 
group by a.sex,b.poctureNo,c.tstate
--distinct

--통계 12/6 진석
select distinct(select count(sex) from member where sex=1 group by sex) as male
,(select count(sex) from member where sex=2 group by sex) as female
,(select count(*) from memberPicture) as pictureNo
,(select count(*) from traveler where tstate=2) as tstate  
from member

--distinct  중복값 제거



select * from MEMBER
where sex=1
select count(*) from memberPicture
select count(*) from traveler
where tstate=2

select m.sex, p.pictureNo, t.tstate from member m, memberPicture p, traveler t
where m.id=p.id
and p.id=t.id


-- sex 값 남, 여 한번에 추출
select sex,count(sex) from member
group by sex;

select count(*) from member where sex='1'

--member13명 삽입, category, area, place 등록 완료

select *from memberRange;
drop table memberRange;

  -- 0일때 전체공개 거부    //  1일때 전체공개 허용    -- 프로필리스트에서
create table memberRange(
range number primary key,
rangeCategory varchar2(100) not null
);

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
   tel varchar2(100) not null,
   sex number not null,				--1Male, 2Female 
   age number not null,
   address varchar2(100) not null,
   introduce clob,
   profileIMG varchar2(100) not null,
   range number constraint fk_member_range references memberRange(range),
   enabled number default 1,           --1 일때 활성,    0 일때 비활성
   hit number default 0
 );

insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java1','1234', '준성', '01011111111', '1', '29', '안양', '안녕하세요', '준성.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java2','1234', '영해', '01011111111', '1', '28', '판교', '안녕하세요', '영해.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java3','1234', '예원', '01011111111', '2', '23', '용인', '안녕하세요', '예원.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java4','1234', '효민', '01011111111', '2', '24', '수원', '안녕하세요', '효민.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java5','1234', '영주', '01011111111', '2', '23', '과천', '안녕하세요', '영주.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java6','1234', '진석', '01011111111', '1', '25', '수원', '안녕하세요', '진석.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java7','1234', '한지민', '01011111111', '2', '40', '서울', '안녕하세요', '한지민.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java8','1234', '초아', '01011111111', '2', '27', '서울', '안녕하세요', '초아.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java9','1234', '공유', '01011111111', '1', '40', '서울', '안녕하세요', '공유.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java10','1234', '지섭', '01011111111', '1', '40', '서울', '안녕하세요', '지섭.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java11','1234', '승호', '01011111111', '1', '24', '서울', '안녕하세요', '승호.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java12','1234', '유라', '01011111111', '2', '50', '감옥', '안녕하세요', '유라.jpg', '1');
insert into  member(id,password,name,tel,sex,age,address,introduce,profileImg,range) values ( 'java13','1234', '설현', '01011111111', '2', '20', '서울', '안녕하세요', '설현.jpg', '1');


 drop table category;

 create table category(
categoryname varchar2(100) primary key,
categorypicture varchar2(100) not null
);

insert into category(categoryname,categorypicture) values('관광지','관광지.jpg');
insert into category(categoryname,categorypicture) values('맛집','맛집.jpg');
insert into category(categoryname,categorypicture) values('엑티비티','엑티비티.jpg');

drop table area;
create table area(
areaname varchar2(100) primary key,
areapicture varchar2(100) not null
);

insert into area(areaname,areapicture) values('강원도','강원도.jpg');
insert into area(areaname,areapicture) values('경기도','경기도.jpg');
insert into area(areaname,areapicture) values('경상도','경상도.jpg');
insert into area(areaname,areapicture) values('부산','부산.jpg');
insert into area(areaname,areapicture) values('서울','서울.jpg');
insert into area(areaname,areapicture) values('인천','인천.jpg');
insert into area(areaname,areapicture) values('전라도','전라도.jpg');
insert into area(areaname,areapicture) values('제주도','제주도.jpg');
insert into area(areaname,areapicture) values('충청도','충청도.jpg');


--오류
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
);


select * from place where areaname = '강원도' and categoryname = '맛집';

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
values(1,'남자');

insert into travelerRange(trange,trangeCategory)
values(2,'여자');

insert into travelerRange(trange,trangeCategory)
values(3,'전체');

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
values('jsp',to_date('2016/7/20 9:00:10','YYYY-MM-DD HH24:MI:SS'));
 
 
 --insert 시 sysdate가아닌 선택한 특정날짜가 입력되어야한다
insert into traveler(placeNo,id,tdate,trange)
values(1,'java',to_date('2016-12-02'),3)


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
 fileName varchar2(100) not null,
 pictureTitle varchar2(100) not null,
 pictureDate date not null,
 pictureContent clob not null,
 hit number default 0,
constraint fk_member foreign key(id) references member(id)
 )

 
 insert into memberPicture(pictureNo,id,fileName,pictureTitle,pictureDate)
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


insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '1','남산_N서울타워.jpg', '남산_N서울타워', '04340  서울 용산구 남산공원길 105 (용산동2가, YTN서울타워)', '37.551399', '126.988184', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '2','중구_위안부_기억의터.jpg', '중구_위안부_기억의터', '04628  서울 중구 퇴계로26가길 6 (예장동)', '37.559061', '126.990767', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '3','합정_겟앤쇼.jpg', '합정_겟앤쇼', '서울특별시 마포구 독막로3길 25', '37.549737', '126.916858', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '4','종로_빈티지보니.jpg', '종로_빈티지보니', '03133  서울 종로구 수표로28길 21-17', '37.573927', '126.98967', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '5','종로_우연수집.jpg', '종로_우연수집', '03037  서울 종로구 옥인길 33 (누상동)', '37.581126', '126.9668', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '6','종로_아르코미술관.jpg', '종로_아르코미술관', '03087  서울 종로구 동숭길 3 (동숭동, 한국문화예술진흥원)  ', '37.580705', '127.003223', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '7','북촌문화센터.jpg', '북촌문화센터', '서울특별시 종로구 계동길 37 북촌문화센터', '37.579278', '126.986365', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '8','강남_피규어뮤지엄.jpg', '강남_피규어뮤지엄', '서울특별시 강남구 청담동 84-9 피규어뮤지엄w', '37.525991', '127.040374', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '9','국립현대미술관.jpg', '국립현대미술관', '03062  서울 종로구 삼청로 30 (소격동)  국립현대미술관', '37.579528', '126.980369', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '10','명동성당.jpg', '명동성당', '04537  서울 중구 명동길 74 (명동2가, 명동성당)  ', '37.563384', '126.987322', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '11','송파_올림픽공원.jpg', '송파_올림픽공원', '05540  서울 송파구 올림픽로 424 (방이동, 올림픽공원)', '37.521189', '127.121521', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '12','신사동_카이스갤러리.jpg', '신사동_카이스갤러리', '서울특별시 강남구 언주로174길 13', '37.528851', '127.034925', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '13','서초_삼성딜라이트.jpg', '서초_삼성딜라이트', '서울특별시 서초구 서초2동 서초대로74길 11', '37.497063', '127.026569', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '14','종로_대한믹국역사박물관.jpg', '종로_대한믹국역사박물관', '서울특별시 종로구 세종대로 198', '37.57402', '126.978089', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '15','마포_트릭아이미술관.jpg', '마포_트릭아이미술관', '서울특별시 마포구 홍익로3길 20 서교프라자', '37.553768', '126.921741', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '16','강남_풍월당.jpg', '강남_풍월당', '서울특별시 강남구 신사동 657-37 성산빌딩 4, 5층', '37.525995', '127.038895', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '17','용산_전쟁기념관.jpg', '용산_전쟁기념관', '04353  서울 용산구 이태원로 29 (용산동1가, 전쟁기념관)  ', '37.537108', '126.977139', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '18','광화문광장.jpg', '광화문광장', '서울특별시 종로구 세종대로 172', '37.565803', '126.978036', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '19','신촌_플레이버스.jpg', '신촌_플레이버스', '서울특별시 서대문구 연세로5길 11 신촌플레이버스', '37.557203', '126.936545', '관광지', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '20','종로_테지움_서울.jpg', '종로_테지움_서울', '서울특별시 종로구 지봉로 19', '37.57198', '127.015142', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '21','명동_실탄사격장.jpg', '명동_실탄사격장', '04537  서울 중구 명동8가길 27', '37.562072', '126.986417', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '22','보라매_암벽등반장.jpg', '보라매_암벽등반장', '서울특별시 동작구 보라매로5길 28 동작구민회관', '37.490297', '126.921063', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '23','태릉_아이스링크.jpg', '태릉_아이스링크', '서울특별시 노원구 화랑로 681', '37.638572', '127.102887', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '24','롯데월드_아이스링크.jpg', '롯데월드_아이스링크', '05554  서울 송파구 올림픽로 240 (롯데월드)', '37.51157', '127.0979', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '25','상암_서울월드컵경기장.jpg', '상암_서울월드컵경기장', '서울특별시 마포구 성산2동 월드컵로 240', '37.568548', '126.897277', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '26','마포대교_야경.jpg', '마포대교_야경', '서울특별시 영등포구 여의동로 330', '37.526572', '126.933507', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '27','하늘공원_야경.jpg', '하늘공원_야경', '서울특별시 마포구 하늘공원로 95 탐방객안내소', '37.568358', '126.884923', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '28','뚝섬_한강공원_수영장.jpg', '뚝섬_한강공원_수영장', '서울특별시 광진구 자양동 112', '37.529571', '127.067079', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '29','여의도_한강공원_수영장.jpg', '여의도_한강공원_수영장', '서울특별시 영등포구 여의도동 82-3', '37.533438', '126.920512', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '30','롯데월드_어드벤처.jpg', '롯데월드_어드벤처', '서울특별시 송파구 올림픽로 240 롯데월드', '37.511516', '127.098092', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '31','코엑스_아쿠아리움.jpg', '코엑스_아쿠아리움', '서울특별시 강남구 삼성1동 영동대로 513', '37.512908', '127.058845', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '32','63스퀘어.jpg', '63스퀘어', '서울특별시 영등포구 여의도동 63로 50', '37.519573', '126.940146', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '33','잠실_헬기장.jpg', '잠실_헬기장', '서울특별시 송파구 한가람로 65', '37.519245', '127.072631', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '34','플랫폼창동61.jpg', '플랫폼창동61', '서울특별시 도봉구 창동 1-9', '37.654289', '127.04837', '엑티비티', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '35','동대문_진옥화할매_닭한마리.jpg', '동대문_진옥화할매_닭한마리', '서울특별시 종로구 종로5가 265-22', '37.570616', '127.005738', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '36','역삼동_능라도.jpg', '역삼동_능라도', '서울 강남구 역삼동 655-12', '37.507595', '127.038261', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '37','선릉_피양콩_할머니.jpg', '선릉_피양콩_할머니', '서울특별시 강남구 삼성로81길 30', '37.504344', '127.055228', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '38','홍대_박용석스시.jpg', '홍대_박용석스시', '서울특별시 마포구 와우산로29길 57', '37.556108', '126.927006', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '39','연남동_툭툭누들타이.jpg', '연남동_툭툭누들타이', '서울특별시 마포구 성미산로 161-8', '37.565386', '126.923928', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '40','양재_임병주_산동칼국수.jpg', '양재_임병주_산동칼국수', '서울특별시 서초구 강남대로37길 63 ', '37.484738', '127.029947', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '41','서초구_스바루.jpg', '서초구_스바루', '서울특별시 서초구 방배동 18-23', '37.495638', '126.98933', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '42','용산_오근내_닭갈비.jpg', '용산_오근내_닭갈비', '서울특별시 용산구 이촌로29길 15', '37.524664', '126.959691', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '43','종로구_부산식당.jpg', '종로구_부산식당', '서울특별시 종로구 인사동11길 12', '37.574096', '126.983912', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '44','종로구_용수산.jpg', '종로구_용수산', '서울특별시 종로구 창덕궁1길 2 용수산', '37.579636', '126.989094', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '45','종로_두가헌.jpg', '종로_두가헌', '서울특별시 종로구 사간동 109', '37.577294', '126.980253', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '46','강남_곰바위.jpg', '강남_곰바위', '서울특별시 강남구 삼성1동 76-10', '37.51512', '127.058769', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '47','강남_그라노.jpg', '강남_그라노', '서울특별시 강남구 신사동 645-1', '37.526425', '127.034887', '맛집', '서울');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '48','춘천_남이섬.jpg', '춘천_남이섬', '강원도 춘천시 남산면 남이섬길1', '37.791634', '127.52552', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '49','인제_설악산.jpg', '인제_설악산', '강원도 인제군 북면 용대리', '38.162231', '128.44198', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '50','태백_태백산.jpg', '태백_태백산', '강원도 태백시 혈동', '37.096064', '128.915208', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '51','춘천_소양강.jpg', '춘천_소양강', '강원도 춘천시 신북읍 지내리', '37.963908', '127.730197', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '52','강릉_경포대.jpg', '강릉_경포대', '강원도 강릉시 저동 104-1', '37.795602', '128.896596', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '53','양양_낙산사.jpg', '양양_낙산사', '강원도 양양군 강현면 낙산사로 100', '38.12481', '128.628045', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '54','강릉_정동진.jpg', '강릉_정동진', '강원도 강릉시 강동면 정동역길 ', '1737.691091', '129.034459', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '55','속초_아바이마을.jpg', '속초_아바이마을', '강원도 속초시 청호로 122', '38.200918', '128.594813', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '56','평창_대관령양떼목장.jpg', '평창_대관령양떼목장', '강원도 평창군 대관령면 대관령마루길 483-32', '37.689761', '128.753067', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '57','영월_별마로천문대.jpg', '영월_별마로천문대', '강원도 영월군 영월읍 영흥리 154-3', '37.198605', '128.486766', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '58','강릉_모래시계공원.jpg', '강릉_모래시계공원', '강원도 강릉시 강동면 정동진리 2', '37.687036', '129.037518', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '59','양양_남대천갈대숲.jpg', '양양_남대천갈대숲', '강원도 양양군 양양읍 남문리', '38.10745', '128.643643', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '60','영월_동강.jpg', '영월_동강', '강원도 영월군 영월읍 하송리 61-9', '37.179362', '128.469344', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '61','속초_대포항.jpg', '속초_대포항', '강원 속초시 대포동', '38.173838', '128.60706', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '62','철원_고석정.jpg', '철원_고석정', '강원도 철원군 동송읍 장흥리 725-13', '38.185367', '127.288001', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '63','강릉_오죽헌.jpg', '강릉_오죽헌', '강릉_오죽헌', '37.779535', '128.878065', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '64','영월_청령포.jpg', '영월_청령포', '강원도 영월군 남면 광천리 산 67-1', '37.17634', '128.445685', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '65','춘천_청평사.jpg', '춘천_청평사', '강원도 춘천시 북산면 청평리 674', '37.98668', '127.808898', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '66','원주_치악산.jpg', '원주_치악산', '강원도 원주시 소초면 900', '37.371971', '128.050392', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '67','삼척_죽서루.jpg', '삼척_죽서루', '강원도 삼척시 성내동 9-3', '37.440992', '129.160397', '관광지', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '68','강릉_아라나비.jpg', '강릉_아라나비', '강원도 강릉시 남항진동 1-4번지(남항진 해변)', '37.767222', '128.951233', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '69','홍천_오션월드.jpg', '홍천_오션월드', '강원도 홍천군 서면 한치골길 262', '37.64845', '127.685705', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '70','삼척_삼척해양레일바이크.jpg', '삼척_삼척해양레일바이크', '강원도 삼척시 근덕면 궁촌리 151-2', '37.323665', '129.266194', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '71','속초_설악워터피아.jpg', '속초_설악워터피아', '강원도 속초시 장사동 24-63', '38.208432', '128.528333', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '72','정선_강원랜드.jpg', '정선_강원랜드', '강원도 정선군 사북읍 사북리 424', '37.214005', '128.821574', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '73','평창_휘닉스파크.jpg', '평창_휘닉스파크', '강원도 평창군 봉평면 면온리 946-7', '37.579316', '128.331756', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '74','태백_태백산눈썰매장.jpg', '태백_태백산눈썰매장', '강원도 태백시 문곡동 산68-1', '37.11765', '128.951565', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '75','철원_한탄강래프팅.jpg', '철원_한탄강래프팅', '강원도 철원군 갈말읍 군탄리 707-15', '38.183308', '127.299882', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '76','춘천_강촌레일바이크.jpg', '춘천_강촌레일바이크', '강원도 춘천시 신동면 김유정로 1383', '37.815827', '127.712181', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '77','강릉_정동진레일바이크.jpg', '강릉_정동진레일바이크', '강원도 강릉시 강동면 정동역길 17 정동진역', '37.691714', '129.032672', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '78','영월_동강래프팅.jpg', '영월_동강래프팅', '강원도 영월군 영월읍 동강로 826', '37.233568', '128.510264', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '79','인제_내린천번지점프.jpg', '인제_내린천번지점프', '강원도 인제군 인제읍 강원 인제군 인제읍 합강1리 합강정공원 내', '38.077477', '128.186727', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '80','강릉승마장.jpg', '강릉승마장', '강원도 강릉시 강동면 안인진리 산19', '37.726231', '128.981745', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '81','삼척_삼척바다열차.jpg', '삼척_삼척바다열차', '강원도 삼척시 사직동 51-14', '37.430473', '129.177674', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '82','인제_인제스피디움 레이싱장.jpg', '인제_인제스피디움 레이싱장', '강원도 인제군 기린면 상하답로 130', '38.005732', '128.290515', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '83','인제_인제기룡산패러글라이딩.jpg', '인제_인제기룡산패러글라이딩', '강원도 인제군 인제읍 남북리', '38.081895', '128.152681', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '84','속초_속초카누경기장.jpg', '속초_속초카누경기장', '강원도 속초시 영랑호반길 603', '38.222023', '128.586583', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '85','속초_설악씨네라마.jpg', '속초_설악씨네라마', '강원도 속초시 장사동 24-58', '38.209144', '128.525763', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '86','춘천_강촌엘리시안.jpg', '춘천_강촌엘리시안', '강원도 춘천시 남산면 백양리 21-1', '37.822664', '127.589885', '엑티비티', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '87','춘천_농가닭갈비.jpg', '춘천_농가닭갈비', '강원 춘천시 신북읍 천전리 672-22', '37.929982', '127.778854', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '88','강릉_큰기와집.jpg', '강릉_큰기와집', '강원도 강릉시 강동면 정동진리 449', '37.70298', '129.015714', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '89','속초_만석닭강정.jpg', '속초_만석닭강정', '강원도 속초시 중앙동 471-118', '38.204984', '128.5901', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '90','속초_88생선구이.jpg', '속초_88생선구이', '강원도 속초시 중앙동 468-55', '38.203947', '128.591893', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '91','속초_옛북청아바이순대.jpg', '속초_옛북청아바이순대', '강원도 속초시 청호동 874', '38.202522', '128.59379', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '92','춘천_유포리막국수.jpg', '춘천_유포리막국수', '강원도 춘천시 신북읍 유포리 62-2', '37.946388', '127.778273', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '93','인제_고향집.jpg', '인제_고향집', '강원도 인제군 기린면 현리 196-2', '37.945915', '128.328934', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '94','정선_동박골.jpg', '정선_동박골', '강원도 정선군 정선읍 봉양2길 21', '37.379186', '37.379186', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '95','태백_태백닭갈비.jpg', '태백_태백닭갈비', '강원도 태백시 황지동 44-131', '37.17162', '128.990735', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '96','평창_금천회관.jpg', '평창_금천회관', '강원도 평창군 대관령면 수하리 324-7', '37.672837', '128.706356', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '97','속초_황금물회.jpg', '속초_황금물회', '강원도 속초시 조양동 1548-8', '38.190647', '128.586344', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '98','속초_삼고집.jpg', '속초_삼고집', '강원 속초시 조양동 1542-7', '38.19236', '128.582083', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '99','횡성_통나무집.jpg', '횡성_통나무집', '강원도 횡성군 둔내면 자포곡리 364-9', '37.512196', '128.22538', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '100','강릉_강릉짬뽕순두부.jpg', '강릉_강릉짬뽕순두부', '강원도 강릉시 초당순두부길77번길 15', '37.791322', '128.914701', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '101','양양_동해막국수.jpg', '양양_동해막국수', '강원도 양양군 현남면 지경리 2-4', '37.929169', '128.803718', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '102','양양_공가네감자옹심이.jpg', '양양_공가네감자옹심이', '강원도 양양군 양양읍 남문리 54', '38.075571', '128.6232', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '103','속초_싸리재토종닭.jpg', '속초_싸리재토종닭', '강원도 속초시 노학동 452-5', '38.186015', '128.560162', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '104','양양_송이버섯마을.jpg', '양양_송이버섯마을', '강원도 양양군 양양읍 안산1길 74-48', '38.07049', '128.625662', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '105','양양_도원촌.jpg', '양양_도원촌', '강원도 양양군 손양면 선사유적로 501', '38.072933', '128.671127', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '106','속초_봉포머구리집.jpg', '속초_봉포머구리집', '강원도 속초시 조양동 청초호반로 56', '38.190642', '128.588627', '맛집', '강원도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '107','울산_마로니에길.jpg', '울산_마로니에길', '울산광역시 울주군 청량면 문죽리 산 332-1', '35.535736', '129.259611', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '108','안동_하회마을.jpg', '안동_하회마을', '경상북도 안동시 풍천면 하회종가길 40', '36.538564', '128.516047', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '109','대구_하중도.jpg', '대구_하중도', '대구광역시 북구 노곡동 665', '35.900533', '128.559034', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '110','대구_옻골마을.jpg', '대구_옻골마을', '대구광역시 동구둔산동 384', '35.907807', '128.686676', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '111','경주_첨성대.jpg', '경주_첨성대', '경상북도 경주시 월성동 첨성로 169-5 ', '35.834926', '129.219041', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '112','경주_동궁과 월지.jpg', '경주_동궁과 월지', '경상북도 경주시 월성동 원화로 102', '35.834959', '129.226948', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '113','경주_불국사.jpg', '경주_불국사', '경상북도 경주시 진현동 15-1', '35.790332', '129.33207', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '114','포항_포항전통문화체험관.jpg', '포항_포항전통문화체험관', '경상북도 포항시 북구 기북면 덕동문화길 7', '36.165348', '129.18528', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '115','영덕_메타세콰이어 숲길.jpg', '영덕_메타세콰이어 숲길', '경상북도 영덕군 영해면 벌영리 942', '36.529963', '129.384052', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '116','영덕_풍력발전소.jpg', '영덕_풍력발전소', '경상북도 영덕군 영덕읍 창포리 산70', '36.418994', '129.416628', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '117','영덕_죽도산전망대.jpg', '영덕_죽도산전망대', '경북 영덕군 축산면 축산리', '36.359254', '129.385074', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '118','영덕_해맞이공원.jpg', '영덕_해맞이공원', '경상북도 영덕군 영덕읍 창포리', '36.435081', '129.434217', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '119','의성_조문국박물관.jpg', '의성_조문국박물관', '경상북도 의성군 금성면 초전리 ', '36.276763', '128.668444', '관광지', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '120','경주_교리김밥.jpg', '경주_교리김밥', '경북 경주시 교촌안길 27-42', '35.831042', '129.216182', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '121','경주_명동쫄면.jpg', '경주_명동쫄면', '경북 경주시 계림로 93번길 3', '35.8428', '129.213228', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '122','경주_낙지마실.jpg', '경주_낙지마실', '경상북도 경주시 북군동 229-7', '35.851826', '129.262963', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '123','영덕_대게궁.jpg', '영덕_대게궁', '경상북도 영덕군 강구면 강구리 470', '36.358892', '129.383255', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '124','포항_바다바라기.jpg', '포항_바다바라기', '울산광역시 북구 정자동 434-14', '35.621774', '129.446467', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '125','대구_단골식당.jpg', '대구_단골식당', '대구광역시 북구 칠성동 1가 92-6', '35.876253', '128.603714', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '126','대구_진미식당.jpg', '대구_진미식당', '대구광역시 서구 원대동 3가 1223-13', '35.883326', '128.578005', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '127','대구_수미가 손칼국수.jpg', '대구_수미가 손칼국수', '대구 동구 동촌로 31', '35.891026', '128.646609', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '128','대구_팔도 웰빙 쌈밥.jpg', '대구_팔도 웰빙 쌈밥', '대구광역시 동구 불로동 1157-3', '35.913703', '128.640256', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '129','대구_사문진 주막촌.jpg', '대구_사문진 주막촌', '대구 광역시 달성군 화원읍 성산리 744-11', '35.811804', '128.478101', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '130','안동_꼬끼요찜닭.jpg', '안동_꼬끼요찜닭', '경상북도 안동시 번영 1길 51', '36.565861', '128.727897', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '131','안동_하회식당.jpg', '안동_하회식당', '경상북도 안동시 풍천면 전서로 214-6', '36.54953', '128.52725', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '132','울진_송학.jpg', '울진_송학', '경상북도 울진군 울진읍 공세항길 7-3 송학면 옥꽃돼지보쌈', '36.990036', '129.402805', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '133','울진_귀빈식당.jpg', '울진_귀빈식당', '경상북도 울진군 북면 덕구온천로 10 북면 부구리 369-27', '37.101018', '129.371475', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '134','의성_삼미통닭.jpg', '의성_삼미통닭', '경상북도 의성군 단촌면 장터길 22', '36.422265', '128.673815', '맛집', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '135','울산_간절곶송정가두리낚시체험장.jpg', '울산_간절곶송정가두리낚시체험장', '울산광역시 울주군 서생면 대송리 339-8', '35.369354', '129.355995', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '136','울진_정자 ATV 체험장.jpg', '울진_정자 ATV 체험장', '울산광역시 북구 산하동 248-1', '35.633454', '129.439998', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '137','에덴산악오토바이체험장.jpg', '에덴산악오토바이체험장', '울산광역시 울주군 상북면 이천리', '35.565943', '129.022194', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '138','안동_하회래프팅.jpg', '안동_하회래프팅', '경상북도 안동시 풍천면 전서로 159', '36.551912', '128.530693', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '139','대구_태양마린.jpg', '대구_태양마린', '대구광역시 수성구 만촌1동 408-13', '35.874681', '128.646847', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '140','대구_패러글라이딩블루윙스.jpg', '대구_패러글라이딩블루윙스', '대구광역시 수성구 상동 497-13', '35.827855', '128.61064', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '141','대구_수성실내아이스링크.jpg', '대구_수성실내아이스링크', '대구광역시 수성구 상동 725', '35.826855', '128.611756', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '142','경주_경주레저.jpg', '경주_경주레저', '경상북도 경주시 북군동 180-2', '35.848833', '129.265313', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '143','포항_영일낚시.jpg', '포항_영일낚시', '경상북도 포항시 남구 장기면 동해안로 3285-9', '35.880803', '129.516934', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '144','포항_여남스쿠버다이빙리조트.jpg', '포항_여남스쿠버다이빙리조트', '경상북도 포항시 북구 해안로 518', '36.072494', '129.413102', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '145','영덕_블루마린레저.jpg', '영덕_블루마린레저', '경상북도 영덕군 남정면 남호길 22', '36.331347', '129.37881', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '146','영덕_레포츠ATV체험장.jpg', '영덕_레포츠ATV체험장', '경상북도 영덕군 영덕읍 대탄리', '36.425984', '129.422516', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '147','경주_경주월드.jpg', '경주_경주월드', '경상북도 경주시 천군동 191-5 ', '35.835826', '129.282809', '엑티비티', '경상도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '148','약선이조래.jpg', '약선이조래', '경기 관주시 남한산성면 엄미길 72-38', '37.476714', '127.188291', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '149','광교 아비뉴프랑 바나나립.jpg', '광교 아비뉴프랑 바나나립', '경기도 수원시 영통구 센트럴타운로 85 아브뉴프랑 1F', '37.290363', '127.050725', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '150','가보정갈비.jpg', '가보정갈비', '수원시 팔달구 장다리로 281', '37.274453', '127.028729', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '151','돌솥 삼계탕.jpg', '돌솥 삼계탕', '수원시 권선구 수인로 273', '37.281922', '126.972566', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '152','신라갈비.jpg', '신라갈비', '수원시 영통구 동수원로 538', '37.274065', '127.049238', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '153','송풍가든.jpg', '송풍가든', '경기도 수원시 장안구 경수대로 1013', '37.306436', '127.000598', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '154','본수원갈비.jpg', '본수원갈비', '수원시 팔달구 중부대로 223번길 41', '37.278256', '127.040738', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '155','두향.jpg', '두향', '성남시 분당구 불곡남로 5', '37.359186', '127.122993', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '156','버섯마루.jpg', '버섯마루', '성남시 수정구 성남대로 1215', '37.438294', '127.127403', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '157','북촌_웅추삼계탕.jpg', '북촌_웅추삼계탕', '성남시 수정구 대왕판교로 907', '37.421382', '127.101692', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '158','고암남원추어탕.jpg', '고암남원추어탕', '성남시 수정구 산성대로 597', '37.463034', '127.168934', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '159','우소보소.jpg', '우소보소', '부천시 원미구 옥산로 104, 213호', '37.503053', '126.780607', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '160','참맛진숯불갈비.jpg', '참맛진숯불갈비', '부천시 원미구 석천로 177번길 16', '37.503670', '126.762009', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '161','단원한정식.jpg', '단원한정식', '안산시 단원구 광덕대로 251, 지하', '37.319261', '126.829826', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '162','들녘.jpg', '들녘', '안산시 상록구 댕이길 16', '37.293874', '126.844158', '맛집', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '163','리버랜드.jpg', '리버랜드', '경기도 가평군 설악면 유명로 2312', '37.708051', '27.449137', '엑티비티', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '164','북한강레저클럽.jpg', '북한강레저클럽', '경기도 가평군 가평읍 북한강변로 180', '37.751300', '127.521969', '엑티비티', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '165','포세이돈수상레저.jpg', '포세이돈수상레저', '경기도 가평군 청평면 고재길 262-101', '37.701562', '127.517875', '엑티비티', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '166','별내 작은말 학교.jpg', '별내 작은말 학교', '경기도 남양주시 별내면 용암제철말길 152-2', '37.746094', '127.132613', '엑티비티', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '167','가평 사계절썰매장.jpg', '가평 사계절썰매장', '경기도 가평군 상면 깃대봉길 5-20번지', '37.755485', '127.402370', '엑티비티', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '168','아침고요수목원.jpg', '아침고요수목원', '경기도 사평군 상면 수목원로 432', '37.743876', '127.352496', '엑티비티', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '169','쁘띠프랑스.jpg', '쁘띠프랑스', '경기도 가평군 청평면 호반로 1063', '37.714936', '127.490920', '엑티비티', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '170','가평현암농경유물박물관.jpg', '가평현암농경유물박물관', ' 경기도 가평군 북면 석장모루길 13', '37.880385', '127.548123', '엑티비티', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '171','제부도.jpg', '제부도', '경기도 화성시 서신면 제부리', '37.171059', '126.622421', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '172','용주사.jpg', '용주사', '화성시 용주로 136', '37.212181', '127.005031', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '173','궁평항.jpg', '궁평항', '경기도 화성시 서신면 궁평항로 1069-11', '37.116603', '126.683209', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '174','미사리경정공원.jpg', '미사리경정공원', '하남시 미사대로 505', '37.553767', '127.213218', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '175','국립수목원.jpg', '국립수목원', '포천시 소흘읍 광릉수목원로 415 국립수목원', '37.754635', '127.165954', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '176','허브 아일랜드.jpg', '허브 아일랜드', '포천시 신북면 청신로947번길 35', '37.965546', '127.131662', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '177','산정호수.jpg', '산정호수', '포천시 영북면 산정리 191', '38.064736', '127.323801', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '178','산사원.jpg', '산사원', '포천시 화현면 화현리 512번지', '37.906039', '127.308934', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '179','명성산.jpg', '명성산', '경기도 포천시 영북면 산정리', '37.906006', '127.308902', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '180','임진각 평화누리.jpg', '임진각 평화누리', '파주시 문산읍 임진각로 148-53(사목리 480-1)', '37.890506', '126.740228', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '181','헤이리 예술마을.jpg', '헤이리 예술마을', '파주시 탄현면 헤이리마을길 82 일대', '37.789033', '126.698690', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '182','프로방스마을.jpg', '프로방스마을', '경기도 파주시 탄현면 성동리 82-1', '37.790978', '126.685104', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '183','판문점.jpg', '판문점', '경기도 파주시 군내면 일대', '37.933558', '126.729623', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '184','이천세라피아.jpg', '이천세라피아', ' 이천시 경충대로 2697번길 263', '37.275457', '127.423424', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '185','돼지테마파크.jpg', '돼지테마파크', '이천시 율면 임오산로 372번지 (월포4리 64번지)', '37.085735', '127.583997', '관광지', '경기도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '186','건강과 성박물관.jpg', '건강과 성박물관', '제주특별자치도 서귀포시 안덕면 감산리 1736 ', '33.255005', '126.346669', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '187','만장굴.jpg', '만장굴', '제주특별자치도 제주시 구좌읍 만장굴길 182 ', '33.528674', '126.771481', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '188','비자림.jpg', '비자림', '제주특별자치도 제주시 구좌읍 비자숲길 55 ', '33.487849', '126.808105', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '189','산방산.jpg', '산방산', ' 제주특별자치도 서귀포시 안덕면', '33.241158', '126.313468', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '190','섭지코지.jpg', '섭지코지', '제주특별자치도 서귀포시 성산읍 섭지코지로 262 ', '33.423676', '126.929284', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '191','성산일출봉.jpg', '성산일출봉', '제주특별자치도 서귀포시 성산읍 일출로 284-12', '33.458316', '126.942586', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '192','오설록.jpg', '오설록', '제주특별자치도 서귀포시 안덕면 오설록', '33.305260', '126.288741', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '193','외돌개.jpg', '외돌개', '제주특별자치도 서귀포시 서홍동 794-11 ', '33.239225', '126.544528', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '194','용머리해안.jpg', '용머리해안', '제주특별자치도 서귀포시 안덕면 산방로 218-10 ', '33.232000', '126.314598', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '195','우도.jpg', '우도', '제주특별자치도 제주시 우도면', '33.506700', '126.957132', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '196','이중섭거리.jpg', '이중섭거리', '제주특별자치도 서귀포시 서귀동 ', '33.246633', '126.564216', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '197','정방폭포.jpg', '정방폭포', ' 제주특별자치도 서귀포시 동홍동 칠십리로214번길 36  ', '33.244864', '126.571829', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '198','정석항공관.jpg', '정석항공관', '제주특별자치도 서귀포시 표선면 가시리 3795-2 ', '33.394265', '126.722532', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '199','제주민속촌박물관.jpg', '제주민속촌박물관', '제주특별자치도 서귀포시 표선면 민속해안로 631-34 ', '33.322807', '126.841793', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '200','주상절리.jpg', '주상절리', '제주특별자치도 서귀포시 중문동', '33.237943', '126.424992', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '201','중문해수욕장.jpg', '중문해수욕장', '제주특별자치도 서귀포시 색달동', '33.246370', '126.414582', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '202','천지연폭포.jpg', '천지연폭포', '제주특별자치도 서귀포시 서홍동 남성중로 2-15', '33.247116', '126.554407', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '203','퍼시픽랜드.jpg', '퍼시픽랜드', '제주특별자치도 서귀포시 색달동 2950-4', '33.243895', '126.415733', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '204','한라산.jpg', '한라산', '제주특별자치도 제주시 아라동', '33.361813', '126.529211', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '205','한림공원.jpg', '한림공원', '제주특별자치도 제주시 한림읍 한림로 300', '33.389818', '126.239299', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '206','함덕해수욕장.jpg', '함덕해수욕장', '제주특별자치도 제주시 조천읍 신북로', '33.543288', '126.669859', '관광지', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '207','조랑말카트경기장.jpg', '조랑말카트경기장', '제주 서귀포시 표선면 번영로 2486', '33.407527', '126.773916', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '208','루어인제주.jpg', '루어인제주', '제주 제주시 서광로3길 47', '33.504417', '126.513488', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '209','제주레포츠랜드.jpg', '제주레포츠랜드', '제주 제주시 조천읍 와흘상서2길 47', '33.482453', '126.638638', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '210','짚라인제주.jpg', '짚라인제주', '제주 제주시 조천읍 선교로 117', '33.486941', '126.706655', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '211','얼라이브 카트.jpg', '얼라이브 카트', '제주특별자치도 서귀포시 중문관광로 42', '33.254940', '126.408729', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '212','제주 돔 레저타운.jpg', '제주 돔 레저타운', '제주특별자치도 서귀포시 대정읍 보성구억로 119 통통감귤선과장 ', '33.262119', '126.275539', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '213','제주실탄사격장.jpg', '제주실탄사격장', '제주특별자치도 서귀포시 소보리당로164번길 62 ', '33.263984', '126.385204', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '214','제주제트.jpg', '제주제트', '제주특별자치도 서귀포시 대포동 2181-6 ', '33.238574', '126.439497', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '215','제주하늘을날다.jpg', '제주하늘을날다', '제주특별자치도 제주시 용담로20길 9 1층 제주하늘을 날다 패러글라이딩스쿨 ', '33.508519', '126.515191', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '216','제주카약체험.jpg', '제주카약체험', '제주특별자치도 제주시 구좌읍 해맞이해안로 1950 ', '33.515185', '126.900475', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '217','제주 카약올레.jpg', '제주 카약올레', '제주특별자치도 제주시 애월읍 애월로1길 22', '33.462558', '126.310379', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '218','엘리시안제주cc.jpg', '엘리시안제주cc', '제주특별자치도 제주시 애월읍 평화로 1738-116 엘리시안 C.C', '33.372512', '126.380811', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '219','중문골프클럽.jpg', '중문골프클럽', '제주특별자치도 서귀포시 중문관광로72번길 60 ', '33.281633', '126.411049', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '220','제주조랑말타운.jpg', '제주조랑말타운', '제주특별자치도 서귀포시 표선면 번영로 2486', '33.408022', '126.770290', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '221','이어도승마장.jpg', '이어도승마장', '제주특별자치도 서귀포시 성산읍 서성일로 269 ', '33.428789', '126.858003', '엑티비티', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '222','늘봄흑돼지.jpg', '늘봄흑돼지', '제주특별자치도 제주시 한라대학로 12', '33.479667', '126.473036', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '223','도민상회.jpg', '도민상회', '제주특별자치도 제주시 한림읍 한림로3길 8', '33.413432', '126.260389', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '224','돈사돈 본관.jpg', '돈사돈 본관', '제주특별자치도 제주시 우평로 19', '33.481775', '126.470750', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '225','리치망고.jpg', '리치망고', '제주특별자치도 제주시 애월읍 애월해안로 272', '33.468537', '126.340171', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '226','명진전복.jpg', '명진전복', '제주특별자치도 제주시 구좌읍 해맞이해안로 1282 ', '33.532682', '126.849897', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '227','몽상드애월.jpg', '몽상드애월', '제주특별자치도 제주시 애월읍 애월북서길 56-1', '33.463049', '126.309164', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '228','성산포뚝배기.jpg', '성산포뚝배기', '제주특별자치도 서귀포시 성산읍 일출로 236 성산포뚝배기', '33.460314', '126.931323', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '229','순옥이네명가.jpg', '순옥이네명가', '제주특별자치도 제주시 도공로 8', '33.505775', '126.465023', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '230','쌍둥이횟집본점.jpg', '쌍둥이횟집본점', '제주특별자치도 서귀포시 중정로62번길 14 쌍둥이횟집', '33.246877', '126.562947', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '231','올래국수.jpg', '올래국수', '제주특별자치도 제주시 제원길 17 ', '33.488482', '126.489426', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '232','우진해장국.jpg', '우진해장국', '제주특별자치도 제주시 서사로 11', '33.511610', '126.520017', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '233','자매국수.jpg', '자매국수', '제주특별자치도 제주시 삼성로 67', '33.508274', '126.532350', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '234','제주김만복.jpg', '제주김만복', '제주특별자치도 제주시 북성로 65 ', '33.515354', '126.518001', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '235','천해천.jpg', '천해천', '제주특별자치도 제주시 한라대학로 25', '33.479404', '126.474343', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '236','춘심이네 본점.jpg', '춘심이네 본점', '제주특별자치도 서귀포시 안덕면 창천중앙로24번길 16', '33.264953', '126.370623', '맛집', '제주도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '237','송정해수욕장.jpg', '송정해수욕장', '부산광역시 해운대구 송정동 712-2', '35.179388', '129.199032', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '238','솔밭예술마을.jpg', '솔밭예술마을', '부산광역시 해운대구 우동 1139-38', '35.164959', '129.162317', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '239','송상현광장.jpg', '송상현광장', '부산광역시 부산진구 전포동 864-1', '35.165380', '129.066910', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '240','달맞이길.jpg', '달맞이길', '부산광역시 해운대구 중2동', '35.159747', '129.182190', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '241','해운대해수욕장.jpg', '해운대해수욕장', '부산광역시 해운대구 중1동 1411-14', '35.159487', '129.161445', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '242','용두산공원.jpg', '용두산공원', '부산광역시 중구 광복동 용두산길 37-55', '35.100926', '129.032633', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '243','부산타워.jpg', '부산타워', '부산광역시 중구 광복동 용두산길 37-30', '35.101473', '129.032353', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '244','국제시장.jpg', '국제시장', '부산광역시 중구 신창동 4가', '35.101074', '129.029145', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '245','영화의 전당.jpg', '영화의 전당', '부산광역시 해운대구 우동 1467', '35.171441', '129.127185', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '246','민주공원.jpg', '민주공원', '부산광역시 중구 영주동2동 민주공원길19', '35.110214', '129.027955', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '247','충혼탑.jpg', '충혼탑', '부산광역시 중구 영주동 산10-16', '35.110214', '129.027955', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '248','부산시립중앙도서관.jpg', '부산시립중앙도서관', '부산광역시 중구 보수동 1가 산 3-41', '35.110291', '129.027017', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '249','40계단.jpg', '40계단', '부산광역시 중구 동광동 5가 48-2', '35.104358', '129.034401', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '250','태종대.jpg', '태종대', '부산광역시 영도구 동삼2동 산29-1', '35.055659', '129.089960', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '251','좌천역.jpg', '좌천역', '부산광역시 기장군 장안읍 좌천리 211-1', '35.311424', '129.243584', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '252','해동용궁사.jpg', '해동용궁사', '부산광역시 기장군 기장읍 시랑리 416-3', '35.188568', '129.223320', '관광지', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '253','파파스시.jpg', '파파스시', '부산광역시 해운대고 중동 957-2', '35.158769', '129.171175', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '254','모리구이집.jpg', '모리구이집', '부산광역시 해운대구 중2동 585-1', '35.160966', '129.191886', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '255','더베이101.jpg', '더베이101', '부산광역시 해운대구 동백로 52', '35.156921', '129.152134', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '256','깡통야시장.jpg', '깡통야시장', '부산광역시 중구 부평동2가 18-2', '35.101573', '129.026153', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '257','91st.jpg', '91st', '부산광역시 금정구 장전동 392-20', '35.233438', '129.089032', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '258','무심정.jpg', '무심정', '부산광역시 금정구 금성동 528-4', '35.252232', '129.055931', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '259','이찌니찌.jpg', '이찌니찌', '부산광역시 금정구 장전동 419-21', '35.230770', '129.084288', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '260','킹콩닭강정.jpg', '킹콩닭강정', '부산광역시 금정구 장전동 316-3', '35.230255', '129.086627', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '261','가미.jpg', '가미', '부산광역시 해운대구 우동 1507', '35.166987', '129.133833', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '262','면옥향천jpg', '면옥향천', '부산광역시 해운대구 해운대로 383번길 26', '35.170362', '129.139395', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '263','스테이크 잡스.jpg', '스테이크 잡스', '부산광역시 부산진구 부전동 168-448', '35.155831', '129.061041', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '264','거인통닭.jpg', '거인통닭', '부산광역시 중구 부평동 2가 11-2', '35.102613', '129.026083', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '265','뽀빠이핫도그.jpg', '뽀빠이핫도그', '부산광역시 중구 창선동 1가 30-12', '35.099580', '129.031067', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '266','할매집 회국수.jpg', '할매집 회국수', '부산광역시 중구 남포동 2가 15-1', '35.099127', '129.031497', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '267','미스터스시.jpg', '미스터스시', '부산광역시 사하구 다대동 1552-18', '35.048824', '128.965396', '맛집', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '268','VR플러스부산남포점.jpg', 'VR플러스부산남포점', '부산광역시 중구 남포동 6가 85 남포프라자 지하1층', '35.097711', '129.028991', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '269','광안비치랜드.jpg', '광안비치랜드', '부산광역시 수영구 민락동 181-191', '35.154320', '129.124879', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '270','디오라마월드.jpg', '디오라마월드', '부산광역시 해운대구 우동 1468-1', '35.171515', '129.128809', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '271','주라지 테마파크.jpg', '주라지 테마파크', '부산광역시 해운대구 우동 1495 신세계백화점 센텀시티점 9F', '35.168956', '129.129743', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '272','센텀시티 아이스링크.jpg', '센텀시티 아이스링크', '부산광역시 해운대구 우동 1495 신세계백화점 센텀시티점 4F', '35.168956', '129.129743', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '273','락볼링장.jpg', '락볼링장', '부산 금정구 장전동 292-4번지', '35.230392', '129.088091', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '274','야사노.jpg', '야사노', '부산광역시 금정구 장전동 302-9', '35.229779', '129.087476', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '275','작은 동물원.jpg', '작은 동물원', '부산광역시 부산진구 양정동 519-16 5층', '35.168823', '129.066773', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '276','아쿠아리움.jpg', '아쿠아리움', '부산광역시 해운대구 중1동 1411-4', '35.159491', '129.160950', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '277','어린이대공원.jpg', '어린이대공원', '부산광역시 부산진구 새싹로295', '35.183257', '129.046339', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '278','삼정더파크.jpg', '삼정더파크', '부산광역시 부산진구 초읍동 45', '35.184444', '129.042490', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '279','국립해양박물관.jpg', '국립해양박물관', '부산광역시 영도구 동삼1동 해양로 301번길 45', '35.078756', '129.080246', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '280','과학관.jpg', '과학관', '부산광역시 기장군 기장읍 시랑리 408-1', '35.192491', '129.223262', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '281','리얼야구존.jpg', '리얼야구존', '부산광역시 남구 대연동 72-6', '35.136918', '129.099242', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '282','은하수다방.jpg', '은하수다방', '부산광역시 남구 대연동 50-51', '35.136137', '129.103586', '엑티비티', '부산');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '283','전주_송광사.jpg', '전주_송광사', '전라북도 완주군 소양면 대흥리 596-2', '35.886012', '127.241779', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '284','전주_모악산.jpg', '전주_모악산', '전라북도 완주군 구이면', '35.730848', '127.084552', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '285','전주_한벽당.jpg', '전주_한벽당', '전라북도 전주시 완산구 교동 15', '35.812130', '127.160809', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '286','전주_동고사.jpg', '전주_동고사', '전라북도 전주시 완산구 교동 산3-1', '35.813649', '127.159843', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '287','광주_중외공원.jpg', '광주_중외공원', '광주광역시 북구 운암동 164-1', '35.180312', '126.884753', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '288','광주_펭귄마을.jpg', '광주_펭귄마을', '광주 남구 천변좌로 446번길 7', '35.140354', '126.917066', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '289','광주_이장우가옥.jpg', '광주_이장우가옥', '광주광역시 남구 양촌길 21', '35.140654', '126.914245', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '290','광주_국립아시아문화전당.jpg', '광주_국립아시아문화전당', '광주광역시 동구 문화전당로 38', '35.147493', '126.920581', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '291','나주_목사내아.jpg', '나주_목사내아', '전라남도 나주시 금계동 33-1', '35.032469', '126.715329', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '292','나주_금성관.jpg', '나주_금성관', '전라남도 나주시 과원동 109-5', '35.032404', '126.715634', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '293','고창_한옥마을.jpg', '고창_한옥마을', '전라북도 고창군 고창읍 읍내리 120', '35.432445', '126.705901', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '294','고창_문수사.jpg', '고창_문수사', '전라북도 고창군 고수면 은사리 48', '35.381096', '126.726033', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '295','고창_동호해수욕장.jpg', '고창_동호해수욕장', '전라북도 고창군 해리면 구동호1길 17-13', '35.516856', '126.482652', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '296','담양_관방제림.jpg', '담양_관방제림', '전남 담양군 담양읍 객사리, 남산리 일원', '35.324244', '126.985856', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '297','담양_죽녹원.jpg', '담양_죽녹원', '전라남도 담양군 담양읍 죽녹원로 119', '35.326085', '126.986265', '관광지', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '298','고창_석정회관.jpg', '고창_석정회관', '전라북도 고창군 고창읍 교촌리 78-5', '35.434745', '126.705055', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '299','전주_호남각.jpg', '전주_호남각', '전라북도 전주시 덕진구 송천동 2가 560-3', '35.865291', '127.113659', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '300','전주_성미당.jpg', '전주_성미당', '전북 전주시 완산구 중앙동 3가 31-2', '35.817626', '127.145243', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '301','전주_메밀방앗간.jpg', '전주_메밀방앗간', '전북 전주시 완산구 중화산동 2가 652-3', '35.817617', '127.123453', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '302','전주_맘스브레드.jpg', '전주_맘스브레드', '전라북도 전주시 완산구 효자동 2가', '35.808893', '127.103591', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '303','광주_토속고을.jpg', '광주_토속고을', '경기도 광주시 오포읍 양벌리', '37.388355', '127.255498', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '304','광주_고래등.jpg', '광주_고래등', '광주광역시 북구 용봉동 1395-1', '35.187806', '126.892603', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '305','광주_소나무한그루.jpg', '광주_소나무한그루', '광주광역시 서구 금호동', '35.130607', '126.858410', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '306','나주_사랑채.jpg', '나주_사랑채', '전남 나주시 금남길 61', '35.034055', '126.714257', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '307','나주_하얀집.jpg', '나주_하얀집', '전라남도 나주시 중앙동 48-17', '35.032407', '126.716961', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '308','고창_풍천장어.jpg', '고창_풍천장어', '고창군 부안면 용산리 44-18', '35.508430', '126.644619', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '309','고창_웰빙오곡영양보리밥.jpg', '고창_웰빙오곡영양보리밥', '전라북도 고창군 고창읍 읍내리 576-5', '35.433170', '126.697117', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '310','고창_해주가든.jpg', '고창_해주가든', '전라북도 고창군 아산면 삼인리 19-27', '35.507994', '126.605588', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '311','군산_지린성.jpg', '군산_지린성', '전라북도 군산시 미원동 87', '35.979929', '126.714771', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '312','군산_안젤라분식.jpg', '군산_안젤라분식', '전라북도 군산시 영화동 18-4', '35.989202', '126.710863', '맛집', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '313','사계절레저.jpg', '사계절레저', '전라북도 무주군 설천면 심곡리 682', '35.911315', '127.759780', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '314','무주래프팅.jpg', '무주래프팅', '전라북도 무주군 무주읍 용포리 1191-1', '35.998135', '127.607215', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '315','무주스키.jpg', '무주스키', '전라북도 무주군 설천면 심곡리 587-11', '35.907189', '127.755406', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '316','새만금낚시.jpg', '새만금낚시', '전라북도 부안군 변산면 격포리 385-7', '35.622574', '126.472862', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '317','잉어킹낚시카페본점.jpg', '잉어킹낚시카페본점', '전라북도 전주시 완산구 고사동 373-2 B1', '35.820291', '127.143206', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '318','블루마린스쿠버.jpg', '블루마린스쿠버', '전라북도 군산시 문화동 889-16', '35.976055', '126.702410', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '319','전주드림랜드.jpg', '전주드림랜드', '전라북도 전주시 덕진구 덕진동1가 산 36-8', '35.857721', '127.144250', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '320','블랙이글스 패러글라이딩스쿨.jpg', '블랙이글스 패러글라이딩스쿨', '전라북도 완주군 구이면 덕천리 188-1', '35.752589', '127.124720', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '321','워터월드.jpg', '워터월드', '전라북도 남원시 주생면 내동리 66-1', '35.382476', '127.283441', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '322','전라북도축구협회.jpg', '전라북도축구협회', '전라북도 전주시 덕진구 덕진동1가 1283-2', '35.841041', '127.126159', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '323','자바라낚시카페.jpg', '자바라낚시카페', '전라북도 전주시 완산구 평화동2가 909-3', '35.783273', '127.133140', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '324','만돌 어촌체험마을.jpg', '만돌 어촌체험마을', '전라북도 고창군 심원면 만돌리 960-27', '35.530455', '126.515046', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '325','모항갯벌체험장.jpg', '모항갯벌체험장', '전라북도 부안군 변산면 도청리 123', '35.587765', '126.514014', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '326','임실치즈스쿨.jpg', '임실치즈스쿨', '전라북도 임실군 임실읍 이인리 92', '35.549209', '127.261083', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '327','안덕건강힐링체험마을.jpg', '안덕건강힐링체험마을', '전라북도 완주군 구이면 안덕리 95', '35.695340', '127.099817', '엑티비티', '전라도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '328','동화마을.jpg', '동화마을', '인천광역시 부평구 부평4동 206-12', '37.495443', '126.723263', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '329','차이나타운.jpg', '차이나타운', '인천광역시 중구 북성동2가 12-148', '37.476601', '126.618161', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '330','신포시장.jpg', '신포시장', '인천광역시 중구 내동 212-4', '37.471691', '126.627758', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '331','연안부두 해양광장.jpg', '연안부두 해양광장', '인천광역시 중구 항동7가 60-1', '37.455359', '126.601341', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '332','개항장문화지구.jpg', '개항장문화지구', '인천광역시 중구 신포로23번길 83', '37.473042', '126.621061', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '333','두무진.jpg', '두무진', '인천광역시 중구 연안동 87-9', '37.453251', '126.598926', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '334','갑곶돈대.jpg', '갑곶돈대', '인천광역시 중구 무의동 산369번지 일원', '37.733259', '126.516480', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '335','인천나비공원.jpg', '인천나비공원', '인천광역시 부평구 청천동 68-12', '37.520261', '126.692712', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '336','인천상륙작전기념관.jpg', '인천상륙작전기념관', '인천광역시 옥련동 인천상륙작전기념관', '37.419523', '126.653059', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '337','팔각정.jpg', '팔각정', '인천광역시 중구 북성동3가 1', '37.475922', '126.621913', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '338','을왕리해수욕장.jpg', '을왕리해수욕장', '인천광역시 중구 을왕로 36', '37.447512', '126.372633', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '339','커넬워크.jpg', '커넬워크', '인천광역시 연수구 송도2동 아트센터대로 87', '37.4025670', '126.640168', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '340','무의도.jpg', '무의도', '인천광역시 중구 무의동 산151-1', '37.392084 ', '126.415628', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '341','인천대교.jpg', '인천대교', '인천광역시 중구 운남동 1113-70', '37.414000', '126.566489', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '342','팔미도 등대.jpg', '팔미도 등대', '인천 중구 무의동 산 374', '37.358300', ' 126.512113', '관광지', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '343','집게.jpg', '집게', '인천광역시 연수구 송도동 8-19', '37.385577', '126.64507', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '344','트리플듀에.jpg', '트리플듀에', '인천광역시 연수구 송도동 22-22', '37.392908', '126.645213', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '345','소소한가.jpg', '소소한가', '인천남구 숭의동 293-15 105호', '37.458154', '126.650083', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '346','스테이크 1번가.jpg', '스테이크 1번가', '인천시 남구 주안동 143-3', '37.463030', '126.680686', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '347','수밀원.jpg', '수밀원', '인천광역시 연수구 옥련동 557-1', '37.415877', '126.651828', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '348','아웃도어키친.jpg', '아웃도어키친', '인천광역시 남동구 장수동 121-5', '37.459810', '126.771484', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '349','배터지는 게장.jpg', '배터지는 게장', '인천광역시 남동구 장수동 391-1', '37.464091', '126.749806', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '350','십리향.jpg', '십리향', '인천광역시 중구 북성동2가 10-26', '37.475362', '126.618767', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '351','명가호떡.jpg', '명가호떡', '인천광역시 남동구 구월동 1271-7', '37.452614', '126.720741', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '352','대원닭강정.jpg', '대원닭강정', '인천광역시 남동구 구월동 1271-4', '37.452824', '126.720011', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '353','콩순아지매칼국수.jpg', '콩순아지매칼국수', '인천광역시 부평구 삼산동 430-4', '37.516542', '126.734531', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '354','초코식당.jpg', '초코식당', '인천광역시 부평구 부평5동 201-25 2층', '37.493673', '126.723786', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '355','아르떼 게스트로펍.jpg', '아르떼 게스트로펍', '인천광역시 부평구 부평동 151-30', '37.494409', '126.727185', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '356','그릴드캠핑.jpg', '그릴드캠핑', '계양구 계산동 988-7', '37.536681', '126.722905', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '357','B105.jpg', 'B105', '인천 서구 중봉대로 586번길 19홍익파크', '37.531267', '126.651305', '맛집', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '358','송도 비행스쿨.jpg', '송도 비행스쿨', '인천광역시 연수구 동춘동 907', '37.413138', '126.644259', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '359','용유 승마장.jpg', '용유 승마장', '인천광역시 중구 덕교동 652번지', '37.432889', ' 126.418111', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '360','송도골프클럽.jpg', '송도골프클럽', '인천광역시 연수구 동춘동 844-1', '37.414550', '126.651219', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '361','인천그랜드컨트리클럽.jpg', '인천그랜드컨트리클럽', '인천광역시 서구 원창동 380번지', '37.514050', '126.641201', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '362','펀코스트.jpg', '펀코스트', '인천광역시 중구 항동7가 100번지', '37.452054', '126.613794', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '363','덕적도 자전거길.jpg', '덕적도 자전거길', '인천광역시 옹진군 덕적면 진리 산122-34', '37.237919', '126.127940', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '364','송도센트럴파크.jpg', '송도센트럴파크', '인천 연수구 송도동', '37.392949', ' 126.638715', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '365','옥토끼 우주센터.jpg', '옥토끼 우주센터', '인천광역시 강화군 불은면 강화동로 403 옥토끼우주센타', '37.674924', ' 126.486730', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '366','강화도자연체험농장.jpg', '강화도자연체험농장', '강화군 길상면 해안남로 344', '37.608322', '126.517097', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '367','달빛동화마을.jpg', '달빛동화마을', '강화군 양도면 강화남로921번길 10-6', '37.681079', '126.416463', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '368','월미 놀이공원.jpg', '월미 놀이공원', '인천광역시 중구 북성동1가', '37.475004', '126.598248', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '369','고인돌식물원.jpg', '고인돌식물원', '인천광역시 강화군 하점면 장정리 989', '37.777261', '126.434744', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '370','인천대공원.jpg', '인천대공원', '인천광역시 남동구 무네미로 236 인천대공원사업소', '37.458641', '126.755067', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '371','장봉도(농촌체험).jpg', '장봉도(농촌체험)', '인천광역시 옹진군 북도면 장봉리 10번지', '37.537048', '126.380680', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '372','에너지파크.jpg', '에너지파크', '인천광역시 옹진군 영흥면 영흥남로293번길 75', '37.244316 ', '126.448105', '엑티비티', '인천');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '373','목척교.jpg', '목척교', '대전광역시 동구 중동 318-2', '36.329986', '127.429386', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '374','으능정이 문화의 거리.jpg', '으능정이 문화의 거리', '대전광역시 중구 은행동 33-8', '36.327979', '127.427947', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '375','대동벽화마을.jpg', '대동벽화마을', '대전광역시 동구 용운동 산40-1', '36.332378', '127.451945', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '376','대동하늘공원.jpg', '대동하늘공원', '대전광역시 동구 용운동 산40-1', '36.332378', '127.451945', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '377','지중해마을.jpg', '지중해마을', '충청남도 아산시 탕정면 갈산리 599-14', '36.797565', '127.060782', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '378','독립기념관.jpg', '독립기념관', '충청남도 천안시 동남구 목천읍 삼방로 95', '36.787138', '127.222754', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '379','화수목정원.jpg', '화수목정원', '충청남도 천안시 동남구 목천읍 교천리 211', '36.783337', '127.194661', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '380','웅천돌문화공원.jpg', '웅천돌문화공원', '충남 보령시 웅천읍 대천리 81-1', '36.237640', '126.590576', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '381','보령 석탄박물관.jpg', '보령 석탄박물관', '충청남도 보령시 성주면 개화리 산23-1', '36.323910', '126.653491', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '382','죽도 상화원.jpg', '죽도 상화원', '충청남도 보령시 남포면 남포방조제로 408-52', '36.277415', '126.537666', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '383','마곡사.jpg', '마곡사', '충청남도 공주시 사곡면 운암리 567', '36.559160', '127.012435', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '384','박달재.jpg', '박달재', '충청북도 제천시 백운면 평동리', '37.149448', '128.046557', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '385','의림지.jpg', '의림지', '충청북도 제천시 모산동 241', '37.173246', '128.210558', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '386','백제군사박물관.jpg', '백제군사박물관', '충청남도 논산시 부적면 충곡로 311-54 백제군사박물관', '36.192414', '127.181355', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '387','탑정호 호수 생태공원.jpg', '탑정호 호수 생태공원', '충청남도 논산시 부적면 충곡리', '36.191831', '127.172355', '관광지', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '388','오늘은파스타.jpg', '오늘은파스타', '대전광역시 대덕구 오정동 223-273', '36.351580', '127.425623', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '389','성심당.jpg', '성심당', '대전광역시 중구 은행동 145', '36.327778', '127.427241', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '390','홍부리.jpg', '홍부리', '대전광역시 동구 자양동 141-9', '36.334559', '127.445552', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '391','헌치스 핫도그.jpg', '헌치스 핫도그', '대전광역시 동구 대동 402-4 아썸타워 101호', '36.329610', '127.442826', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '392','요상한집.jpg', '요상한집', '대전광역시 중구 대흥동 471-1 2층', '36.325960', '127.423073', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '393','복숭아 식당.jpg', '복숭아 식당', '대전광역시 중구 대흥동 469-1', '36.325806', '127.422638', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '394','천상오징어.jpg', '천상오징어', '천안시 서북구 쌍용동 1116', '36.802980', '127.129119', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '395','형제상회.jpg', '형제상회', '천안시 서북구 쌍용동 1147', '36.802561', '127.130376', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '396','대원횟집.jpg', '대원횟집', '천안시 동남구 신방동 1685', '36.788252', '127.120117', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '397','수전복삼합.jpg', '수전복삼합', '천안시 서북구 두정동 982', '36.835470', '127.135513', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '398','논산 그린성가든.jpg', '논산 그린성가든', '충청남도 논산시 연무읍 동산리', '36.132173', '127.121746', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '399','명성불고기.jpg', '명성불고기', '충청남도 공주시 산성동 133-4', '36.458424', '127.125088', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '400','예일낙지마을.jpg', '예일낙지마을', '충청남도 공주시 산성동 189-12', '36.459129', '127.123586', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '401','보령해물칼국수.jpg', '보령해물칼국수', '충청남도 보령시 남곡동 856-3', '36.464088', '126.543831', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '402','가마솥불곰탕.jpg', '가마솥불곰탕', '충청남도 보령시 내항동 919-7', '36.347905', '126.570653', '맛집', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '403','카페마실.jpg', '카페마실', '대전광역시 대덕구 오정동 223-268 지하1층', '36.351436', '127.426059', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '404','선물가게 소금.jpg', '선물가게 소금', '대전광역시 동구 자양동 48-10', '36.340036', '127.448594', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '405','소프라임.jpg', '소프라임', '대전광역시 동구 자양동 85-23', '36.338686', '127.450711', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '406','팝아일랜드.jpg', '팝아일랜드', '대전광역시 중구 대흥동 150-7 2층', '36.326648', '127.427843', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '407','도자기 공방 굽다.jpg', '도자기 공방 굽다', '대전중구 중촌동 412-1 롯데리아 지하1층', '36.336076', '127.411534', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '408','대전오월드.jpg', '대전오월드', '대전광역시 중구 사정동 사정공원로 70', '36.288580', '127.397789', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '409','대전 아쿠아리움.jpg', '대전 아쿠아리움', '대전광역시 중구 대사동 198-14', '36.310003', '127.421045', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '410','한화 이글스파크.jpg', '한화 이글스파크', '대전광역시 중구 부사동 177', '36.317025', '127.429189', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '411','아리솔CC.jpg', '아리솔CC', '충청북도 보은군 탄부면', '36.447190', '127.781907', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '412','단양패러스쿨.jpg', '단양패러글라이딩', '충청북도 단양군 단양읍 도전리', '36.980433', '128.369469', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '413','홍종열클라이밍짐.jpg', '홍종열클라이밍짐', '충청남도 천안시 서북구 두정로 1523', '36.834448', '127.142086', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '414','LOVE낚시카페.jpg', 'LOVE낚시카페', '충청남도 천안시 서북구 원두정8길 14 경한빌딩', '36.832443', '127.134781', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '415','옥천학생야영장.jpg', '옥천학생야영장', '충청북도 옥천군 이원면 용방리 1016-1', '36.255834', '127.635966', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '416','도레미캠핑장.jpg', '도레미캠핑장', '충청북도 괴산군 불정면 세평리', '36.857619', '127.820288', '엑티비티', '충청도');
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '417','아산레일바이크.jpg', '아산레일바이크', '충청남도 아산시 도고면 아산만로 199-7', '36.761284', '126.867220', '엑티비티', '충청도');
--------------------------회원, 장소 까지 
drop table travelerRange
select*from travelerRange

----공개범위설정
create table travelerRange(
trange number primary key,
trangeCategory varchar2(100) not null
);

insert into travelerRange(trange,trangeCategory)
values(1,'남자');

insert into travelerRange(trange,trangeCategory)
values(2,'여자');

insert into travelerRange(trange,trangeCategory)
values(3,'전체');

--  1 일때 남자   , 2 일때 여자  3 일때 전체공개     -- -- 0일때 전체공개 거부    //  1일때 전체공개 허용  !!수정해야함 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

drop table traveler
select*from traveler

create table traveler(
 placeNo number,
 id varchar2(100),
 tdate date not null,
 tstate number default 1,              -- 1일때 진행중 2~4는 여행 종료( findPartner= 2, changedPlan=3, otherReason=4)
 trange number constraint fk_traveler_trange references travelerRange(trange),               
 constraint pk_placeNo foreign key(placeNo) references place,
 constraint pk_id foreign key(id) references member,
 constraint pk_traveler primary key(placeNo,id,tdate)
 );

--여행사진
drop sequence memberPicture_seq;
create sequence memberPicture_seq;

drop table memberPicture;
select*from memberPicture

create table memberPicture(
 pictureNo number primary key,  --사진 업로드 쏩기
 id varchar2(100),
 filename varchar2(100) not null,
 pictureTitle varchar2(100) not null,
 pictureDate date not null,
 pictureContent clob not null,
 hit number default 0,
constraint fk_member foreign key(id) references member(id)
 );
 
insert into memberPicture(pictureNo,id,fileName,pictureTitle,pictureDate,pictureContent)
values(memberPicture_seq.nextval,'java1','준성.jpg','강릉에서~~~!2',sysdate,'123')

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
 );
-- sender와 reciever 가 같을경우 생각해보자


 
 --여행일정 뽑는 SQL
select p.placeName, p.areaName, t.tDate
from traveler t, place p
where t.placeNo = p.placeNo and t.id = 'java1';

	update memberPicture set pictureTitle='rrr', pictureContent='rrr'
	where pictureNo=63

	update memberPicture set pictureTitle='rrr', pictureContent='rrr', filename='속초_봉포머구리집.jpg'
	where pictureNo=2
	select p.pictureNo, p.id, m.name, p.fileName, p.pictureTitle, p.pictureContent, to_char(p.pictureDate, 'YYYY.MM.DD')as pictureDate, p.hit
 		from memberPicture p, member m where p.id='java1' and p.id=m.id order by p.pictureNo desc

select rnum, messageNo,sender,receiver,messageDate,messageContent,messageState, profileIMG FROM
( SELECT row_number() over(order by  ms.messageNo desc)  as rnum,  ms.messageNo, ms.sender,ms.receiver,ms.messageDate,ms.messageContent,ms.messageState, m2.profileIMG   
FROM message ms, member m2 
where ms.receiver=m2.id and  ms.sender ='java1')  rnum
where   rnum  between 1 and 7 order by messageNo desc


