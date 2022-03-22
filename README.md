# MEME DICTIONARY

## 팀 소개
##### 오히려 좋아
##### 팀원 : 이민선(팀장), 김서윤, 방진기, 신시원, 장승훈

## 프로젝트 기간
2022년 01월 10일 ~ 2022년 02월 14일

## 목차  
1. [개요](#1-개요)
2. [설계의 주안점](#2-설계의-주안점)
3. [사용기술 및 개발환경](#3-사용기술-및-개발환경)
4. [프로젝트 기능 구현](#4-프로젝트-기능-구현)
5. [주요기능](#5-주요기능)
6. [Document](#6-document)
   - [Use Case Diagram](#use-case-diagram)
   - [Wireframe](#wireframe)
   - [Flowchart](#flowchart)
   - [ERD](#erd)
   - [Class Diagram](#class-diagram)
   - [Sequence Diagram](#sequence-diagram)


<br/><br/>
## 1. 개요
MEME DICTIONARY는 빠르게 변화하는 유행어들을 쉽게 찾아볼 수 있도록 한 유행어 사전으로,
최근 핫했던 '어쩔티비' 를 모르는 사람이 많아 화제가 된 것과 같이
실제로 '무야호'를 몰라 '문찐'이 되어본 경험에서 나온 아이디어이다.


> **MEME DICTIONARY는 직접 유행어를 만들거나, 이미 유행하고 있는 말을 등록할 수 있고,
빠르게 생겨나고 사라지는 유행어의 흐름도 확인해볼 수 있다.**


단순히 유행어 검색 뿐 아니라 유행어 랭킹 및 퀴즈 게임도 함께 즐길 수 있는
다기능 유행어 사전으로 만들고자 하였다.


<br/><br/>
## 2. 설계의 주안점
1. 유행어의 뜻을 쉽게 찾아볼 수 있는 검색창 구현
2. 자유롭게 이야기를 나누고, 유행어도 직접 추진해볼 수 있는 자유게시판 형태의 커뮤니티 구현
3. 유행어를 재미있게 접근할 수 있는 유행어 30초 퀴즈 페이지 구성
4. 타임라인 페이지를 통해 유행어의 역사 확인 가능 (시대별 인기 유행어 리스트)


<br/><br/>
## 3. 사용기술 및 개발환경


<img src="https://user-images.githubusercontent.com/100409006/158173146-fffaf59d-92a3-4bcd-b8bc-f48fb61dda60.png" alt="개발환경" width="80%">

<table>
   <tr>
    <th colspan="3">사용기술 및 개발환경</th>
  </tr>
  
  <tr>
    <td rowspan="2">개발 언어</td>
    <td>FRONT</td>
    <td>html5, js, css3</td>
  </tr>
  <tr>
    <td>BACK</td>
    <td> java, Spring/jsp</td>
  </tr>
  <tr>
    <td>IDE</td>
    <td colspan="2">eclipse, sqldeveloper</td>
  </tr>
  <tr>
    <td>SERVER</td>
    <td colspan="2">Apache Tomcat 8.5</td>
  </tr>
  <tr>
    <td>DB</td>
    <td colspan="2">oracle 11g </td>
  </tr>
  <tr>
    <td>협업</td>
    <td colspan="2">GitHub</td>
  </tr>
</table>



<br/><br/>
## 4. 프로젝트 기능 구현

- 김서윤
  - **유행어 사전**
     - 유행어 사전 검색
     - 유행어 사전 등재 요청 (첨부파일)
     - 유행어 사전 수정/삭제 요청
     
  - **유행어 타임라인**
    - 시대에 따른 유행어 조회순 조회

- 방진기
  - **회원 관리**
    - 로그인
      - 화면 구현
      - 로그인 기능
      - 아이디 찾기
      - 비밀번호 재설정
    - 마이페이지
      - 내가 쓴 글, 댓글, 퀴즈 관리
      - 회원 정보 수정
      - 회원 탈퇴
      - 로그아웃
    - 관리자페이지
      - 회원 관리
      - 유행어 사전 관리
      - 게시판 관리
      - 퀴즈 관리

- 신시원
  - **회원 관리**
    - 로그인
      - 화면 구현
    - 마이페이지
      - 화면 구현
    - 관리자페이지
      - 화면 구현
  - **유행어 추진/자유게시판**
    - 화면 구현

- 이민선
    - **메인 페이지**
      - 화면 구현
    - **유행어 추진/자유게시판**
      - 게시글
        - 게시글 목록 및 상세페이지 조회, 등록(첨부파일), 수정, 삭제
        - 게시글 신고 / 추천
        - 관리자 : 게시글 숨기기 / 보이기
        - 비회원은 조회만 허용하며 관리자는 수정 비허용
      - 댓글
        - 댓글 목록 조회, 등록, 수정, 삭제
        - 로그인 시에만 작성 가능

    - **유행어 랭킹**
        - 유행어 사전 : 조회 수에 따른 랭킹
        - 유행어 추진 / 자유 게시판 : 추천 수에 따른 랭킹
        - 유행어 퀴즈 : 회원별 맞춘 갯수에 따른 랭킹
        - 페이지 별로 메인 랭킹을 달리 함

- 장승훈
  - **유행어 퀴즈**
    - 30초 랜덤 퀴즈 : 랜덤으로 퀴즈 가져오기(이미지, 객관식 문항)
    - 퀴즈 등록 : 퀴즈 유형에 따라 객관식 문항 등록, 다중 이미지 등록
    - 퀴즈 수정 : 퀴즈 유형에 따라 객관식 문항 수정, 다중 이미지 수정
    - 퀴즈 삭제 : 퀴즈 유형에 따라 객관식 문항 삭제, 다중 이미지 삭제
    - 퀴즈 결과 : 퀴즈와 사용자의 입력값을 가져와 출력 해주고 회원의 최고 기록을 저장
    - 퀴즈 신고 : 잘못된 문제를 신고할 수 있다.
<br/><br/>


## 5. 주요기능
#### 1. 메인 페이지
##### 좌측 카테고리 버튼을 통해 다른 페이지로 이동 가능
<img src="https://user-images.githubusercontent.com/100409006/159236398-ac1882fb-3e19-4f7e-bf2e-26a84af30d29.PNG" alt="메인페이지 1" width="70%">
<img src="https://user-images.githubusercontent.com/100409006/159236403-e5543a95-51c6-4c5b-8bea-bb912e9d32e9.PNG" alt="메인페이지 2 토글 목록" width="70%">

<br/><br/>

 
#### 2. 유행어 사전
###### 메인페이지에서 유행어 이름을 검색하면 상세 페이지 출력
- ###### 비회원
<img src="https://user-images.githubusercontent.com/100409006/159244608-8d3ce523-8590-44c2-8a91-e07fc8d53574.PNG" alt="유행어 사전 상세" width="70%">

- ###### 회원 (로그인 상태)
<img src="https://user-images.githubusercontent.com/100409006/159244609-d6537829-5c4c-4a3d-834d-4589ebe72083.PNG" alt="유행어 사전 (검색 시 나오는 상세페이지)_ 로그인상태" width="70%">

###### '의견 내기'를 통해 수정/삭제 요청
<img src="https://user-images.githubusercontent.com/100409006/159244612-45732894-44cc-473a-bb76-60bbde3dd3b8.PNG" alt="유행어 사전 의견 내기" width="70%">

###### 원하는 유행어가 등록되어 있지 않다면 '직접 등록하기' 버튼을 통해 등재 요청
<img src="https://user-images.githubusercontent.com/100409006/159244613-74b3c7d0-5999-473c-bc03-9eeaefc48c0a.PNG" alt="유행어 사전 새로 등록하기" width="70%">

<br/><br/>


#### 3. 유행어 추진/자유게시판

###### 게시글 목록페이지에서 제목을 누르면 상세페이지로 이동, 글쓰기 버튼을 누르면 게시글 작성 가능
<img src="https://user-images.githubusercontent.com/100409006/159236775-6d2a62dd-e765-487c-ba3d-ad1cb227f2cb.PNG" alt="게시글 목록" width="70%">


###### 게시글 등록
<img src="https://user-images.githubusercontent.com/100409006/159236777-41a752f8-7701-47f7-800a-e4bfdeb4068b.PNG" alt="게시글 등록" width="70%">


###### 게시글 상세 페이지, 게시글 수정/삭제 가능, 댓글 등록/수정/삭제 가능
<img src="https://user-images.githubusercontent.com/100409006/159236778-5749f67f-c1fd-4274-a04e-b386bf0bf6a0.PNG" alt="게시글 상세" width="70%">
<img src="https://user-images.githubusercontent.com/100409006/159236780-6f535821-db79-4528-87ce-c165eaa01bff.PNG" alt="게시글 수정" width="70%">
<img src="https://user-images.githubusercontent.com/100409006/159236781-cfa8586d-fadc-4a6b-adcb-5cf2c5531fa6.PNG" alt="게시글 수정 성공" width="70%">

###### 다른 사용자의 마음의 드는 게시글 추천 및 문제 게시글 신고
<img src="https://user-images.githubusercontent.com/100409006/159236787-bc4f5f85-7b6e-4e8e-97fb-7201aa529f36.PNG" alt="게시글 추천 가능" width="70%">

<br/><br/>

 
#### 4. 유행어 퀴즈
###### 카테고리의 '퀴즈 풀기' 탭을 통해 30초 랜덤 퀴즈 풀이
###### 풀이 중 정답과 오답이 표시되며 우측 상단에 30초 카운트다운
<img src="https://user-images.githubusercontent.com/100409006/159247283-a7fce05a-9d01-4404-97c6-3935c52f5447.PNG" alt="퀴즈 풀기" width="70%">

###### 30초가 지나면 결과창에서 내 풀이와 정답을 확인해볼 수 있으며, 오류가 있는 퀴즈는 신고 가능
<img src="https://user-images.githubusercontent.com/100409006/159245808-202a3615-0c4f-45ee-beff-397607e127ce.PNG" alt="퀴즈 결과" width="70%">
<img src="https://user-images.githubusercontent.com/100409006/159245810-313b25cf-35e3-4119-8ea9-951eaf25da55.PNG" alt="퀴즈 신고" width="70%">

###### '퀴즈 만들기' 탭을 통해 직접 퀴즈 등록 가능
<img src="https://user-images.githubusercontent.com/100409006/159245810-313b25cf-35e3-4119-8ea9-951eaf25da55.PNG" alt="유행어 퀴즈 등록" width="70%">



<br/><br/>


#### 5. 유행어 랭킹
###### 각 페이지에 맞는 랭킹을 메인으로 출력, 다른 랭킹 탭 클릭 시 해당 랭킹 확인 가능
<img src="https://user-images.githubusercontent.com/100409006/159244609-d6537829-5c4c-4a3d-834d-4589ebe72083.PNG" alt="유행어 사전 (검색 시 나오는 상세페이지)_ 로그인상태" width="70%">
<img src="https://user-images.githubusercontent.com/100409006/159236775-6d2a62dd-e765-487c-ba3d-ad1cb227f2cb.PNG" alt="게시글 목록" width="70%">
<img src="https://user-images.githubusercontent.com/100409006/159247283-a7fce05a-9d01-4404-97c6-3935c52f5447.PNG" alt="퀴즈 풀기" width="70%">
<br/><br/>


#### 6. 유행어 타임라인
###### 시기별로 가장 유행했던 유행어를 한 눈에 볼 수 있음
<img src="https://user-images.githubusercontent.com/100409006/159238560-ad564521-1882-4f03-a3ce-05439358cd7f.png" alt="타임라인" width="70%">

<br/><br/>


#### 7. 로그인 기능

![7](https://user-images.githubusercontent.com/100409006/157795362-d80aacc5-5761-4586-9601-d23561411811.PNG)
![8](https://user-images.githubusercontent.com/100409006/157795364-5920a6c3-1b2b-4886-9758-49812dd4b6b7.PNG)
![9](https://user-images.githubusercontent.com/100409006/157795365-2b8875fc-0698-49ca-9051-e79e9c85f908.PNG)
![10](https://user-images.githubusercontent.com/100409006/157795367-78d90c6f-2563-426b-818e-8f4373a13cb3.PNG)
![11](https://user-images.githubusercontent.com/100409006/157795356-1a55b211-0e3f-4b92-a6df-c59a5caca335.PNG)
<br/><br/>


#### 8. 마이페이지

![12](https://user-images.githubusercontent.com/100409006/157795772-07409bb7-f4a6-4bfc-84d2-d6e3e48c5d73.PNG)
![13](https://user-images.githubusercontent.com/100409006/157795773-74786415-afb5-43bc-b623-9ab2f834696d.PNG)
![14](https://user-images.githubusercontent.com/100409006/157795765-26382fed-9a4a-4215-a233-97280a2473d6.PNG)
![15](https://user-images.githubusercontent.com/100409006/157795768-a083759b-fb14-4d04-9829-6fb59118ee0f.PNG)
![16](https://user-images.githubusercontent.com/100409006/157795771-7fdacebf-48f2-4c75-9924-128ebd1cfd4c.PNG)

<br/><br/>

#### 9. 관리자페이지


![17](https://user-images.githubusercontent.com/100409006/157795921-e43fb6f3-83d2-464b-85a0-09f80c0ef345.PNG)
![18](https://user-images.githubusercontent.com/100409006/157795922-44f7e575-ed58-48c5-af17-7df2b327c1ce.PNG)
![19](https://user-images.githubusercontent.com/100409006/157795923-6c0e4f61-ccbe-46bd-8e8a-6a3b0a9a5821.PNG)
![20](https://user-images.githubusercontent.com/100409006/157795924-59ed83d8-b617-4a88-9a70-6728f07cdcc5.PNG)
![21](https://user-images.githubusercontent.com/100409006/157795925-c8567d63-6293-46ec-a2ef-94c45b90175f.PNG)
![22](https://user-images.githubusercontent.com/100409006/157795926-00b49ae0-08ed-4aae-820a-09719e90d2ae.PNG)
![23](https://user-images.githubusercontent.com/100409006/157795927-d9306ac3-65d8-4869-a962-866a1035487a.PNG)
![24](https://user-images.githubusercontent.com/100409006/157795928-662fcae6-fb56-4e53-9f41-f3580c9f6c87.PNG)
![25](https://user-images.githubusercontent.com/100409006/157795931-ac43f23a-88b3-40df-8862-0b95cc5406ea.PNG)
![26](https://user-images.githubusercontent.com/100409006/157795918-89c0d96c-20ad-4740-b732-e7016a5db461.PNG)

<br/><br/><br/>


## 6. Document
### Use Case Diagram
<img src="https://user-images.githubusercontent.com/100409006/158661233-24bf03e3-1299-43b3-9392-7e043bc2a829.PNG" alt="회원관리" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158661236-6335097b-b107-4549-9732-d761a095b17f.PNG" alt="유행어사전" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158661239-478f054e-e649-4249-ba17-5aaaff0ba6b2.PNG" alt="게시판" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158661221-c65dfd0a-1597-42c2-8e68-1cf3c75482a2.PNG" alt="퀴즈" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158661228-45d8e97f-aa02-4f05-8931-448f6068ef41.PNG" alt="타임라인" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158661230-f852628d-79ce-49bc-83c5-9344be7e4634.PNG" alt="랭킹" width="50%">


<br><br>

### Wireframe
[MEME DICTIONARY - 와이어프레임](https://github.com/mingulee-devel/flutter_kdubus-app/files/8301714/-.-.pdf)

##### 회원
<img src="https://user-images.githubusercontent.com/100409006/158964978-ee145058-5a10-4abb-ba71-df7f6ab6cdc9.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158964979-2bd49202-bff6-435f-b7e5-bc81c8498054.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158964980-c9368fb4-58f4-4d76-be85-128ec3ad31b1.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158964973-391d2505-1950-45a0-9c5e-303d9aac331f.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158964977-2af9203f-bd88-47a9-ad1a-d083ce1d19ca.PNG" alt="이미지" width="50%">

<img src="https://user-images.githubusercontent.com/100409006/158965275-f4067a30-4dc8-4334-bfb6-dd5e11e56184.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158965279-b15a1966-956f-4607-991e-8a03a2c8057f.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158965281-9ba03422-5ade-4e06-9c3d-3b5837352506.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158965266-31ca9b79-e652-4e31-a66e-09aeb00d44fe.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158965270-8da91ede-e1ff-4886-9937-933d8729f151.PNG" alt="이미지" width="50%">

<img src="https://user-images.githubusercontent.com/100409006/158965577-3507a6ee-b9e5-4ef5-8f38-67ccd2e51e80.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158965580-d255476b-4a18-4275-b6b9-2b8ec8f8343f.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158965582-51676423-b7ad-4f9f-be54-716b0850dfd9.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158965584-98ceb542-78c8-44b6-9c74-006ba504f7e8.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158965585-3a13a00c-de39-4708-af8c-84ad99a61f8f.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158965587-3b97370d-5288-445e-9132-f3e298ab4672.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158965570-4769736f-4b5f-47b3-9c4b-bfa60d2f4d99.PNG" alt="이미지" width="50%">

##### 사전 & 타임라인
<img src="https://user-images.githubusercontent.com/100409006/158965863-f5e999e7-4d26-4819-a018-6be13124db0b.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158965855-8918a849-1cd4-41a1-88b8-66d89a233b80.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158965860-85e0149f-74ca-4fdb-867f-c63bc12c95de.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158965861-bd52fb8f-ad2d-42bd-a182-7eee083fcd1e.PNG" alt="이미지" width="50%">

##### 게시판
<img src="https://user-images.githubusercontent.com/100409006/158966013-6a22f256-824d-42c4-b106-4a21f94ec750.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158966016-eeb6ad1b-5e9b-4872-a838-41a584a5a006.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158966019-09cd4a02-dd94-40a8-904b-c833768910b8.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158966022-76d83026-aaa4-4f59-8bd2-1025272abbbe.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158966023-1025def3-d275-4940-9b9e-d387e43efa1e.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158966024-f409ecf6-ec70-4ed4-819e-9846975602a5.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158966011-6ed336ec-8ea2-4af8-8455-c22545ef4ec6.PNG" alt="이미지" width="50%">

##### 퀴즈
<img src="https://user-images.githubusercontent.com/100409006/158966238-72f65a49-55c4-4370-a619-ff46c11d53e1.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158966242-e225f260-fb6b-4718-a19c-17655d548402.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158966245-834361af-4174-4743-a0f5-bf89d1069c32.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158966247-d1fbb931-972a-4805-8e9f-fead2d56f66b.PNG" alt="이미지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158966249-d933e9cf-75b7-4937-94a9-7fd34293e4f5.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158966232-c7d201a7-db5a-4b2e-9515-dc9c459df25e.PNG" alt="이미지" width="50%">


<br><br>

### Flowchart

##### 사용자
<img src="https://user-images.githubusercontent.com/100409006/158662408-5f9dad17-fb55-4fba-9ad1-03b364d2aad8.png" alt="사용자" width="70%">


##### 관리자
<img src="https://user-images.githubusercontent.com/100409006/158662402-ce8144e8-a2cb-425a-a4d5-b68da28cbf27.png" alt="관리자" width="70%">

<!--
<img src="https://user-images.githubusercontent.com/100409006/158661773-26b53041-6d9e-4ad1-89b2-f63f76e37519.PNG" alt="사용자 플로우차트" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158661778-d35af87c-5180-4db1-8b3c-179196d6f250.PNG" alt="로그인 유행어사전" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158661780-0ee58ecf-e085-40b8-a8e2-a69610dda4de.PNG" alt="게시판 랭킹" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158661760-d46b4480-060d-4b5e-af35-d587970c1667.PNG" alt="퀴즈 타임라인" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158661764-ab5b5b12-dd4d-4e17-ba48-82e4975acc8e.PNG" alt="관리자" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158661768-7f724da8-98a6-44b0-9c87-6b4b29359aff.PNG" alt="회원 사전" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158661770-91bd41d5-8226-4a4d-92b1-fb227d3710c0.PNG" alt="게시판 퀴즈" width="50%">
-->

<br><br>
### ERD
##### 회원 (논리, 물리)
<img src="https://user-images.githubusercontent.com/100409006/158663932-ace87749-8e02-4de3-b3a8-bff43170e7dc.PNG" alt="회원 논리" width="300px"> <img src="https://user-images.githubusercontent.com/100409006/158663933-98da7e7a-3e21-47c8-bec2-aee20f809ecb.PNG" alt="회원 물리" width="400px">
##### 유행어 사전 (논리, 물리)
<img src="https://user-images.githubusercontent.com/100409006/158663923-540c249e-995d-465a-a654-a97946c6f924.PNG" alt="사전 논리" width="500px"> <img src="https://user-images.githubusercontent.com/100409006/158663926-8748df9f-9159-479a-bd40-67679c9d33b7.PNG" alt="사전 물리" width="500px">
##### 유행어 추진 / 자유게시판 (논리, 물리)
<img src="https://user-images.githubusercontent.com/100409006/158663912-a7207a2c-f574-4747-bce7-78e8e359b18d.PNG" alt="게시판 논리" width="500px"> <img src="https://user-images.githubusercontent.com/100409006/158663921-8f4ed0c8-848c-4a0f-9eb6-797a118348e7.PNG" alt="게시판 물리" width="500px">
##### 유행어 퀴즈 (논리, 물리)
<img src="https://user-images.githubusercontent.com/100409006/158663927-3e78ab51-9d7a-447f-958a-23fdd5179f1a.PNG" alt="퀴즈 논리" width="500px"> <img src="https://user-images.githubusercontent.com/100409006/158663928-d53e3ec3-33f3-4aa6-991e-d47166a8ad85.PNG" alt="퀴즈 물리" width="500px">


<br/><br/>


##### 테이블 기술서
<img src="https://user-images.githubusercontent.com/100409006/158596658-c7f483d7-df2f-4d4e-a4ed-c48a9e5a95e8.PNG" alt="member_tbl" width="50%">

<img src="https://user-images.githubusercontent.com/100409006/158596639-17d73031-103d-4a21-8b35-240d4013cdf9.PNG" alt="meme_tbl" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158596643-4b17c744-b4cf-4e8f-80d6-35e6173e375a.PNG" alt="meme_file, meme_request" width="50%">

<img src="https://user-images.githubusercontent.com/100409006/158596646-a2e639b7-f9fe-4c1d-a10a-14faea75e249.PNG" alt="board_tbl" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158596648-a36547c2-3c37-402e-83fd-1d6a279073c1.PNG" alt="board_file,recommend_tbl" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158596649-c8df9221-9038-4fa7-bf5e-0994eb77dd1c.PNG" alt="comment_tbl" width="50%">

<img src="https://user-images.githubusercontent.com/100409006/158596652-51397041-1d44-4b31-b703-85764aaf0e55.PNG" alt="quiz_tbl" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158596653-673040e5-bbd0-4d78-897c-02402c6fd323.PNG" alt="quiz_file, quiz_ch" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158596654-86d7c5c1-82bb-4e84-b812-518ca6b0c2d2.PNG" alt="quiz_best, report_tbl" width="50%">

<br/><br/>

### Class Diagram
<img src="https://user-images.githubusercontent.com/100409006/158534222-528fdb32-1a03-40f1-b39e-35cf61c5dd52.PNG" alt="회원관리" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158534225-cb7f97f1-c642-4a7e-8d69-83fc8e6c5c15.PNG" alt="유행어사전" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158534229-162b5c91-6a94-4d7c-8d59-5e0c13e07e37.PNG" alt="유행어 추진/자유게시판" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158534231-f3b441ea-8fe9-4637-8f8e-acaff1c4a09e.PNG" alt="유행어퀴즈" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158534232-cb5037d0-8605-4800-8e00-75a8aa8a666a.PNG" alt="타임라인" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158534235-45efffe5-3154-4f06-8aa5-1b6422adfb8e.PNG" alt="랭킹" width="50%">

<br/><br/>

### Sequence Diagram
##### 회원 관리
<img src="https://user-images.githubusercontent.com/100409006/158545112-22b06b38-9854-4fe7-8141-1b4008b6504b.PNG" alt="회원관리 : 회원가입" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158545114-8d0aaede-353f-4d9e-9978-119044063c02.PNG" alt="회원관리 : 로그인" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158545116-d7261c14-af66-4285-b2ac-655857de510c.PNG" alt="회원관리 : 아이디 비번 찾기" width="50%">


<img src="https://user-images.githubusercontent.com/100409006/158545118-d96d362f-0bcb-4774-b34b-12dd5dfc4557.PNG" alt="마이페이지 : 내가 쓴 글" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158545121-ae3b9394-e3d4-47cd-b13f-dcc463b0ad1f.PNG" alt="마이페이지 : 내가 쓴 댓글" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158545125-1bfc86eb-f2aa-4b1d-b7a1-33c4545ccec8.PNG" alt="마이페이지 : 내가 만든 퀴즈" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158545127-9f69f101-3d13-4060-834d-ba280a98e78b.PNG" alt="마이페이지 : 회원 정보 수정" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158545129-5a3c1247-6e86-45a7-b994-a73574c60ec3.PNG" alt="마이페이지 : 회원 탈퇴" width="50%">


<img src="https://user-images.githubusercontent.com/100409006/158545130-4c121ad9-6180-42a6-9740-20d3f29a64ce.PNG" alt="관리자 : 회원관리" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158545099-2d2c4609-4ad5-48ab-80ce-4f951b51c729.PNG" alt="관리자 : 사전관리" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158545108-4adc2455-9c84-4ea2-8b77-0e7904a4fb08.PNG" alt="관리자 : 게시글관리" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158545110-a77ebc1e-699f-4470-beb7-0db1a7db2d6e.PNG" alt="관리자 : 퀴즈 관리" width="50%">

<br/><br/>

##### 유행어 사전
<img src="https://user-images.githubusercontent.com/100409006/158546871-4ae58c1a-ce6a-4ae0-83ce-846fb51b0a9a.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158546864-1272e921-51de-42cd-b61b-271499b4446f.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158546869-8bcefb84-deb1-45dd-ae3a-fd091b05d59d.PNG" alt="이미지" width="50%">

<br/><br/>

##### 유행어 추진/자유 게시판
<img src="https://user-images.githubusercontent.com/100409006/158549565-2554e19d-9d98-44cf-ab1f-47df284f1b62.PNG" alt="게시글리스트" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549571-b02e0760-646f-4e37-af8f-ac49e640b6c5.PNG" alt="상세페이지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158549566-44efe89e-6573-4c99-95f6-974590b1770f.PNG" alt="게시글 등록" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549573-d4b8f219-47fa-4016-adec-5dd3a237118a.PNG" alt="게시글 수정" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/159484562-f6cdc926-b01a-456e-aa85-9903de7b09ff.png" alt="게시글 삭제" width="50%">


<img src="https://user-images.githubusercontent.com/100409006/158549577-89d951c3-d4ae-4a9e-9c6f-bf0e2c8dcbd3.PNG" alt=" 게시글 추천" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549536-b6a38e9e-0b9c-4461-a95d-ce27abe102a1.PNG" alt="게시글 신고" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158549542-906cac81-f7c3-458a-acef-3d7aa16f3dee.PNG" alt="게시글 숨기기" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549546-fbca65d8-839b-4738-badd-ed674bafef45.PNG" alt="게시글 보이기" width="50%">


<img src="https://user-images.githubusercontent.com/100409006/158549552-55fa39cd-2ec8-4f58-a7bb-43ea221e6c1c.PNG" alt="댓글 리스트" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549556-9aaa5418-fabc-465b-99e1-149498f15bd0.PNG" alt="댓글 등록" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158549561-c95db1a7-d049-4143-ad94-df9ca4bc4ce1.PNG" alt="댓글 수정" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549563-5398d9df-27d8-48e9-a168-fe451a7ff0b0.PNG" alt="댓글 삭제" width="50%">

<br/><br/>

##### 유행어 퀴즈
<img src="https://user-images.githubusercontent.com/100409006/158550226-33ad7fa1-76f0-4c04-8f70-3f39e2912eb8.PNG" alt="퀴즈 등록" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158550229-9e0499b0-069b-4c66-b09d-4745e761814c.PNG" alt="퀴즈 수정" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158550236-80850c3b-98ab-43b9-bb34-ba959ee154fc.PNG" alt="퀴즈 삭제" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158550240-1e3a803a-3027-4dbe-8d5d-21ae4ae24210.PNG" alt="랜덤 퀴즈" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158550245-0d358900-c3b2-4b7b-80be-54c494043fa1.PNG" alt="퀴즈결과" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158550222-12afdf05-0f4d-474a-a42f-090fd868400c.PNG" alt="퀴즈신고" width="50%">

<br/><br/>

##### 유행어 타임라인
<img src="https://user-images.githubusercontent.com/100409006/158550596-1af24c79-19ee-4d76-a20d-5d03f66e20b5.PNG" alt="타임라인" width="50%">

<br/><br/>

##### 랭킹
<img src="https://user-images.githubusercontent.com/100409006/158550612-e2658bcb-ac6a-49f9-a8fa-9fcb2272c9c6.PNG" alt="랭킹" width="50%">
