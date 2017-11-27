<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/logon.css">
</head>
<body>
<div class="logo" >
     <img src="img/3.png">
</div>
<div class="title">
     <img  src="img/4.png">
</div>
<form action="login.cn" method="post">
<div class="table">
    <div id="text1">
      <img src="img/7.png" >
      <%String msg=(String)request.getAttribute("login_failed");%>
     <input type="text" placeholder=<%=(msg==null? "请输入您的账号 ":msg)%> name="username">
    </div>
    <div id="text2">
        <img src="img/5.png" class="img1">
        <input type="password" placeholder="请输入您的密码" name="password">
        <img src="img/6.png" class="img2">
    </div>
    <div id="check">
        <a href="#">
            <input type="checkbox">记住密码
        </a>
    </div>
    <div id="btn">
        <input type="submit" value="登录">
    </div>
</div>
</form>
</body>
</html>