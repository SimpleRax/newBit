<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员训练营管理</title>
    <script type="text/javascript" src="js/jquery-1.11.1.js"></script>
    <script type="text/javascript">
     $(function(){
    	$('#a1').click(f1);
      });
     function f1(){
		$.ajax({
			"url":"user.cn",
			"type":"get",
			"dataType":"json",
			"success":function(data){
					/* $('#b2').remove("#b2"); */
					$("#b2,.importent").remove();
				 for(i=0;i<data.length;i++){
					var s = data[i];
					$('#b1').after('<div class="content" id="b2">'+
			        '<table>'+
		            '<tr>'+
		              '<td><input type="checkbox" name="id" value="'+s.id+'"></td>'+  
		               '<td><a href="del.cn?id='+s.id+'">删除</a><a href="load.cn?id='+s.id+'">修改</a>'+s.name+'</td>'+
		               '<td>'+s.username+'</td>'+
		               '<td>'+s.password+'</td>'+
		               '<td>'+s.dep+'</td>'+
		               '<td>'+s.career+'</td>'+
		               '<td>'+s.id+'</td>'+
		            '</tr>'+
		        '</table>'+
		    '</div>');
				}
				$("#update").click(function(){
					var id = $("table td input:checked").val()
					//href.location="load.do?id="+id;
					//alert(id)
					$.ajax({
						"url":"load.do",
						"type":"get",
						"data":"id="+id,
						"dataType":"json",
						
						"success":function(data){
							
						}
					});
				})
				
			
				
				
			}
		});
	}
     function f2(){
    	 
     }
    </script>
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
    </div>
    <a href="tologin.cn">
           <img src="img/tctb.png">
       </a>
    <div class="btn1 js-change" id="btn1">
        <img src="img/leftAdm.png" >
        <a id="a1">账号管理</a>
    </div>
    <div class="btn2 js-change" id="btn2">
        <img src="img/leftxl.png" >
        <a href="manage.cn">训练营管理</a>
    </div>
    <div class="btn3 js-change" id="btn3">
        <img src="img/leftstu.png" >
        <a href="examine.cn">训练营学员信息查看</a>
    </div>
    <div class="btn">
        <a >UID-1707</a>
    </div>
    <div class="stern">
        <a class="up">上一页</a>
        <select name="" id="">
            <option value="">1</option>
        </select>
        <a class="next">下一页</a>
    </div>
</div>
<div class="search-box">
    <input type="text" placeholder="关键词搜索 如:UID">
    <img src="img/fdj.png" >
</div>
<div class="table">
    <div class="logo">
      <a>
          <img src="img/increse.png">
          <span>创建账号</span>
      </a>
      <a id="update">
          <img src="img/update.png">
           <span>修改</span>
      </a>
      <a>
          <img src="img/delete.png">
          <span>删除</span>
      </a>
    </div>
    <div class="title" id="b1">
        <table>
            <tr>
            <!-- <input type="checkbox" checked="checked" name="sex" value="m"> -->
            <!-- <td><input type="checkbox"/></td> -->
            <td>姓名</td>
            <td>账号</td>
            <td>密码</td>
            <td>手机号码</td>
            <td>职位</td>
            <td>员工号</td>
        </tr>
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
</body>
</html>