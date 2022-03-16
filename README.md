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
   - [ERD](#erd)
   - [Class Diagram](#class-diagram)
   - [Sequence Diagram](#sequence-diagram)


<br/><br/>
## 1. 개요
MEME DICTIONARY는 빠르게 변화하는 유행어들을 쉽게 찾아볼 수 있도록 한 유행어 사전으로,
최근 핫했던 '어쩔티비' 를 모르는 사람이 많아 화제가 된 것과 같이
실제로 '무야호'를 몰라 '문찐'이 되어본 경험에서 나온 아이디어이다.


**MEME DICTIONARY는 직접 유행어를 만들거나, 이미 유행하고 있는 말을 등록할 수 있고,
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
      - 화면 구현
      - 내가 쓴 글
         - 내가 쓴 글 조회
         - 내가 쓴 글 수정
         - 내가 쓴 글 삭제
      - 내가 만든 퀴즈
         - 내가 만든 퀴즈 조회
         - 내가 만든 퀴즈 수정
         - 내가 만든 퀴즈 삭제
      - 내가 쓴 댓글
         - 내가 쓴 댓글 조회
      - 회원 정보 수정
      - 회원 탈퇴
      - 로그아웃
    - 관리자페이지
      - 화면 구현
      - 회원 관리 페이지
         - 회원 목록 조회
      - 유행어 사전 관리 페이지
         - 전체 유행어 목록 조회
         - 유행어 요청 목록 조회
      - 게시판 관리 페이지
         - 전체 글 목록 조회
         - 신고된 글 목록 조회
         - 글 삭제
      - 퀴즈 관리 페이지
         - 전체 퀴즈 목록 조회
         - 신고된 퀴즈 목록 조회
         - 퀴즈 삭제

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
        - 게시글 목록 및 상세페이지 조회, 등록, 수정, 삭제
        - 게시글 신고 / 추천
        - 게시글 숨기기 / 보이기
        - 비회원은 조회만 허용, 회원은 게시글 숨기기/보이기 외 모든 기능 허용
        - 게시글 숨기기 / 보이기의 경우 관리자만 권한 허용
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

![메인 페이지](https://user-images.githubusercontent.com/100409006/157794282-c823846d-2bba-41af-8710-1d0b40dba752.PNG)
![2](https://user-images.githubusercontent.com/100409006/157794441-bcda0610-f5f6-4c67-8e20-e5cdd0a821fd.PNG)

<br/><br/>

 
#### 2. 유행어 사전


![3](https://user-images.githubusercontent.com/100409006/157794445-ba71c1a0-8a49-47da-93fe-03a7944af27b.PNG)
![4](https://user-images.githubusercontent.com/100409006/157794447-49eea3c9-c064-4216-a1d1-24ac4eca5cd2.PNG)
![5](https://user-images.githubusercontent.com/100409006/157794448-aea702d4-60dd-4f89-aed3-54efb650ee6d.PNG)
![6](https://user-images.githubusercontent.com/100409006/157794444-1d37c96e-7499-4305-ab1d-469e89142608.PNG)

<br/><br/>

 
#### 3. 유행어 추진/자유게시판


![27](https://user-images.githubusercontent.com/100409006/157796185-d36443d5-e2ca-438e-8666-4bb96f64d1f7.PNG)
![28](https://user-images.githubusercontent.com/100409006/157796188-41315f8c-6cb4-4786-9069-a55adfd5fa7d.PNG)
![29](https://user-images.githubusercontent.com/100409006/157796190-71319b48-1f47-4e3d-adc9-023b67401ccc.PNG)
![30](https://user-images.githubusercontent.com/100409006/157796191-4b9ada95-42cf-47da-9c36-6b117a68defb.PNG)
![31](https://user-images.githubusercontent.com/100409006/157796193-3f4f2966-2bef-4b82-b7cb-c19fabf64cf8.PNG)
![32](https://user-images.githubusercontent.com/100409006/157796194-728cd62f-7db3-4d5e-8c90-a8d8fb37caf2.PNG)
![33](https://user-images.githubusercontent.com/100409006/157796177-f179c393-5c58-4391-ab6e-2507e47abfef.PNG)
<br/><br/>

 
#### 4. 유행어 퀴즈


![34](https://user-images.githubusercontent.com/100409006/157796628-68295f15-adbc-4c90-be3d-0863635f7f4a.PNG)
![35](https://user-images.githubusercontent.com/100409006/157796630-72641c0b-d61e-4e95-b724-5e0983279327.PNG)
![36](https://user-images.githubusercontent.com/100409006/157796631-5f149392-4d10-4912-96f8-3e01ca804271.PNG)
![37](https://user-images.githubusercontent.com/100409006/157796623-4f8c7e22-2c92-4f38-8a4e-3e75af17e4cb.PNG)
<br/><br/>


#### 5. 유행어 랭킹


![39](https://user-images.githubusercontent.com/100409006/157796644-9f5dd9d3-9e4d-4453-8fa9-718e6205c0c7.PNG)
![40](https://user-images.githubusercontent.com/100409006/157796646-da0789d0-4f17-4296-8a3b-31f7be961bb6.PNG)
![41](https://user-images.githubusercontent.com/100409006/157796643-010d890f-1fe1-44f1-b065-ff399baf3513.PNG)
<br/><br/>


#### 6. 유행어 타임라인


![38](https://user-images.githubusercontent.com/100409006/157796636-333ec66a-1b2b-4845-b2fb-c86dbb01e83c.PNG)
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
### ERD
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
#### 회원 관리
<img src="https://user-images.githubusercontent.com/100409006/158545112-22b06b38-9854-4fe7-8141-1b4008b6504b.PNG" alt="회원관리 : 회원가입" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158545114-8d0aaede-353f-4d9e-9978-119044063c02.PNG" alt="회원관리 : 로그인" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158545116-d7261c14-af66-4285-b2ac-655857de510c.PNG" alt="회원관리 : 아이디 비번 찾기" width="50%">


<img src="https://user-images.githubusercontent.com/100409006/158545118-d96d362f-0bcb-4774-b34b-12dd5dfc4557.PNG" alt="마이페이지 : 내가 쓴 글" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158545121-ae3b9394-e3d4-47cd-b13f-dcc463b0ad1f.PNG" alt="마이페이지 : 내가 쓴 댓글" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158545125-1bfc86eb-f2aa-4b1d-b7a1-33c4545ccec8.PNG" alt="마이페이지 : 내가 만든 퀴즈" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158545127-9f69f101-3d13-4060-834d-ba280a98e78b.PNG" alt="마이페이지 : 회원 정보 수정" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158545129-5a3c1247-6e86-45a7-b994-a73574c60ec3.PNG" alt="마이페이지 : 회원 탈퇴" width="50%">


<img src="https://user-images.githubusercontent.com/100409006/158545130-4c121ad9-6180-42a6-9740-20d3f29a64ce.PNG" alt="관리자 : 회원관리" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158545099-2d2c4609-4ad5-48ab-80ce-4f951b51c729.PNG" alt="관리자 : 사전관리" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158545108-4adc2455-9c84-4ea2-8b77-0e7904a4fb08.PNG" alt="관리자 : 게시글관리" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158545110-a77ebc1e-699f-4470-beb7-0db1a7db2d6e.PNG" alt="관리자 : 퀴즈 관리" width="50%">

<br/><br/>

#### 유행어 사전
<img src="https://user-images.githubusercontent.com/100409006/158546871-4ae58c1a-ce6a-4ae0-83ce-846fb51b0a9a.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158546864-1272e921-51de-42cd-b61b-271499b4446f.PNG" alt="이미지" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158546869-8bcefb84-deb1-45dd-ae3a-fd091b05d59d.PNG" alt="이미지" width="50%">

<br/><br/>

#### 유행어 추진/자유 게시판
<img src="https://user-images.githubusercontent.com/100409006/158549565-2554e19d-9d98-44cf-ab1f-47df284f1b62.PNG" alt="게시글리스트" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549571-b02e0760-646f-4e37-af8f-ac49e640b6c5.PNG" alt="상세페이지" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158549566-44efe89e-6573-4c99-95f6-974590b1770f.PNG" alt="게시글 등록" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549573-d4b8f219-47fa-4016-adec-5dd3a237118a.PNG" alt="게시글 수정" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158549575-36445563-cdc4-43c1-b126-29295a125f7c.PNG" alt="게시글 삭제" width="50%">


<img src="https://user-images.githubusercontent.com/100409006/158549577-89d951c3-d4ae-4a9e-9c6f-bf0e2c8dcbd3.PNG" alt=" 게시글 추천" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549536-b6a38e9e-0b9c-4461-a95d-ce27abe102a1.PNG" alt="게시글 신고" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158549542-906cac81-f7c3-458a-acef-3d7aa16f3dee.PNG" alt="게시글 숨기기" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549546-fbca65d8-839b-4738-badd-ed674bafef45.PNG" alt="게시글 보이기" width="50%">


<img src="https://user-images.githubusercontent.com/100409006/158549552-55fa39cd-2ec8-4f58-a7bb-43ea221e6c1c.PNG" alt="댓글 리스트" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549556-9aaa5418-fabc-465b-99e1-149498f15bd0.PNG" alt="댓글 등록" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158549561-c95db1a7-d049-4143-ad94-df9ca4bc4ce1.PNG" alt="댓글 수정" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158549563-5398d9df-27d8-48e9-a168-fe451a7ff0b0.PNG" alt="댓글 삭제" width="50%">

<br/><br/>

#### 유행어 퀴즈
<img src="https://user-images.githubusercontent.com/100409006/158550226-33ad7fa1-76f0-4c04-8f70-3f39e2912eb8.PNG" alt="퀴즈 등록" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158550229-9e0499b0-069b-4c66-b09d-4745e761814c.PNG" alt="퀴즈 수정" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158550236-80850c3b-98ab-43b9-bb34-ba959ee154fc.PNG" alt="퀴즈 삭제" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158550240-1e3a803a-3027-4dbe-8d5d-21ae4ae24210.PNG" alt="랜덤 퀴즈" width="50%">
<img src="https://user-images.githubusercontent.com/100409006/158550245-0d358900-c3b2-4b7b-80be-54c494043fa1.PNG" alt="퀴즈결과" width="50%"><img src="https://user-images.githubusercontent.com/100409006/158550222-12afdf05-0f4d-474a-a42f-090fd868400c.PNG" alt="퀴즈신고" width="50%">

<br/><br/>

#### 유행어 타임라인
<img src="https://user-images.githubusercontent.com/100409006/158550596-1af24c79-19ee-4d76-a20d-5d03f66e20b5.PNG" alt="타임라인" width="50%">

<br/><br/>

#### 랭킹
<img src="https://user-images.githubusercontent.com/100409006/158550612-e2658bcb-ac6a-49f9-a8fa-9fcb2272c9c6.PNG" alt="랭킹" width="50%">
