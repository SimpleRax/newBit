<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员用户管理</title>
     <script type="text/javascript" src="js/jquery-1.11.1.js"></script>
     <script type="text/javascript" src="js/userutil.js"></script>
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
        <a id="zh">账号管理</a>
    </div>
    <div class="btn2 js-change" id="btn2">
        <img src="img/leftxl.png" >
        <a href="manage.cn">训练营管理</a>
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
<div class="pop" >
	<form action="update.cn">
    <table>
        <tr>
            <td>姓名</td>
            <td><input type="text" id="name" name="name"></td>
        </tr>
        <tr>
            <td>账号</td>
            <td><input type="text" id="username" name="username" ></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="text" id="password" name="password" ></td>
        </tr>
        <tr>
            <td>手机号码</td>
            <td><input type="text" id="dep" name="dep" ></td>
        </tr>
        <tr>
            <td>职位</td>
            <td><input type="text" id="career" name="career" ></td>
        </tr>
        <tr>
        
            <td>员工号</td>
            <td><input type="text" id="id" name="id" ></td>
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
  <form action="save.cn" class="shuaxin">
    <table>
        <tr>
            <td>姓名</td>
            <td><input type="text" id="name" name="name"></td>
        </tr>
        <tr>
            <td>账号</td>
            <td><input type="text" id="username" name="username" ></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="text" id="password" name="password" ></td>
        </tr>
        <tr>
            <td>手机号码</td>
            <td><input type="text" id="dep" name="dep" ></td>
        </tr>
        <tr>
            <td>职位</td>
            <td><input type="text" id="career" name="career" ></td>
        </tr>
        <tr>
        
            <td>员工号</td>
            <td><input type="text" id="id" name="id" ></td>
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
          <span>创建用户</span>
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
                <td>姓名</td>
                <td>账号</td>
                <td>密码</td>
                <td>手机号码</td>
                <td>职位</td>
                <td>员工号</td>
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