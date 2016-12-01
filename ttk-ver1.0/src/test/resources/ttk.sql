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
values(place_seq.nextval,'남산_N서울타워.jpg','남산_N서울타워','04340  서울 용산구 남산공원길 105 (용산동2가, YTN서울타워)',37.551399,126.988184,'관광지','서울');

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
values('jsp',to_date('2016/7/20 9:00:10','YYYY-MM-DD HH24:MI:SS'));
 
 
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
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '183',' 판문점.jpg', ' 판문점', '경기도 파주시 군내면 일대', '37.933558', '126.729623', '관광지', '경기도');
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
insert into  place(placeNo,placePicture,placeName,placeAddress,placeX,placeY,categoryname,areaname) values ( '211','얼라이브 카트 .jpg', '얼라이브 카트 ', '제주특별자치도 서귀포시 중문관광로 42', '33.254940', '126.408729', '엑티비티', '제주도');
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

select * from place where areaName = '강원도' and categoryName = '맛집';



