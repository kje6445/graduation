<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/defer/header.jsp"%>
<%@include file="/defer/tap.jsp"%>

<html>
<head>
    <meta charset='UTF-8'>

    <title>Responsive Table</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style/style.css"/>

    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">

    <style>


        * {
            margin: 0;
            padding: 0;
        }
        body {
            #            font: 14px/1.4 Georgia, Serif;
            #        }
        #page-wrap {
            margin: 50px;
        }
        p {
            margin: 20px 0;
        }

        /*
        Generic Styling, for Desktops/Laptops
        */
        table {
            width: 70%;
            margin:auto;
            border-collapse: collapse;
        }
        /* Zebra striping */
        tr:nth-of-type(odd) {
            background: #eee;
        }
        th {
            background: #333;
            color: white;
            font-weight: bold;
            text-align: center;
        }
        td, th {
            padding: 6px;
            border: 1px solid #ccc;
            #            text-align: left;
        }

        @media
        only screen and (max-width: 760px),
        (min-device-width: 768px) and (max-device-width: 1024px)  {

            /* Force table to not be like tables anymore */
            table, thead, tbody, th, td, tr {
                display: block;
            }

            /* Hide table headers (but not display: none;, for accessibility) */
            thead tr {
                position: absolute;
                top: -9999px;
                left: -9999px;
            }

            tr { border: 1px solid #ccc; }

            td.block
            {
                border: 1px solid black;
            }
            td {
                /* Behave  like a "row" */
                border: none;
                border-bottom: 1px solid #eee;
                position: relative;
                padding-left: 50%;
            }

            td:before {
                /* Now like a table header */
                position: absolute;
                /* Top/left values mimic padding */
                top: 6px;
                left: 6px;
                width: 45%;
                padding-right: 10px;
                white-space: nowrap;
            }

            /*
            Label the data
            */
            td:nth-of-type(1):before { content: "졸업조건"; }
            td:nth-of-type(2):before { content: "기타졸업조건"; }

        }

        /* Smartphones (portrait and landscape) ----------- */
        @media only screen
        and (min-device-width : 320px)
        and (max-device-width : 480px) {
            body {
                padding: 0;
                margin: 0;
                width: 320px; }
        }

        /* iPads (portrait and landscape) ----------- */
        @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {
            body {
                width: 495px;
            }
        }



    </style>

</head>
<body>

<div class="log">
    <h4>소프트웨어공학과</h4>
    <h4>18학번 이전의 졸업요건 </h4>
    <div class="ch" id="chart_div"></div>
</div>

<div>
    <a href="/login/grdRegister?id=${ students.id }"><span class=" glyphicon glyphicon-ok">등록</a>
    <a href="/login/grdUpdate?id=${ students.id }"><span class=" glyphicon glyphicon-check">수정</a>

</div>

<div class="pull-right">
    <label>전공이름: </label>
    <input type="text" name="search" style="width: 122px;  height: 37px;">

    <button type="submit" class="btn">
        <span class=" glyphicon glyphicon-search"></span>조회</button>
</div>

<br>
<div style="text-align:center">
    <h2 >소프트웨어공학과 학생</h2>
    <br/>
    <div class="주전공">
        <h3>주전공</h3>

        <table class="주전공">
            <thead>
            <tr>
                <th>졸업조건</th>
                <th>기타 졸업조건</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="block">[2008~2013학번까지]<br/>
                    전필37학점 포함하여 전공 60학점 이상 이수 </td>

                <td rowspan="2" class="block">
                    전공기초과정<br/> (이산수학, 대학수학, 정보사회론, 컴퓨터 활용 중 2과목 이상을 포함하여 교양 15학점 이상 이수, 총 교양 47학점 이상)<br/>
                    전공심화과정<br/>
                    (전공 15학점 이상 추가 이수, 총 전공 75학점 이상)<br/>
                    타과복수전공과정, 타과부전공과정, 연계전공과정, 자기설계과정, 해외창과정 등의 특별과정 중 한 과정 이상 이수
                </td>
            </tr>

            <tr>
                <td>[2014학번부터]<br/>
                    전필31학점 포함하여 전공 60학점 이상 이수
                </td>


            </tr>


            </tbody>
        </table>
    </div>

    <br/>

    <div class="복수전공">
        <h3>복수전공</h3>

        <table class="복수전공">
            <thead>
            <tr>
                <th width="50%">졸업조건 </th>
                <th>기타 졸업조건</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td>전필 31학점 포함하여 전공 40학점 이상 이수</td>
                <td>졸업학점 이외의 조건 없음</td>
            </tr>


            </tbody>
        </table>
    </div>

    <br>

    <div class="부전공">
        <h3>부전공</h3>

        <table class="부전공">
            <thead>
            <tr>
                <th width="50%">졸업조건</th>
                <th >기타 졸업조건</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td>전필 31학점 포함하여 전공 60학점 이상 이수</td>
                <td>졸업학점 이외의 조건 없음</td>


            </tr>

            </tbody>
        </table>
    </div>

    <br>

    <div class="편입">
        <h3>편입</h3>

        <table class="편입">
            <thead>
            <tr>
                <th width="50%">졸업조건</th>
                <th >기타 졸업조건</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1,2 학년 지도과목을 제외하고 전필 27학점을 포함하여 전공 60 학점이상 이수</td>
                <td>졸업학점 이외의 조건 없음</td>


            </tr>

            </tbody>
        </table>
    </div>
</div>
<br>



<br>

<h2 >---------------------------------------------------------------------타과학생---------------------------------------------------------------------</h2>
<div style="text-align:center">

    <br>
    <div class="전과">
        <h3>전과</h3>

        <table class="전과">
            <thead>
            <tr>
                <th width="50%">졸업조건</th>
                <th >기타 졸업조건</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td>학번에 따라 전공필수 이수<br/>
                    전과이전 학기의 지도과목은 제외하되, 그만큼의 학점은 전선을 이수하여 전공학점을 채워야함
                </td>
                <td rowspan="2" class="block">

                    전공기초과정<br/>
                    (이산수학, 대학수학, 정보사회론, 컴퓨터 활용 포함 교양 15학점 이상 이수, 총 교양 47학점 이상),<br/>
                    전공심화과정<br/>
                    (전공 15학점 이상 추가 이수, 총 전공 75학점 이상),<br/>
                    타과복수전공과정, 타과부전공과정, 연계전공과정, 자기설계과정, 해외창과정 등의 특별과정 중 한 과정 이상 이수

                </td>


            </tr>

            </tbody>
        </table>
    </div>

    <br/>

    <div class="복수전공">
        <h3>복수전공</h3>

        <table class="복수전공">
            <thead>
            <tr>
                <th width="50%">졸업조건 </th>
                <th>기타 졸업조건</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    지도 과목 제외하고 전필 24학점 포함하여 전공 40학점 이상 이수(지도 과목은 선택)
                </td>
                <td>졸업학점 이외의 조건 없음</td>
            </tr>


            </tbody>
        </table>
    </div>

    <br/>

    <div class="부전공">
        <h3>부전공</h3>

        <table class="부전공">
            <thead>
            <tr>
                <th width="50%">졸업조건</th>
                <th >기타 졸업조건</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    전필, 전선 관계없이 21학점 이상 이수
                </td>
                <td>졸업학점 이외의 조건 없음</td>


            </tr>

            </tbody>
        </table>
    </div>
</div>

<br/>

<h2 >-------------------------------------------------------------------------공통-----------------------------------------------------------------------</h2>

<br/>
<div style="text-align:center">
    <br/>
    <h2 >소프트웨어공학과 전공필수</h2>
    <br/>
    <table class="전공필수">
        <thead>
        <tr>
            <th>학년</th>
            <th>학기</th>
            <th>2008~2013</th>
            <th>2014~2017</th>

        </tr>
        </thead>
        <tbody>
        <tr>
            <td rowspan="2" class="block"> 1</td>
            <td>1</td>
            <td> C프로그래밍I(3), 과정지도1(1)</td>
            <td> C프로그래밍I(3), 과정지도1(1)</td>

        </tr>

        <tr>
            <td>2</td>
            <td>
                C프로그래밍II(3), 과정지도2(1)
            </td>
            <td>
                웹페이지구축I(3), 과정지도2(1)
            </td>

        </tr>

        <tr>
            <td rowspan="2">2</td>
            <td>1</td>
            <td>
                컴퓨터구조(3), Java프로그래밍(3)<br/>
                데이터베이스개론(3), 과정지도3(1)
            </td>
            <td>
                컴퓨터구조(3), Java프로그래밍(3)<br/>
                데이터베이스개론(3), 과정지도3(1)
            </td>

        </tr>

        <tr>
            <td>2</td>
            <td>
                웹프로그래밍I(3), 자료구조론(3)<br/>
                운영체제론(3), 과정지도4(1)
            </td>
            <td>
                자료구조론(3)<br/>
                운영체제론(3), 과정지도4(1)
            </td>

        </tr>

        <tr>
            <td rowspan="2">3</td>
            <td>1</td>
            <td>
                알고리즘(3), 시스템분석및설계(3)<br/>
                과정지도5(1)
            </td>
            <td>
                알고리즘(3)<br/>
                과정지도5(1)
            </td>

        </tr>

        <tr>
            <td>2</td>
            <td>
                과정지도6(1)
            </td>
            <td>
                과정지도6(1)
            </td>

        </tr>

        <tr>
            <td >4</td>
            <td>1,2</td>
            <td>졸업지도(1) </td>
            <td>졸업지도(1) </td>

        </tr>

        <tr>
            <td colspan="2">합계</td>
            <td>37</td>
            <td>31</td>

        </tr>


        </tbody>
    </table>
    *2015학번까지 과정지도 6개중 5개만 이수해도 인정함

    <br/>
</div>

</div>



</body>
</html>
