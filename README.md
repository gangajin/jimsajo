## 📌 프로젝트 이름
jimsajo - 동남아 여행 패키지 구매 사이트

## 1️⃣ 프로젝트 개요

### 📚 소개
여행을 떠나고 싶지만 당장 갈 수 없는 상황에서, 팀원들과 함께 여행 가는 설렘을 느끼고 싶었습니다. 그래서 동남아 여행 패키지를 함께 구매하고, 여행 계획을 이야기하며 출발 전의 설렘을 나눌 수 있는 웹사이트를 만들게 되었습니다.

## 🛠 개발 환경 및 기술 스택

### 운영체제
- Windows 11

### 사용 언어
- Java, JavaScript, CSS, HTML, MyBatis, JSP

### Framework / Library
- Spring Boot, Bootstrap, CKEditor5

### Database
- MySQL

### Tool
- MySQL Workbench, StarUML, Eclipse STS (Spring Tool Suite), Visual Studio Code, gradle, JDK 21

### WAS
- Apache Tomcat 10.1

### 협업 도구
- GitHub

### API / 외부 서비스
- 아임포트 결제 API, 카카오 인증 API, 구글맵 API

 ## 👥 팀원 및 담당 역할
- **공통 역할**: CSS, Bootstrap
- **김장환**: 메인페이지, 파비콘, 구글지도 API, 상품 패키지 관련 페이지
- **김현석**: OAuth, 로그인 관련, 회원정보 수정 및 탈퇴, 관리자 권한 부여
- **이강진**: 결제API,결제 페이지, 1대1 문의 페이지, 리뷰 페이지, 공지사항 페이지

## 2️⃣ 설치 및 실행 방법
### 📥 Git clone
    git clone https://github.com/gangajin/jimsajo.git
  
    cd jimsajo

### ⚙️ 환경설정
1️⃣ MySQL에 다운받은 jimsajo.sql을 붙여넣기 합니다.

2️⃣ src/main/resources/application.properties 파일에 DB 접속 정보를 아래와 같이 설정합니다.

    spring.datasource.url=jdbc:mysql://localhost:3306/jimsajo

    spring.datasource.username=DB_USERNAME

    spring.datasource.password=DB_PASSWORD

3️⃣ Kakao 로그인 (OAuth2) 사용 외부 서비스 키를 application.properties에 추가합니다.

    spring.security.oauth2.client.registration.kakao.client-id=여기에_카카오_클라이언트_ID_입력

### ▶️ 빌드 및 실행
아래 명령어로 애플리케이션을 빌드하고 실행합니다.

    ./gradlew build

    ./gradlew bootRun

✅ 실행 후 웹 브라우저에서 http://localhost:8080에 접속해 서비스를 확인하세요.

## 🖥️ 화면 구현 설명

<details>
<summary>메인 페이지</summary>

- 동남아별 카테고리에 등록된 패키지 상품과 리뷰, 웹 페이지 소개를 스크롤을 내리면서 볼 수 있습니다.
<img src="src/main/resources/static/image/screenshot/mainPage.png" alt="메인 화면"/>

</details>

<details>
<summary>회원가입 페이지</summary>

- JavaScript를 통한 유효성 검사로 아이디 중복검사 비빌번호 확인이 가능합니다. 
<img src="src/main/resources/static/image/screenshot/logjoin.png" alt="회원가입"/>

</details>

<details>
<summary>로그인 페이지</summary>

- OAuth를 사용하여 카카오 간편 로그인이 가능합니다. 
<img src="src/main/resources/static/image/screenshot/login.png" alt="로그인"/>

</details>

<details>
<summary>나라별 패키지 카테고리</summary>

- 나라별 카테고리에서 패키지 상품을 확인할 수 있습니다. 
<img src="src/main/resources/static/image/screenshot/package.png" alt="카테고리별 패키지"/>

</details>

<details>
<summary>패키지 상품 상세보기</summary>

- 내가 구매할 패키지의 상세보기 페이지(관리자로 로그인 시 : 추천하기, 삭제하기, 수정하기 버튼 활성화)
<img src="src/main/resources/static/image/screenshot/showPackage.png" alt="상세보기"/>

</details>

<details>
<summary>패키지 주문페이지</summary>

- 줄발일과 돌아오는 날을 정하고 인원수에 따라 금액이 자동으로 설정 (최소 금액인 1원으로 설정: 5명 -> 5원)
<img src="src/main/resources/static/image/screenshot/ordersForm.png" alt="패키지 주문페이지"/>

</details>

<details>
<summary>패키지 주문 확인하기</summary>

- 혹시 모를 실수를 대비하여 다시 한번 확인 가능
<img src="src/main/resources/static/image/screenshot/paycheck.png" alt="주문확인"/>

</details>

<details>
<summary>카카오 페이로 주문</summary>

- 아임포트 API를 사용하여 카카오 결제가 가능
<img src="src/main/resources/static/image/screenshot/pay.png" alt="카카오 페이로 주문"/>

</details>

<details>
<summary>구매내역확인</summary>

- 내가 결제한 내역을 볼 수 있으며 결제취소를 하면 상태가 canceled로 바뀌게 됩니다.
<img src="src/main/resources/static/image/screenshot/showpay.png" alt="구매내역 확인"/>

</details>

<details>
<summary>리뷰 페이지</summary>

- 마이페이지에서 내가 구매했던 나라의 패키지만 리뷰가 가능하며 좋아요, 댓글, 대댓글, 조회수 기능 구현(리뷰 작성이 완료되면 메인페이지에 리뷰 자동 등록)
<img src="src/main/resources/static/image/screenshot/review.png" alt="리뷰페이지"/>

</details>

<details>
<summary>마이페이지</summary>

- 마이페이지에서 내가 구매했던 패키지와 문의, 리뷰, 회원정보 수정, 탈퇴 기능을 사용할 수 있습니다. 
<img src="src/main/resources/static/image/screenshot/mypage.png" alt="마이페이지"/>

</details>

<details>
<summary>회원정보 수정과 탈퇴</summary>

- 모달을 사용하여 간편하게 회원정보 수정을 할 수 있으며 회원 탈퇴 시 DB에 저장된 비밀번호와 일치하면 회원탈퇴가 가능합니다. 
<img src="src/main/resources/static/image/screenshot/reimpo.png" alt="정보수정"/>
<img src="src/main/resources/static/image/screenshot/outjoin.png" alt="탈퇴"/>

</details>
