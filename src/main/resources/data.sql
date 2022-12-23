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

INSERT INTO post (user_id,title,content)
    VALUE (1,'제목1','내용1'),
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
