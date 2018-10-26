<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/res/common.css">
</head>

<script type="text/javascript">
    $(document).ready(function () {
        $("#login").click(function () {
            var id = $("#id").val();
            var name = $("#name").val();
            var answer = $("#answer").val();
            var sum = {id:id, name: name,answer: answer};
            var data = JSON.stringify(sum);
            $.ajax({
               type : "post" ,
               dataType : "json",
                url : "password",
                data : data ,
                success : function (data) {
                    alert(data);
                }
            });
        });
    });
</script>
<body>

<section class="container">
    <article class="full">
        <h1>비밀번호 찾기</h1>

        <div class="content">
            <div class="signin-cont cont">
                <form action="../member" method="post" enctype="multipart/form-data">
                    <input type="text" name="id" id="id" class="inpt" required="required" placeholder="학번">
                    <input type="text" name="name" id="name" class="inpt" required="required" placeholder="이름">

                    <input type="text" name="email" id="answer" class="inpt" required="required" placeholder="질문답">
                    <input type="hidden" name="type" value="1">
                    <button type="submit" class="btn btn-default">비밀번호 찾기</button>
                    <a href="../login.jsp" class="btn btn-primary">홈</a>
                </form>
            </div>
            <button type="button" id="login"></button>
        </div>
    </article>
</section>


</body>
</html>
