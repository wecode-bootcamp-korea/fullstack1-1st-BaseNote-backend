# BASENOTE Back-end 소개

### Find Your Scent, 가장 나다운 향을 찾아드립니다.

- 향수 판매 사이트 [파펨](https://paffem.me/) 클론 프로젝트

## 🎬 프로젝트 Demo 영상

---

[BASENOTE Demo 영상](https://vimeo.com/579384175)

## 💁‍♀️💁‍♂️ 팀원

---

- [박미정](https://github.com/undefinedP)
- [김민성](https://github.com/Minseongkimm)
- [오송미](https://github.com/songmiO)
- [감하영](https://github.com/iamhayoung)

## 📆 프로젝트 기간

---

2021.07.05 ~ 2021.07.23 (19일)

## 🔑 Skills

---

<br/>
<p align="center">
FrontEnd
<p align="center">
<img src="https://img.shields.io/badge/React-61DAFB?style=flat&logo=React&logoColor=black"/></a>
<img src="https://img.shields.io/badge/ReactRouter-CA4245?style=flat&logo=ReactRouter&logoColor=black"/></a>
<img src="https://img.shields.io/badge/ Sass-CC6699?style=flat&logo=Sass&logoColor=white"/></a>
<img src="https://img.shields.io/badge/ JavaScript-F7DF1E?style=flat&logo=JavaScript&logoColor=white"/></a>

<p align="center">
BackEnd
<p align="center">
<img src="https://img.shields.io/badge/ Node.js-339933?style=flat&logo=Node.js&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Nodemon-76D04B?style=flat&logo=Nodemon&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Express-000000?style=flat&logo=Express&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Prisma-2D3748?style=flat&logo=Prisma&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Bcrypt-003A70?style=flat&logo=LetsEncrypt&logoColor=white"/></a>
<img src="https://img.shields.io/badge/JSONWebTokens-000000?style=flat&logo=JSONWebTokens&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Babel-F9DC3E?style=flat&logo=Babel&logoColor=white"/></a>
<img src="https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=MySQL&logoColor=white"/></a>

<p align="center">
공통
<p align="center">
<img src="https://img.shields.io/badge/Git-F05032?style=flat&logo=Git&logoColor=white"/></a>
<img src="https://img.shields.io/badge/ESLint-4B32C3?style=flat&logo=ESLint&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Prettier-F7B93E?style=flat&logo=Prettier&logoColor=white"/></a>

<br/>
<br/>

## 🛠 Tool

---

<br/>
<p align="center">
<img src="https://img.shields.io/badge/Trello-0052CC?style=flat&logo=Trello&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Slack-4A154B?style=flat&logo=Slack&logoColor=white"/></a>
<img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=GitHub&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Postman-FF6C37?style=flat&logo=Postman&logoColor=white"/></a>
<br/>
<br/>

## Front-end Repository

---

[BASENOTE Front-end Repository Link](https://github.com/wecode-bootcamp-korea/fullstack1-1st-BaseNote-frontend)

## Modeling

---

![](https://user-images.githubusercontent.com/50080535/126932519-7a9737d3-b4f7-4966-adc1-6d3b5b461b7b.png)

## Back-end 구현 기능 상세

---

### 1. Modeling / Database

- Aquery Tool을 활용하여 ERD 작성
- Prisma를 사용하여 mySQL DB 모델 생성
- DB에 데이터를 일괄 삽입하기 위해 CSV, dataUploader.js 활용

### 2. 로그인 API

- 로그인 Request의 항목이 공란일 때 에러 핸들링
- Bcrypt를 이용하여, Request로 입력 받은 비밀번호와 DB에 저장된 해싱된 패스워드를 비교
- 비밀번호가 일치할 시 토큰을 발급하여 Response로 토큰을 전달

### 3. 회원가입 API

- 비밀번호를 Bcrypt로 솔팅, 해싱하여 DB에 저장
- 이미 존재하는 유저 아이디로 가입을 시도했을 시, 에러 출력

### 4. 상품 리스트 API

- 쿼리 스트링을 활용한 상품 용량별 상품 리스트 조회

### 5. Access Token 인가 Middleware

- Token을 복호화하여 얻은 유저 정보로 해당 유저가 DB에 존재하는 유저인지 조회
- 존재하는 유저라면, request로 복호화한 유저 정보를 전달, 존재하지 않는 유저라면 에러 출력
- 유효하지 않거나 만료된 토큰일 경우 에러 출력

### 6. 장바구니 API

- 장바구니 Read API
  - 유저의 토큰을 확인한 후, 해당 유저의 장바구니 아이템을 조회
- 장바구니 Update API
  - 장바구니 아이템의 수량 변경

## Reference

---

- 이 프로젝트는 파펨 사이트를 참조하여 학습목적으로 만들었습니다. 이 코드를 활용하여 이득을 취하거나 무단 배포할 경우 법적으로 문제될 수 있습니다.
- 이 프로젝트에서 사용하고 있는 사진과 동영상은 unsplash와 pixabay에서 공유받은 Free 이미지 및 동영상이므로 해당 프로젝트 외부인이 사용할 수 없습니다.
