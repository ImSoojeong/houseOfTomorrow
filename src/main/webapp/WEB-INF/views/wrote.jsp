<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        ul,
        li {
            list-style-type: none;
        }

       body {
            background: url("${pageContext.request.contextPath}/image/KakaoTalk_20221013_170149504.webp") 0% 300% fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            z-index: 0;
        }

        /* 헤더 */
        header {
            background-color: white;
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-width: 1200px;
        }

        header .header-top {
            display: flex;
            width: 100%;
            justify-content: flex-end;
        }

        header .header-top .logo img {
            width: 265px;
        }

        header .header-top .logo {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        header .header-top .side {
            position: absolute;
        }

        header .header-top .side ul {
            display: flex;
            gap: 10px;
            margin: 10px;
        }

        /* 카테고리 */
        header .category {
            padding: 10px 20px;
            width: 100%;
        }

        header .category ul {
            display: flex;
            gap: 30px;
        }

        header .category ul li {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        header .category ul li:first-child {
            background: #FFECC8;
            border-radius: 10px;
            display: flex;
            flex-direction: row;
            align-items: flex-start;
            padding: 5px 15px 7px;
            gap: 10px;
        }

        /* 마이페이지 */
        main {
            background-color: white;
            position: relative;
            top: 33%;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            min-width: 1200px;
        }
		
		main .mypage-container {
			display: flex;
			width: 80%;
			justify-content: center;
			align-items: center
		}
		
        /* 마이페이지 메뉴 */
        main aside {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px;
        }

        main aside ul {
            display: flex;
            flex-direction: column;
            gap: 10px;
            width: 100%;
        }

        main aside ul li {
            display: flex;
            justify-content: center;
        }

        main aside ul li>div {
            border: 1px solid #F0F0F0;
            border-radius: 25px;
            width: 430px;
            height: 130px;
            padding: 30px;
            display: flex;
            justify-content: space-between;
            cursor: pointer;
        }

        main aside ul li>div .mytext {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        /* 선택중인 메뉴 css */
        main aside ul li:first-child>div {
            border: 1px solid transparent;
            background-image: linear-gradient(#fff, #fff), linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
            background-origin: border-box;
            background-clip: padding-box, border-box;
        }


        /* open 버튼 */
        main aside ul li>div .open {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        main aside ul li>div .open>div {
            font-size: 30px;
            background: #f8f8f8;
            border-radius: 15px;
            width: 50px;
            height: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
           
        }

        main aside ul li>div .open>div span {
            height: 100%;
            background: linear-gradient(90deg, #21A5B5 0%, #71B2B4 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        /* 내정보 */
        main section {
            flex: 1.2;
            height: 100%;
            padding: 30px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        main section .my-info {
            width: 500px;
            padding: 20px 0;
        }
        
        main section .my-info ul {
            display: flex;
            flex-direction: column;
        }

        main section .my-info ul li {
            border-bottom: 1px solid #ddd;
            padding: 10px;
            display: flex;
        }
        
        main section .my-info ul li:first-child {
            border-top: 1px solid #ddd;
        }

        main section .my-info ul li span {
            display: block;
            width: 200px;
        }

        main section .my-info ul li input[type="password"]{
            background: #D9D9D9;
            border: 0;
            padding: 0 5px;
            width: 150px;
        }
        /*내가 쓴 글*/
        #ca-search {
           align-self: flex-end;
        }
        #ca-search p {
            color: #616161;
            font-size: 14px;
            display: inline;
        }
        #ca-search button {
            color: #616161;
            font-size: 12px;
            width: 40px;
        }
        #ca-search select {
            color: #616161;
            font-size: 13px;
            width: 100px;
        }
        table {
            color: #616161;
        }
        th {
            color: black;
            border-bottom : 2px solid #21A5B5;
            padding: 10px 0 10px 0;
        }
        td{
            border-bottom : 1px solid #616161;
            padding: 10px 0 10px 0;
            text-align: center;
        }
        td:nth-child(3) {
            text-align: start;
        }
    </style>
</head>

<body>
    <header>
        <div class="header-top">
            <div class="logo">
                 <a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/image/KakaoTalk_20221012_170414651.png" alt=""></a>
            </div>
            <div class="side">
                <ul>
                    <li><a href=""><img src="" alt="">검색</a></li>
                    <li><a href=""><img src="" alt="">장바구니</a></li>
                    <li><a href="${pageContext.request.contextPath}/loginpage">로그인</a></li>
                    <li><a href="${pageContext.request.contextPath}/mypage">마이페이지</a></li>
                </ul>
            </div>
        </div>
        <nav class="category">
            <ul>
                <li>Category</li>
                <li>가구</li>
                <li>패브릭</li>
                <li>수납용품</li>
                <li>생활용품</li>
                <li>공지사항</li>
                <li>Q&A</li>
                <li>이벤트</li>
            </ul>
        </nav>
    </header>
    <main>
    	<div class="mypage-container">
        <aside>
            <ul id="sidemenulist">
                <li>
                    <div class="sidemenu">
                        <div class="mytext">
                            <h4>마이페이지</h4>
                            <p>내 정보 조회 / 수정 / 적립금조회</p>
                        </div>
                        <div class="open">
                            <div><span>+</span></div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="sidemenu">
                        <div class="mytext">
                            <h4>장바구니</h4>
                        </div>
                        <div class="open">
                            <div><span>+</span></div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="sidemenu">
                        <div class="mytext">
                            <h4>주문내역 조회</h4>
                            <p>주문 / 배송 조회</p>
                        </div>
                        <div class="open">
                            <div><span>+</span></div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="sidemenu">
                        <div class="mytext">
                            <h4>내가 쓴 글</h4>
                        </div>
                        <div class="open">
                            <div><span>+</span></div>
                        </div>
                    </div>
                </li>
            </ul>
        </aside>
        <section>
            <h2>내가 쓴 글</h2>
            <div id="ca-search">
            <form action="/조회하는controller" method="get" >
            <p >카테고리별 조회</p>
            <select name="category" id="category">
                <option value="Q&A">Q&A</option>
                <option value="review">review</option>
            </select>
            <button>검색</button>
            </form>
            </div>
                <table>
                    <thead>
                        <tr>
                        <th>번호</th>
                        <th>카테고리</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <td>1</td>
                        <td>Q&A</td>
                        <td>글제목</td>
                        <td>김희정</td>
                        <td>2022-1017</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Q&A</td>
                            <td>글제목</td>
                            <td>김희정</td>
                            <td>2022-1017</td>
                        </tr>
                    </tbody>
                </table>
           <div id="paging">
            1234
           </div>
        </section>
        </div>
    </main>
    <footer>

    </footer>

</body>

</html>
