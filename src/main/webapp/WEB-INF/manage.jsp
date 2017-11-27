<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员训练营管理</title>
    <script type="text/javascript" src="js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="js/xunlian.js"></script>
    <link rel="stylesheet" href="css/manage.css">
    <link rel="stylesheet" href="css/user.css">
</head>
<body>
<body class="body">
<div class="page">
    <div class="portrait">
        <img src="img/tx.png">
        <div>
            欢迎！<br/>彭山莉
        </div>
        <a href="tologin.cn">
           <img src="img/tctb.png">
       </a>
    </div>
    <div class="btn1 js-change" id="btn1">
        <img src="img/leftAdm.png" >
        <a href="user1.cn">账号管理</a>
    </div>
    <div class="btn2 js-change" id="btn2">
        <img src="img/leftxl.png" >
        <a id="xl">训练营管理</a>
    </div>
    <div class="btn3 js-change" id="btn3">
        <img src="img/leftstu.png" >
        <a href="examine1.cn">训练营学员信息查看</a>
    </div>
</div>
<div class="search-box">
    <input type="text" placeholder="关键词搜索 如:UID">
    <img src="img/fdj.png" >
</div>
<div class="pop">
	<form action="updatemanage.cn">
    <table>
        <tr>
            <td>教室编号</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>所属产品线</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>创建时间</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>座位</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>讲师</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>
                <button id="b1" type="submit">确定</button>
            </td>
            <td>
                <button id="b2">取消</button>
            </td>
        </tr>
    </table>
    </form>
</div>
<div class="pop-1">
	<form action="savemanage.cn">
    <table>
        <tr>
            <td>房间号</td>
            <td><input type="text" id="roomNumber"  name="roomNumber"></td>
        </tr>
        <tr>
            <td>所属产品线</td>
            <td><input type="text" id="chanxian" name="chanxian"></td>
        </tr>
        <tr>
            <td>创建时间</td>
            <td><input type="text" id="ctime" name="ctime"></td>
        </tr>
        <tr>
            <td>座位</td>
            <td><input type="text" id="seat"  name="seat"></td>
        </tr>
        <tr>
            <td>讲师</td>
            <td><input type="text" id="teachername"  name="teachername"></td>
        </tr>
        <tr>
            <td>
                <button id="b3" type="submit">确定</button>
            </td>
            <td>
                <button id="b4">取消</button>
            </td>
        </tr>
    </table>
    </form>
</div>
<div class="table">
    <div class="logo">
      <a id="d1">
          <img src="img/increse.png">
          <span>创建训练营</span>
      </a>
      <a id="d2">
          <img src="img/update.png">
           <span>修改</span>
      </a>
      <a id="d3">
          <img src="img/delete.png">
          <span>删除</span>
      </a>
	</div>
    <div class="title">
        <table>
            <thead>
            <tr>
            <td><input type="checkbox"></td>
            <td>教师编号</td>
            <td>所属产品线</td>
            <td>创建时间</td>
            <td>座位数</td>
            <td>讲师</td>
            </tr>
            </thead>
            <tbody id="c1">
                
            </tbody>
        </table>
    </div>
</div>
<div class="foot">
    <a class="up">上一页</a>
    <a>1</a>
    <a class="next">下一页</a>
</div>
<script src="js/jquery.js"></script>
<script src="js/manage.js"></script>
<script src="js/user.js"></script>
</body>
</html>