INSERT INTO user (user_code, nickname, email)
    VALUE ('testCode1','testNick1','testEmail1'),
      ('testCode2','testNick2','testEmail2'),
      ('testCode3','testNick3','testEmail3'),
      ('testCode4','testNick4','testEmail4'),
      ('testCode5','testNick5','testEmail5'),
      ('testCode6','testNick6','testEmail6'),
      ('testCode7','testNick7','testEmail7'),
      ('testCode8','testNick8','testEmail8'),
      ('testCode9','testNick9','testEmail9'),
      ('testCode10','testNick10','testEmail10');

INSERT INTO post (user_id,title,content, url)
    VALUE (1,'제목1','내용1',),
      (3,'제목2','내용2'),
      (4,'제목3','내용3'),
      (7,'제목4','내용4'),
      (3,'제목5','내용5'),
      (1,'제목6','내용6'),
      (7,'제목7','내용7'),
      (10,'제목8','내용8'),
      (2,'제목9','내용9'),
      (3,'제목10','내용10');

INSERT INTO course (user_id,course_name)
    VALUE (1,'서울'),
      (1,'부산'),
      (3,'제주'),
      (4,'대구'),
      (5,'대전'),
      (6,'대구'),
      (7,'대전'),
      (8,'서울'),
      (9,'부산'),
      (10,'여수');
INSERT INTO place (user_id,course_id,place_name,lat,lng,path_order)
    VALUE (1,1,'종로','12.67493','127.36321',3),
      (1,2,'독산','12.676','127.3643',2),
      (1,3,'잠실','12.676','127.3643',1),
      (3,4,'광안리','12.676','127.3643',1),
      (3,5,'해운대','12.676','127.3643',2),
      (2,6,'한라산','12.676','127.3643',1),
      (5,7,'중앙로','12.676','127.3643',3),
      (7,8,'대전역','12.676','127.3643',4),
      (3,9,'수성로','12.676','127.3643',5),
      (3,10,'대전역','12.676','127.3643',6),
      (1,5,'남산타워','12.676','127.3643',7),
      (9,6,'서면','12.676','127.3643',8),
      (10,9,'여수밤바다','12.676','127.3643',9);
INSERT INTO cost (course_id,user_id,member)
    VALUE (1,1,1),
      (2,1,1),
      (3,3,3),
      (1,2,3),
      (4,1,1),
      (6,2,1),
      (7,5,1),
      (8,7,1),
      (9,3,1),
      (10,3,1),
      (2,2,2),
      (3,3,3),
      (4,4,4);

INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('3.1만세운동길',27,35.86784229,128.5866246,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/3.1만세운동길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('3.15해양누리공원',48,35.18661034,128.5640647,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/315해양누리공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('SK인천석유화학벚꽃동산',28,37.51330755,126.6607487,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/sk인천석유화학벚꽃동산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('가남체육공원',41,37.20170935,127.5349142,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/가남체육공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('가덕도 등대',26,35.00064712,128.8295937,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/가덕도 등대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('가덕도대항인공동굴',26,35.01330955,128.8274686,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/가덕도 대항 인공동굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('가장마을',45,35.41012211,127.517934,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/가장마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('간절곶소망우체통',31,35.35880572,129.3611488,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/간절곶소망우체통.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('감삼못공원',27,35.8586427,128.5522335,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/감삼못공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('감악산항노화웰니스체험장',48,35.5901644,127.9199604,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/감악산항노화웰니스체험장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('감중공원',28,37.49323789,126.6736203,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/감중공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('감천동편부두 / 감천항',26,35.05479719,129.0128152,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/감천동편부두.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('강서한강공원',11,37.58608798,126.8171491,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/강서한강공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('강정고령보',27,35.84115974,128.4650416,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/강정 고령보.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('강정포구',50,33.22716248,126.4750196,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/강정포구.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('강화 아르미애월드',28,37.70292593,126.4347558,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/강화 아르미애월드.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('강화 전등사',28,37.63169342,126.4829145,'4000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/강화 전등사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('강화도',28,37.74650234,126.4877441,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/강화도.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('강화도령 화문석 체험장',28,37.7680713,126.445553,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/강화도령 화문석 체험장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('강화오상리고인돌군',28,37.73238024,126.4009025,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/강화오상리고인돌군.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('개항차이야기투어',28,37.47298656,126.6220673,'15000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/개항차이야기투어.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('거창은행나무길',48,35.71573089,127.9278758,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/거창은행나무길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('검룡소 ',42,37.23061007,128.9354542,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/검룡소.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('검은낭',28,37.84277201,124.7082252,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/검은낭.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('고남산 자철석 광산 ',41,38.09922976,127.2129176,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/고남산자철석광산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('고려천도공원',28,37.80382577,126.4631004,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/고려천도공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('고복수음악관',31,35.55635498,129.3197857,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/고복수음악관.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('고사부리성',45,35.62467101,126.7690254,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/고사부리성.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('고산골 메타쉐콰이어길',27,35.83005243,128.6034409,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/고산골 메타세콰이어길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('고성 제3기 현무암 ',42,38.28362432,128.5058578,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/고성 제3기 현무암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('고운골남한강갈대숲',44,37.01975154,128.3820044,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/고운골남한강갈대숲.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('고운뜰공원',36,36.51255836,127.2390461,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/고운뜰공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('고원화목원',45,35.68320818,127.3777448,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/고원화목원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('고창갯벌',45,35.5311329,126.514381,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/고창갯벌.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('고척근린공원',11,37.50662564,126.8533119,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/고척근린공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('곡운구곡 ',42,38.05326058,127.5387169,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/곡운구곡.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('공산성연지',43,36.46392587,127.1284824,'1200','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/공산성연지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('과개안(너븐개) 해안',31,35.49228111,129.4399548,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/과개안 해안.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('관음사국기봉',11,37.4674074,126.9767879,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/관음사 국기봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('광명선원',44,36.98558801,127.5871768,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/광명선원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('광석대',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/광석대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('광수사',30,36.34253165,127.2980482,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/광수사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('광주 송정동 떡갈비 골목',29,35.13971527,126.7943076,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/광주 송정동 떡갈비 골목.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('광주천 벚꽃길',29,35.16601664,126.8868043,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/광주천 벚꽃길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('교동 가마소 ',41,38.10031846,127.2094734,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/교동가마소.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('교래 삼다수마을',50,33.4363537,126.6768835,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/교래 삼다수마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('구담봉.옥순봉',44,36.93994709,128.2478271,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/구담봉 옥순봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('구덕문화공원',26,35.12645293,129.0057695,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/구덕문화공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('구라이골 ',41,38.05663456,127.2034447,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/구라이골.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('구매항',43,36.42508492,126.4319099,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/구매항.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('구문소 ',42,37.09499988,129.0395323,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/구문소.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('구상반려암',26,35.16311949,129.0721766,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/구상반려암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('구영공원',31,35.57104076,129.2421421,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/구영공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('구포 어린이교통공원',26,35.20106946,128.9999568,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/구포 어린이 교통공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('국가핵융합연구소',30,36.37305971,127.354123,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/국가핵융합연구소.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('국군광주병원',29,35.15061815,126.8735642,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/국군광주병원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('국립 산음자연휴양림',41,37.59613388,127.5751826,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/국립 산음자연휴양림.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('국립 천관산자연휴양림',46,34.54513393,126.8998852,'1000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/국립 천관산자연휴양림.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('국립대전현충원 보훈둘레길',30,36.36224607,127.2985588,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/국립대전현충원 보훈둘레길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('국립민속박물관&국립민속박물관 어린이박물관',11,37.58161639,126.9789456,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/국립민속박물관.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('국립세종수목원',36,36.49811084,127.2858062,'5000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/국립세종수목원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('국악사랑',11,37.58292187,126.983334,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/국악사랑.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('궐리사',43,36.28236897,127.1332924,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/궐리사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('귤현타워',28,37.5729687,126.7408481,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/귤현타워.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('그림같은수목원',43,36.51981353,126.6295285,'7000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/그림같은수목원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('금강로하스산호빛공원',30,36.45412384,127.420812,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/금강로하스산호빛공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('금강벼룻길',45,35.97324234,127.5613208,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/금강벼룻길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('금강보행교',36,36.48360422,127.2888008,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/금강보행교.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('금강수변공원',36,36.48288214,127.2919894,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/금강수변공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('금강습지생태공원',45,36.02322004,126.7686263,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/금강습지생태공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('금강자연휴양림',36,36.43544482,127.2305768,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/금강자연휴양림.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('금석저수지',44,36.99068789,127.6130993,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/금석저수지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('금장대 수변공원',47,35.86099896,129.200632,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/금장대 수변공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('금천골 석탄층',42,37.09881528,128.9969915,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/금천골 석탄층.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('금학생태공원',43,36.43385701,127.1238669,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/금학생태공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('급수대 주상절리',47,36.396418,129.1559482,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/급수대 주상절리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('기암 단애',47,36.396418,129.1559482,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/기암 단애.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('기적의놀이터 3호',46,34.98799995,127.500402,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/기적의놀이터 3호.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('기지제',45,35.84607586,127.0627519,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/기지제.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('길동생태공원',11,37.54131872,127.1568388,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/길동생태공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('길치근린공원',30,36.35821881,127.4580085,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/길치근린공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('김광석 길',27,35.86146006,128.6074869,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/김광석길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('김시민장군 충민사',44,36.83655157,127.8476909,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/김시민장군 충민사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('김원일의 마당깊은 집',27,35.86839782,128.5884967,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/김원일의 마당깊은집.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('김해 와인동굴',48,35.37181645,128.820865,'2000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/김해와인동굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('나실 마그마 혼합대',47,36.34715521,129.0652688,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/나실 마그마 혼합대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('나홀로나무',50,33.35095238,126.3492166,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/나홀로나무.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('낙동강하구',26,35.10455151,128.9460086,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/낙동강하구.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('남산골한옥마을',11,37.55912483,126.9940059,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/남산한옥마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('남선공원',30,36.34530253,127.3967005,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/남선공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('낭도해변',46,34.59956921,127.5407221,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/낭도해변.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('내린천 포트홀 ',42,37.96539621,128.2965061,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/내린천 포트홀.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('내산서원',46,35.21318566,126.5172248,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/내산서원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('내송마을',45,35.39790293,127.45354,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/내송마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('내장산 문화관광 음악분수',45,35.52078777,126.8974,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/내장산 문화관광 음악분수.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('너릿재공원',29,35.08037743,126.9535617,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/너릿재공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('넛출선착장',28,37.25407669,126.510989,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/넛출선착장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('노고산',30,36.42415071,127.4891623,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/노고산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('노동리 노동동굴',44,36.95307033,128.3831201,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/노동리 노동동굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('노루용추 계곡',47,36.44083995,129.1152172,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/노루용추 계곡.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('노을길 (태안해변길5코스)',43,36.58522008,126.3161579,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/노을길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('노치마을',45,35.40250603,127.5017967,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/노치마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('노태우 대통령 생가',27,35.98240546,128.6486382,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/노태우대통령생가.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('논산시민공원',43,36.19572284,127.1056777,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/논산시민공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('느린호수길',43,36.63382003,126.7990019,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/느린호수길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('늘푸른공원',28,37.54225353,126.6234846,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/늘푸른공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('다리안 연성전단대',44,36.97083565,128.4197469,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/다리안 연성전단대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('단양 사인암',44,36.89512342,128.3411256,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/단양 사인암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('단양 온달동굴',44,37.05904892,128.4821998,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/단양 온달동굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('달기약수탕',47,36.43835907,129.0836034,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/달기약수탕.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('달맞이공원',46,35.1653929,126.627044,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/달맞이공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('달맞이동산',26,35.15713053,129.1821533,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/달맞이동산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('달메뜰근린공원',36,36.51998036,127.2750594,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/달메뜰근린공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('달창지벚꽃길',27,35.65527222,128.45337,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/달창지벚꽃길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('달천철장유적공원',31,35.6342825,129.3290188,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/달천철장유적공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('답다니수국밭',50,33.24388825,126.4642674,'5000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/답다니수국밭.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('당사해양낚시공원',31,35.58114087,129.4557093,'1000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/당사해양낚시공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('당산봉',50,33.30813768,126.1727802,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/당산봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('당신의과수원',50,33.5218295,126.6232112,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/당신의과수원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('당진농업테마파크',43,36.91390737,126.6497023,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/당진농업테마파크.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('당포성 ',41,38.02367333,126.9856073,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/당포성.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('당포항',48,34.7937983,128.3820771,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/당포항.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대교천 현무암 협곡 ',42,38.18321843,127.2819921,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대교천 현무암 협곡.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대구 계산동성당',27,35.86797563,128.587769,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대구 계산동성당.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대구 동성로거리',27,35.87021438,128.594085,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대구 동성로거리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대구 불로동 고분군',27,35.91455476,128.645657,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대구 불로동 고분군.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대구시민안전테마파크',27,35.98915272,128.6919231,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대구시민안전테마파크.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대구어린이대공원',27,35.84672599,128.6277994,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대구 어린이대공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대구화교협회',27,35.86887838,128.5919047,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대구화교협회.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대덕숲유원지',44,36.69942258,127.6792126,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대덕숲유원지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대명공연문화거리',27,35.85574358,128.5826086,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대명공연문화거리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대왕별 아이누리',31,35.48807878,129.4386578,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대왕별 아이누리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대전 회덕 동춘당',30,36.36535103,127.4413181,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대전 회덕 동춘당.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대천공원',26,35.18137755,129.1678566,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대천공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대청댐 물문화관',30,36.47437538,127.4815116,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대청댐 물문화관.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대청도 옥죽동 해안사구',28,37.84333316,124.7148329,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대청도 옥죽동 해안사구.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대청호 마산동 쉼터',30,36.38127765,127.4787616,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대청호마산동쉼터.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대치유수지체육공원',11,37.50163276,127.0635596,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대치 유수지 체육공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대항 어촌체험 휴양마을',26,35.01172084,128.8276908,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대항선착장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('대항선착장',26,35.01232908,128.8259993,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/대항어촌체험휴양마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('더 씨앗',31,35.48700525,129.2149024,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/더 씨앗.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('덕산너덜',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/덕산너덜.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('도그베이 서울점',11,37.54606676,127.0786208,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/도그베이 서울점.png');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('도담삼봉',44,37.00034474,128.344825,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/도담삼봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('도동해변',48,34.64255425,128.235116,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/도동해변.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('도두봉',50,33.50854518,126.4690332,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/도두봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('도토리숲키즈파크',36,36.47647633,127.2363001,'10000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/도토리숲키즈파크.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('독립문바위',47,37.2385079,131.8696891,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/독립문바위.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('동대구역광장',27,35.87948064,128.6288011,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/동대구역광장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('동막골 응회암 ',41,38.0969004,127.1114269,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/동막골 응회암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('동촌유원지',27,35.87827847,128.6546406,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/동촌유원지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('동학산공원',41,37.22059616,127.0786522,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/동학산공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('두륜미로파크',46,34.49832347,126.6221801,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/두륜미로파크.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('두산 활공장',44,37.00172341,128.4008449,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/두산 활공장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('두송반도',26,35.05959616,128.9862008,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/두송반도.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('두타연 ',42,38.24684076,127.981715,'6000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/두타연.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('두현저수지',31,35.52519055,129.2523369,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/두현 저수지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('뒤웅박고을',36,36.67593718,127.2591732,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/뒤웅박고을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('들꽃공방',48,35.76314036,128.1357839,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/들꽃공방.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('러쉬 이태원SPA점',11,37.54071589,126.9956619,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/러쉬이태원점.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('로드넘버원촬영지',44,36.44834808,127.8059833,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/로드넘버원촬영지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('로만바스',41,37.23331553,127.1569531,'25000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/로만바스.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('로보카폴리안전체험공원',43,36.49437741,127.0989148,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/로보카폴리안전체험공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('리조트 스파밸리 네이처파크',27,35.78816054,128.6353392,'18000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/리조트 스파밸리 네이처파크.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('리틀파머스',36,36.67264806,127.2248153,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/세종 리틀파머스.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('마정저수지',43,36.87317272,127.0971768,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/마정저수지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('마중공원',41,37.23579616,127.0215347,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/마중공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('마천산산림욕장',27,35.88864871,128.4595047,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/마천 산림욕장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('마치광장',30,36.29773748,127.3375043,'10000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/마치광장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('만리포전망타워',43,36.78346368,126.140963,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/만리포전망타워.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('만안자암 단애',47,36.34439603,129.0042659,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/만안자암단애.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('만연사 선캄브리아기 화강편마암 ',46,35.07846708,126.9858811,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/만연사 선캄브리아기 화강편마암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('만인산 자연휴양림',30,36.20229768,127.454763,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/만인산 자연휴양림.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('만장굴',50,33.52804785,126.7706788,'4000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/만장굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('만천하 경관',44,36.97689174,128.337218,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/만천하 경관.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('맥전포항',48,34.8998159,128.1645211,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/맥전포항.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('맨발의청춘길',31,35.5536053,129.3204358,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/맨발의 청춘길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('멍우리 협곡 ',41,38.09745289,127.2510836,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/멍우리협곡.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('면봉산 칼데라',47,36.2077618,129.0175909,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/면봉산 칼데라.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('명동도선장',48,35.09732597,128.7206145,'7000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/명동도선장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('명사십리 및 구시포',45,35.44557741,126.4356957,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/명사십리 및 구시포.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('명품옻골 1616 협동조합',27,35.90776184,128.6868425,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/명품옻골 1616협동조합.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('모항해수욕장',45,35.58286024,126.5077442,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/모항해수욕장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('목포 북항',46,34.80451263,126.3651121,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/목포북항.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('몰운대',26,35.04028136,128.9699333,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/몰운대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('무등산 광주화강암',29,35.14292005,126.9346396,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/무등산 광주 화강암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('무등산 정상3봉',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/무등산 정상3봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('무등산 풍혈',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/무등산 풍혈.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('무지개놀이터',31,35.51737886,129.3223783,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/무지개 놀이터.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('무한의다리',46,34.91931418,126.061264,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/무한의다리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('문래창작촌',11,37.51431998,126.8976521,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/문래창작촌.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('문수산전망대',31,35.53172521,129.2139679,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/문수산전망대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('문암생태공원',44,36.67426025,127.4512616,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/문암생태공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('문충사',30,36.3243616,127.4598926,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/문충사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('미성온천',27,35.81768281,128.5175432,'8000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/미성온천.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('밀마루전망대',36,36.50544836,127.2558421,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/밀마루 전망대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('바라길 (태안해변길 1코스)',43,36.89767661,126.2073595,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/바라길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('바람재쉼터',36,36.44872273,127.323918,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/바람재쉼터.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('박팽년선생유허비',30,36.34785323,127.4524343,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/박팽년선생유허비.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('반송공원',26,19.69442748,117.9925663,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/반송공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('방동저수지',30,36.27963883,127.2970556,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/방동저수지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('방어진항',31,35.48474566,129.4296976,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/방어진항.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('방축천 음악분수',36,36.4993463,127.2572171,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/방축천 음악분수.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('방호정 감입곡류천',47,36.32912523,128.9875595,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/방호정 감입곡류천.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('백룡동굴 ',42,37.27791443,128.5770904,'18000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/백룡동굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('백마능선 ',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/백마능선.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('백사장항',43,36.58569779,126.3152802,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/백사장항.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('백아산 석회동굴',46,35.14581546,127.1736323,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/백아산 석회동굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('백양산',26,35.18536923,129.0424174,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/백양산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('백운계곡 ',41,38.07261983,127.4103058,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/백운계곡.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('백운산 구시폭포',46,35.1127182,127.5996928,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/백운산 구시폭포.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('백의리층 ',41,38.06267401,127.1206021,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/백의리층.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('법수 도석',47,36.34159645,129.1555582,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/법수도석.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('베릿네오름',50,33.24747885,126.4220099,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/베릿네오름.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('베어트리파크',36,36.67206452,127.2092056,'12000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/베어트리파크.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('별신',36,36.52775894,127.3701506,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/세종 별신.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('별천지공원',44,36.7161338,127.637452,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/별천지공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('병바위',45,35.48401479,126.6063907,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/병바위.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('병천사',29,35.13789708,126.8567077,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/병천사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('보현암',48,34.97425828,128.204935,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/보현암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('봉유재',44,36.20608905,127.9272153,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/봉유재.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('부산 감천문화마을',26,35.0975007,129.0106254,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/부산 감천 문화마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('부산어린이대공원',26,35.18725791,129.0426785,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/부산어린이대공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('부산영화촬영스튜디오',26,35.162518,129.1380958,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/부산 영화 촬영 스튜디오.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('부안 솔섬',45,35.59165894,126.4897039,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/부안 솔섬.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('부평역북광장',28,37.49053355,126.7244908,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/부평역북광장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('북면수변생태공원',48,35.37507059,128.6120248,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/북면수변생태공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('북한산 족두리봉',11,37.6170726,126.9352735,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/북한산 족두리봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('분바위와 월띠',28,37.77276982,124.7515952,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/분바위와 월띠.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('분수광장',43,36.31978719,126.5076337,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/분수광장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('불암산나비정원',11,37.65553185,127.0806508,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/불암산 나비정원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('비녀랑 한복이랑',36,36.62976798,127.2872775,'10000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/비녀랑 한복이랑.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('비둘기낭 폭포 ',41,38.07983487,127.2169317,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/비둘기낭폭포.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('비래암 ',42,38.14651436,127.5801103,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/비래암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('비암사',36,36.61140451,127.1920532,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/비암사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('비양도',50,33.40811081,126.2274926,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/비양도.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('뽀로로파크 세종점',36,36.4951441,127.2621807,'23000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/뽀로로파크 세종.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('사명대사 유적지',48,35.49755942,128.6037056,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/사명대사 유적지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('사정공원',30,36.2988414,127.4092284,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/사정공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('사천 흥사리 매향비',48,35.08633956,128.0151626,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/사천 흥사리 매향비.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('산방산',50,33.23626724,126.3115002,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/산방산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('산약초타운',45,35.77625108,127.4166306,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/산약초타운.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('산유골수목공원',48,34.79500689,128.4042001,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/산유골수목공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('삼매당',30,36.3460285,127.4556924,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/삼매당.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('삼부연폭포 ',42,38.1401993,127.3276947,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/삼부연폭포.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('삼선암',47,37.54941873,130.9085715,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/삼선암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('삼익비치수변공원',26,35.14622773,129.1152455,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/삼익비치수변공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('삼척미로정원',42,37.44412702,129.0707078,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/삼척미로정원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('삼형제굴바위 ',47,37.24257684,131.867478,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/삼형제굴바위.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('상사마을',46,35.21585206,127.4995906,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/상사마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('새인봉 ',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/새인봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('서귀포 패류화석산지',50,33.27119776,126.553984,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/서귀포패류화석산지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('서귀포항',50,33.2391598,126.5648727,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/서귀포항.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('서리풀공원',11,37.48907757,127.002721,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/서리풀공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('서산 용현리 마애여래삼존상',43,36.7734728,126.6051934,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/서산용현리마애여래삼존상.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('서석대 ',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/서석대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('서울숲',11,37.54305533,127.041777,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/서울숲.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('서유리 공룡화석지',46,35.1695447,127.0907918,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/서유리 공룡화석지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('서풍받이',28,37.84277201,124.7082252,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/서풍받이.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('서프라이즈 테마파크',50,33.4652169,126.6596066,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/서프라이즈 테마파크.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('석남사계곡',31,35.61744565,129.0403862,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/석남사계곡.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('석모도 자연휴양림',28,37.69948813,126.3153613,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/석모도 자연휴양림.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('선교사블레어주택',27,35.86662573,128.5849831,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/선교사블레어주택.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('선바위',11,37.57892746,126.9589447,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/선바위.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('선바위공원',31,35.58336423,129.2344952,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/선바위공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('선암계곡',44,36.90797691,128.3094058,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/선암계곡.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('선운산 ',45,35.50267623,126.5865614,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/선운산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('선재도',28,37.2328185,126.537065,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/선재도.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('선흘 동백동산/곶자왈',50,33.51045451,126.7188282,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/선흘동백동산-곶자왈.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('섬이정원',48,34.75229653,127.8606709,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/섬이정원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('성산일출봉 ',50,33.45811112,126.9415156,'5000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/성산일출봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('성산포성당',50,33.45399168,126.913657,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/성산포성당.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('성수동 카페거리',11,37.5432528,127.0566146,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/성수동카페거리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('성인봉 원시림 ',47,37.48938569,130.8595805,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/성인봉 원시림.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('성주산일출전망대',43,36.33876221,126.6359216,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/성주산일출전망대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('세종리 은행나무 ',36,36.50420747,127.2918861,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/양화리 은행나무.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('세종어린이천문대',36,36.60288284,127.1675362,'420000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/세종어린이천문대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('세종호수공원 일원',36,36.49676636,127.2750156,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/세종호수공원 일원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('세천포구',50,33.26961374,126.6741708,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/세천포구.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('소금정공원 장미터널',44,36.97530355,128.3647184,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/소금정공원 장미터널.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('소두방공원',26,35.32533112,129.1817598,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/소두방공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('소앵무마을',46,34.44603632,126.1970049,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/소앵무마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('소양강 하안단구 ',42,38.13140859,128.210956,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/소양강하안단구.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('소요산',45,35.52238568,126.6208412,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/소요산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('속리산연꽃단지',44,36.52100386,127.8168025,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/속리산 연꽃단지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('속초시 반려견놀이터',42,38.21455028,128.5699458,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/속초시 반려견놀이터.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('송강리 습곡구조',47,36.48421666,129.0266154,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/송강리 습곡구조.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('송대소주상절리',42,38.2011326,127.2600797,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/송대소주상절리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('송도 도그파크',28,37.4079443,126.6324764,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/송도 도그파크.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('송도반도',26,35.06596551,129.0195116,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/송도반도.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('송석정',46,34.93261137,126.9904816,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/송석정.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('송운사',31,35.5471601,129.0928336,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/송운사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('수도암',27,35.71415544,128.5073942,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/수도암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('수락리 주상절리',47,36.21561768,128.9346036,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/수락리 주상절리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('수목원생활온천',27,35.80827563,128.522643,'12000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/수목원생활온천.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('수원올림픽공원',41,37.26152664,127.0285945,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/수원올림픽공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('수월봉',50,33.29478901,126.1634201,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/수월봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('순교성지새남터기념성당',11,37.52518367,126.9570964,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/순교성지새남터기념성당.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('숫돌바위',47,37.23923279,131.8680225,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/숫돌바위.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('숲속에 동물농장',42,37.68230365,128.7104523,'20000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/숲속에 동물농장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('쉬미항',46,34.50514085,126.2002338,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/쉬미항.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('슬도등대',31,35.47817139,129.4294006,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/슬도 등대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('승일교',42,38.20430801,127.3023924,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/승일교.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('시무지기 폭포 ',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/시무지기 폭포.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('식장산 문화공원(해돋이전망대)',30,36.30236449,127.4805913,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/식장산 문화공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('신선대와 억새평전 ',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/신선대와 억새평전.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('신양선착장',46,34.4621993,127.0982448,'5000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/신양선착장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('신평소공원',26,35.29271679,129.2600539,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/신평소공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('쌍류포도정원협동조합',36,36.60338086,127.2161818,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/쌍류포도정원 협동조합.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('아라마루 전망대(아라폭포)',28,37.57260971,126.70141,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/아라마루전망대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('아람달 체험마을',36,36.66593808,127.2449387,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/아람달 체험마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('아르떼수성랜드',27,35.82861389,128.6133984,'3000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/아르떼수성랜드.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('아름들 반려견쉼터',42,37.29589454,127.9251069,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/아름들 반려견쉼터.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('아중체련공원',45,35.82254704,127.1683403,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/아중체련공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('아차산 고구려정',11,37.55373848,127.1005658,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/아차산 고구려정.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('아차산봉수대터',11,37.60863186,127.0866933,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/아차산봉수대터.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('알봉',47,37.52041545,130.8582435,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/알봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('양구백토 ',42,38.20748089,127.9515051,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/양구백토.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('양의대 하천습지 ',42,38.25766667,127.8032005,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/양의대하천습지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('여수선사유적공원',46,34.77880651,127.6462723,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/여수선사유적공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('연기암',46,35.26880173,127.5046027,'4000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/연기암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('연기향교',36,36.54339168,127.2811665,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/연기향교.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('연남동끝자락길',11,37.56601432,126.9170794,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/연남동 끝자락길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('연파마을',46,35.25935727,127.4422807,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/연파마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('연화굴',47,36.396418,129.1559482,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/연화굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('영등포근린공원',11,37.51531732,126.9108425,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/영등포 근린공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('영모정',45,35.71186396,127.4172822,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/영모정.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('영산강 극락 친수공원 일원',29,35.13846321,126.8287546,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/영산강극락친수공원일원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('영평사',36,36.47334043,127.2276982,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/영평사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('예래포구',50,33.23351576,126.3745754,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/예래포구.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('오동동 통술거리',48,35.20746103,128.5779823,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/오동동 통술거리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('오륙도 ',26,35.09204235,129.1269487,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/오륙도.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('오봉정사',41,37.34664065,126.9655201,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/오봉정사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('오산리 구상화강편마암',45,36.02465008,127.7005348,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/오산리 구상화강편마암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('오성 한글다리',45,35.90371966,127.2431121,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/오성한글다리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('오수휴게소 펫펨레스토랑',45,35.54025935,127.3116544,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/오수휴게소 펫펨레스토랑.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('오지호생가',29,35.14860837,126.9387807,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/오지호생가.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('오창 미래지 한옥마을',44,36.73510243,127.4047363,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/오창 미래지 한옥마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('오치골공원',31,35.55013196,129.3876105,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/오치골공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('옥동연꽃방죽',44,36.89727462,127.5131998,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/옥동연꽃방죽.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('옥류각',30,36.37267814,127.4511754,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/옥류각.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('옥오재',30,36.37807155,127.427319,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/옥오재.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('옥화1경청석굴',44,36.61324092,127.68602,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/옥화1경청석굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('옹진 백령도 두무진',28,37.9757771,124.6163553,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/옹진 백령도 두무진.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('와흘메밀마을',50,33.49429664,126.6362274,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/와흘메밀마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('용계저수지',44,36.97221208,127.6039395,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/용계저수지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('용담호자연생태습지공원',45,35.81600846,127.4614589,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/용담호자연생태습지공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('용머리해안',50,33.2322594,126.3145223,'2000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/용머리해안.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('용연동굴 ',42,37.20893213,128.9418876,'3500','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/용연동굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('용연폭포',47,36.38413279,129.1296565,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/용연폭포.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('용천사 꽃무릇공원',46,35.18356726,126.5452925,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/용천사 꽃무릇공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('용추 협곡',47,36.38413279,129.1296565,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/용추협곡.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('용출소',47,37.52469273,130.857874,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/용출소.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('용틀임 바위',28,19.69442748,117.9925663,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/용틀임바위.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('용화사',30,36.2998708,127.3505614,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/용화사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('용화산 ',42,38.04829276,127.7437761,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/용화산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('우도',50,33.51950171,126.95103,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/우도.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('우면산 소망탑 전망대',11,37.48200922,127.0181504,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/우면산송망탑전망대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('우포출렁다리',48,35.53915383,128.4015194,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/우포출렁다리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('운교리 삼각주 퇴적층',45,35.73063317,127.3670056,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/운교리 삼각주 퇴적층.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('운주사 층상응회암 ',46,34.92910162,126.8825773,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/운주사 층상응회암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('운주산성',36,36.68298329,127.2420634,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/운주산성.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('울산 12경',31,35.54759155,129.291894,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/울산 12경.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('울산 신화마을',31,35.52351741,129.3413431,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/울산 신화마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('울산대공원',31,35.53080459,129.2940415,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/울산대공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('울산애견공원',31,35.53123468,129.2719795,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/울산애견공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('울산어린이천문대',31,35.63010049,129.2266473,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/울산 어린이 천문대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('울산함',31,35.50219559,129.3827901,'1000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/울산함.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('울주 천전리 각석',31,35.61454576,129.177341,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/울주 천전리 각석.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('웅양면 동호마을',48,35.79894362,127.9246849,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/웅양면 동호마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('원삼면 목신리 석조여래입상',41,37.10599689,127.3099234,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/원삼면 목신리 석조여래입상.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('원수산MTB공원',36,36.52240495,127.2671545,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/원수산 mtb 공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('원수산습지생태원',36,36.51593081,127.2737152,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/원수산습지생태원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('원전선착장',48,35.06758319,128.628615,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/원전선착장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('월랑저수지',43,36.84513672,127.0782404,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/월랑저수지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('월전장어구이촌',26,35.2381615,129.2441707,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/월전장어구이촌.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('위도 ',45,35.59675491,126.2832194,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/위도.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('유관순열사생가',43,36.75722609,127.3167936,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/유관순열사생가.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('유성 족욕체험장',30,36.35504495,127.3454326,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/유성 족욕체험장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('유유누에오디마을',45,35.63197141,126.5130147,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/유유누에오디마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('윤극영가옥',11,37.64652331,127.0109186,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/윤극영가옥.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('윤정사',43,36.75549395,127.0603584,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/윤정사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('윤필봉 자연동굴 ',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/윤필봉 자연동굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('은구비역사공원',30,36.37508393,127.3233784,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/은구비역사공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('은대리 판상절리와 습곡구조 ',41,38.0461581,127.0564446,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/은대리 판상절리와 습곡구조.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('을미기공원',30,36.44277775,127.4113409,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/을미기공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('응천공원',44,37.03119976,127.605796,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/응천공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('의상봉 ',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/의상봉.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('의중마을',48,35.40198993,127.6896163,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/의중마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('이끼터널',44,36.96202671,128.3335521,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/이끼터널.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('이상설생가',44,36.86216139,127.4800454,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/이상설생가.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('이응로선생사적지',43,36.66082774,126.622256,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/이응로선생사적지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('인왕사',11,37.57863584,126.9597168,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/인왕사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('인천북항다목적부두',28,37.50557739,126.631971,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/인천북항다목적부두.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('인천항 제8부두',28,37.47614439,126.6146845,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/인천항제8부두.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('인천향교',28,37.43936383,126.6868012,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/인천향교.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('일출랜드',50,33.38120967,126.8422676,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/일출랜드.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('임진강 주상절리 ',41,38.01993264,127.0154491,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/임진강주상절리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('입석대 ',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/입석대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('장미의거리',46,34.8022611,126.4257707,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/장미의거리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('장불재 ',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/장물재.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('장산',26,35.18110537,129.1681899,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/장산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('장안사계곡',26,35.3744349,129.2328151,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/장안사계곡.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('장판각',30,36.34714229,127.45752,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/장판각.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('적벽',46,35.10394926,127.0874076,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/적벽.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('적벽강',45,35.63709776,126.4629246,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/적벽강.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('적조사',11,37.5983844,127.007423,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/적조사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('적촌선착장',48,34.89980733,128.4629395,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/적촌선착장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('전곡리 유적 토층 ',41,38.01412302,127.0601924,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/전곡리 유적 통층.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('전농로',50,33.50459638,126.5171791,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/전농로.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('전도갯벌체험장',48,34.831596,128.0202521,'10000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/전도갯벌체험장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('전의향교',36,36.68051062,127.2007894,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/전의향교.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('점새늪연꽃생태공원',27,35.86686475,128.7439191,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/점새늪연꽃생태공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('제봉산 마법의 숲 체험원',29,35.09325736,126.8377688,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/제봉산마법의숲체험원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('제주 성산항',50,33.47254822,126.9299218,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/제주 성산항.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('제천 청풍호 자드락길 5코스',44,36.96687715,128.2382244,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/제천 청풍호 자드락길 5코스.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('조천연꽃공원',36,36.58531221,127.3007053,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/조천연꽃공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('좌상바위 ',41,38.03756552,127.1034794,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/좌상바위.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('주방천 페퍼라이트',47,36.38413279,129.1296565,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/주방천 페퍼라이트.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('주산지',47,36.36276692,129.1898518,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/주산지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('주상절리대',50,33.23800218,126.426118,'2000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/주상절리대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('주암산가창저수지',27,35.7996421,128.6099245,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/주암산가창저수지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('죽도',47,37.52809398,130.9365836,'2000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/죽도.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('중앙공원',26,35.11232714,129.0279957,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/부산 중앙공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('중앙호수공원 카페거리',43,36.77483661,126.4490881,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/중앙호수공원카페거리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('증심사 계곡 안산암질용암 ',29,35.13320769,126.9602459,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/증심사계곡안산암질용암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('지공너덜 ',29,35.14414583,126.9890014,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/지공너덜.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('지리산국립공원',46,35.33418373,127.5328708,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/지리산국립공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('지세포성 꽃동산',48,34.83283881,128.7160192,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/지세포성 꽃동산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('지심도선착장',48,34.820738,128.7499249,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/지심도선착장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('지인공방',28,37.47278937,126.6229116,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/지인공방.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('지장산 응회암 ',41,38.1029012,127.1937609,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/지장산 응회암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('직소폭포',45,35.64100763,126.580314,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/직소폭포.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('직전산촌생태마을',48,35.10861516,127.8763353,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/직전산촌생태마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('진부령 ',42,38.33182337,128.3166041,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/진부령.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('진천 연곡리 석비',44,36.83976701,127.3402308,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/진천 연곡리 석비.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('진촌리 현무암',28,37.95369269,124.7321451,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/진촌리현무암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('진해항 제1부두',48,35.12481696,128.6999795,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/진해항 제1부두.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('차맛체험관',42,37.36901884,127.893302,'2000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/차맛체험관.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('차탄천 주상절리 ',41,38.06342847,127.065371,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/차탄천 주상절리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('찬샘마을',30,36.41738187,127.4796577,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/찬샘마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('창경궁 홍화문',11,37.57767823,126.9938554,'1000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/창덕궁홍화문.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('창계숭절사',30,36.28444794,127.3723015,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/창계숭절사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('창덕궁과 후원',11,37.58095837,126.9919888,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/창덕궁과 후원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('창리저수지',41,37.12701415,127.1691577,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/창리저수지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('창원시 어린이교통공원',48,35.23202067,128.6489394,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/창원시 어린이교통공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('채석강',45,35.62798225,126.4700297,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/채석강.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('챌린지팜',43,36.12875224,127.0783736,'12000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/챌린지팜.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('천장굴 ',47,37.2385079,131.8696891,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/천장굴.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('천주교 손골성지',41,37.34428415,127.0525206,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/천주교 손골성지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('천지연폭포',50,33.24453413,126.559473,'2000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/천지연폭포.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('철구소계곡',31,35.54838903,129.013496,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/철구소계곡.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('철원 용암대지 ',42,38.25879714,127.2090243,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/철원용암대지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('철원 평화전망대',42,38.30932533,127.2513634,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/철원평화전망대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('청송 얼음골',47,36.31433408,129.2187145,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/청송얼음골.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('청송 자연휴양림 퇴적암층',47,36.31791942,129.0537206,'1000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/청송 자연휴양림 퇴적암층.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('청송구과상유문암',47,36.44083995,129.1152172,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/청송구과상유문암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('청춘발산마을',29,35.15994796,126.8914652,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/청춘발산마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('초안산',11,37.63911089,127.0449907,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/초안산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('최승효가옥',29,35.14131711,126.9138942,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/최승효가옥.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('춘천한백록묘역',42,37.90009776,127.682225,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/춘천한 백록묘역.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('충주호 유람선',44,36.93154539,128.2539906,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/충주호 유람선.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('충효동 점토광물산지 ',29,35.16752391,126.9983305,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/충효동점토광산물산지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('칠곡향교',27,35.94916577,128.5518143,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/칠곡향교.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('코끼리바위',47,37.5385136,130.8689087,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/코끼리바위.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('큰끝등대',46,34.66080859,127.8053725,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/큰끝등대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('태안향교',43,36.75919137,126.29723,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/태안향교.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('태종대 전망대',26,35.05039907,129.0883893,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/태종대 전망대.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('태화강국가정원 삼호지구',31,35.55010222,129.2832363,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/태화강 국가정원 삼호지구.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('태화강동굴피아',31,35.54528368,129.3024681,'1000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/태화강 동굴피아.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('테미공원',30,36.31922263,127.4218489,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/테미공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('토광요',48,35.77970781,128.1289452,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/토광요.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('티놀자 애니멀 파크',30,36.41590518,127.3751532,'13000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/티놀자 애니멀파크.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('파라다이스시티',28,37.43726279,126.4557806,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/파라다이스시티.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('팔괘정',43,36.1561618,127.0096596,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/팔괘정.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('포천 아우라지 베개용암 ',41,38.04177917,127.1175224,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/포천아우라지베개용암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('포천아트밸리',41,37.9235007,127.2365178,'5000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/포천아트밸리.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('푸른길분수공원',29,35.15362149,126.9268761,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/푸른길 분수공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('하남 나무고아원',41,37.58218135,127.1961702,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/하남 나무고아원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('하늘호수',48,35.78391558,127.8148145,'20000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/하늘호수.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('하사마을',46,35.21005283,127.5064152,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/하사마을.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('하제선착장',45,35.90894452,126.6244116,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/하제선착장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('한담해안산책로',50,33.45922868,126.3106092,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/한담해안산책로.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('한라산',50,33.39273062,126.4948725,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/한라산.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('한밭수목원',30,36.36863023,127.3862702,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/한밭수목원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('한지생각이닥',28,37.47068134,126.6262058,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/한지생각이닥.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('합호서원',36,36.52303372,127.3272852,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/합호서원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('해안분지 ',42,38.29018605,128.1454849,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/해안분지.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('행담도',43,36.94519262,126.8071427,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/행담도.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('향림사',46,34.97253743,127.4789626,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/향림사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('현대태권도디펜스',41,37.64289449,127.2370981,'30000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/현대태권도디펜스.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('호가정',29,35.08242717,126.7870847,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/호가정.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('호산공원',27,35.84902586,128.4839536,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/호산공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('홍법사',26,35.30275178,129.1106444,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/홍법사.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('홍성 오관리 당간지주',43,36.6037851,126.6680506,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/홍성 오관리 당간지주.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('홍성호',43,36.53758703,126.4993259,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/홍성호.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('홍예공원',43,36.65460976,126.6655189,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/홍예공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('홍제천 폭포마당',11,37.57987971,126.9357023,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/홍제천 폭포마당.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('홍주성 천년여행길',43,36.60137136,126.6607874,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/홍주성 천년여행길.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('홍포선착장',48,34.70573147,128.6002354,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/홍포선착장.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('화동못수변공원',31,35.59215477,129.3747355,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/화동못수변공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('화명수목원',26,35.25105354,129.0426767,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/화명 수목원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('화순 고인돌 장동응회암',46,34.98667627,126.9169534,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/화순 고인돌 장동응회암.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('화원자연휴양림',27,35.77183001,128.5367595,'60000','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/화원자연휴양림.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('화적연 ',41,38.11630366,127.2618765,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/화적연.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('화진포 ',42,38.47884469,128.4391216,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/화진포.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('화천 백립암복합체',42,38.18986341,127.7993307,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/화천 백립암복합체.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('환벽당',29,35.18577193,127.0031047,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/환벽당.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('회야댐 생태공원',31,35.46839125,129.245278,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/회야댐 생태공원.jpg?alt=media&');
INSERT INTO recommendation (name,city_code,lat,lng,travel_cost,url) VALUES ('흥양읍성터 및 고흥옥하리홍교',46,34.61327721,127.2852525,'','https://firebasestorage.googleapis.com/v0/b/tripfullaccel.appspot.com/o/흥양읍성터 및 고흥옥하리홍교.jpg?alt=media&');
