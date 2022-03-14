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
    <td colspan="2">oracle(11g)</td>
  </tr>
  <tr>
    <td>협업</td>
    <td colspan="2">GitHub</td>
  </tr>
</table>


<img src="이미지주소" alt="이미지" width="400" height="300">


<img src="https://user-images.githubusercontent.com/100409006/157793472-d75f95ab-b3de-45c5-944e-20e203a1b944.png" alt="front" width="300"/> <img src="https://user-images.githubusercontent.com/100409006/157793484-d8f2c7ce-6644-4124-8af4-afb9e1dde17f.png" alt="java" width="300" height="200"> <img src="https://user-images.githubusercontent.com/100409006/157793458-cb0528df-76ce-4571-bc94-bc8ec47f4f24.png" alt="spring" width="200" height="200">
<img src="https://user-images.githubusercontent.com/100409006/157793310-e961a2e9-741f-43d9-9267-c1411816362c.jpeg" alt="이클립스" width="200" height="200"> <img src="https://user-images.githubusercontent.com/100409006/157793495-704e1089-00bc-4165-98bc-22fc5dbe62af.png" alt="tomcat" width="300" height="300"> <img src="https://user-images.githubusercontent.com/100409006/157793488-37968231-8812-416b-9353-41e656625458.png" alt="oracle" width="400" height="200"> <img src="https://user-images.githubusercontent.com/100409006/157793477-44fad024-8f79-4be7-80ed-9af905632ef9.png" alt="깃허브" width="400" height="200">


<br/><br/>
## 4. 프로젝트 기능 구현

- 김서윤
  - 유행어 사전

- 방진기
  - 로그인, 마이페이지, 관리자페이지

- 신시원
  - 로그인, 마이페이지, 관리자페이지, 유행어 추진/자유게시판 화면 구현

- 이민선
    - **메인 페이지**
    - **유행어 추진/자유게시판**
      - 게시글
        - 게시글 리스트
        - 게시글 등록 (첨부파일)
        - 게시글 상세페이지
        - 게시글 수정
        - 게시글 삭제
        - 게시글 신고
        - 게시글 추천
        - 관리자 : 게시글 숨기기 / 보이기
      - 댓글
        - 댓글 리스트 출력
        - 댓글 등록
        - 댓글 수정
        - 댓글 삭제

    - **유행어 랭킹**
        - 유행어 사전 : 조회 수에 따른 랭킹
        - 유행어 추진 / 자유 게시판 : 추천 수에 따른 랭킹
        - 유행어 퀴즈 : 회원별 맞춘 갯수에 따른 랭킹
        - 페이지 별로 메인 랭킹을 달리 함

- 장승훈
  - 퀴즈
    - 퀴즈 등록
    - 퀴즈 수정
    - 퀴즈 삭제
    - 랜덤 퀴즈
    - 퀴즈 신고
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

### Class Diagram

![image](https://user-images.githubusercontent.com/97689858/158059943-aba82271-2e04-4fee-825e-c7b40f13a465.png)
![image](https://user-images.githubusercontent.com/97689858/158059946-7b3a279e-8dc2-4f19-85ed-6df7063ef479.png)
![image](https://user-images.githubusercontent.com/97689858/158059949-4153c36d-ae68-4970-9370-360825df6371.png)
![image](https://user-images.githubusercontent.com/97689858/158059954-259d3539-ba8a-44de-9702-09c592f47bcf.png)
![image](https://user-images.githubusercontent.com/97689858/158059958-4991280e-d9c9-4e81-8628-91e9522c8a01.png)
![image](https://user-images.githubusercontent.com/97689858/158059963-1f121ebe-926f-4465-ae62-93cb14287139.png)

<br/><br/>
### Sequence Diagram
#### 회원 관리
![membersequence drawio](https://user-images.githubusercontent.com/97710950/158091070-28c86742-200e-44f3-a79e-00de5d317f83.png)
<br/><br/>

#### 유행어 사전, 타임라인
![meme drawio](https://user-images.githubusercontent.com/98931301/158097561-abc42d18-b7ae-4198-9113-0a18302b6baa.png)
<br/><br/>

#### 유행어 추진/자유 게시판
![BOARD 시퀀스 게시글리스트 drawio](https://user-images.githubusercontent.com/100409006/158163860-e2638c1e-2b76-4d9d-977a-6a8623e28a53.png)
![BOARD 시퀀스 게시글 상세페이지 drawio](https://user-images.githubusercontent.com/100409006/158163883-634bc1c0-1659-4c5b-986f-9c60c4ad86ad.png)
![BOARD board 시퀀스 게시글 작성 drawio](https://user-images.githubusercontent.com/100409006/158163877-de2f6ed9-fe38-465f-aa4e-cf8fd2d4de67.png)
![BOARD 시퀀스 게시글 수정 drawio](https://user-images.githubusercontent.com/100409006/158163899-e2bb07ce-2e86-47a7-b83c-634a44f52487.png)
![BOARD 시퀀스 게시글 삭제 drawio](https://user-images.githubusercontent.com/100409006/158163889-8d31fafd-8154-4675-82df-9a3c9208f45d.png)

![BOARD 시퀀스 게시글 추천 drawio](https://user-images.githubusercontent.com/100409006/158163938-ad247611-fa80-4770-89a4-7763137eaf7d.png)
![BOARD 시퀀스 게시글 신고 drawio](https://user-images.githubusercontent.com/100409006/158163951-713c7686-6083-44dc-851d-81a971b2fd83.png)
![BOARD 시퀀스 게시글 숨기기 _ 보이기 drawio](https://user-images.githubusercontent.com/100409006/158163948-57263f08-6e08-4600-ac9f-102a9b119e3e.png)
<br/><br/>

#### 유행어 퀴즈
![랜덤퀴즈](https://user-images.githubusercontent.com/97689858/158095517-2ecd168e-b770-41ea-bec6-1788efab7197.jpg)
![퀴즈(등록,수정,삭제)](https://user-images.githubusercontent.com/97689858/158095528-f03d43e7-c663-42c7-9b4e-34641629edda.jpg)
<br/><br/>

#### 타임라인
![RANK 시퀀스 랭킹 리스트 drawio (1)](https://user-images.githubusercontent.com/100409006/158163609-b1486426-1f6a-4cb3-b925-f8f5e08ce441.png)

