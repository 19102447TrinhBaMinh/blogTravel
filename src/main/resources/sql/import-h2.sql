ALTER TABLE POST
  ALTER COLUMN create_date SET DEFAULT CURRENT_TIMESTAMP;


-- Users
-- password in plaintext: "password"

INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (1, '1234minh', '1234minh@naver.com', '1234minh', 'Minh', 'BaMinh',
   1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES

  (2, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'minh@gmail.com', '123park', 'minh', 'parkyoung', 1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES (3, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'baminh@mail.com', '123lee', 'bin', 'leeyoung', 1);

-- Roles

INSERT INTO ROLE (role_id, role)
VALUES (1, 'ROLE_ADMIN');
INSERT INTO ROLE (role_id, role)
VALUES (2, 'ROLE_USER');


-- User Roles
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 1);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (2, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (3, 2);


-- Posts
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (1, 1, '감천 문화마을  ',
        '"감천문화마을은 1950년대 6.25 피난민의 힘겨운 삶의 터전으로 시작되어 현재에 이르기까지 민족현대사의 한 단면과 흔적인 부산의 역사를 그대로 간직하고 있는 곳입니다. 산자락을 따라 질서정연하게 늘어선 계단식 집단 주거형태와 모든 길이 통하는 미로미로(美路迷路) 골목길의 경관은 감천만의 독특함을 보여줍니다. 감천의 이런 특색과 역사적 가치를 살리기 위해 지역 예술인들과 마을 주민들이 모여 시작한 『마을미술 프로젝트』는 감천문화마을 만들기 사업의 디딤돌이 되었으며 이 사업을 시작으로 각종 공모사업을 유치하여 2015년에는 140만여명이 방문하는 명소가 되었습니다."',
        CURRENT_TIMESTAMP());
