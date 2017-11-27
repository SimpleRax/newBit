<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>训练营学员信息查看</title>
    <script type="text/javascript" src="js/jquery-1.11.1.js"></script>
    <script type="text/javascript">
    $(function(){
     	$('#xy').click(f1);
       });
      function f1(){
 		$.ajax({
 			"url":"examine.cn",
 			"type":"post",
 			"dataType":"json",
 			"success":function(data){
 				console.log(data);
 					/* $('#b2').remove("#b2"); */
 					$(".btn,.importent").remove();
 				    for(i=0;i<data.length;i++){
 					var s = data[i];
 					$('#btn3').after(
 						    '<div class="btn">'+
 					        '<a data-id="'+s.roomNumber+'">'+s.roomNumber+'</a>'+
 					   		'</div>'
 					);
 					$(".btn").on("click","a",function(e){
 						 e.preventDefault();
 						 var id=$(this).attr("data-id");
 						$.ajax({
 							"url":"fs.cn",
 							"type":"get",
 							"data":"id="+id,
 							"dataType":"json",
 							"success":function(data){
 								$(".content,.importent").remove();
 				 				 for(i=0;i<data.length;i++){
 				 					var s = data[i];
 				 					$('.title').after(
 				 					'<div class="content">'+
 				 					'<table>'+
 				 		            '<tr>'+
 				 		            '<td>'+s.name+'</td>'+
 				 		            '<td>'+s.teacher+'</td>'+
 				 		          	'<td>'+s.type+'</td>'+
 				 		        	'<td>'+s.education+'</td>'+
 				 		            '<td>'+s.major+'</td>'+
 				 		            '<td>'+s.base+'</td>'+
 				 		            '<td>'+s.information+'</td>'+
 				 		            '<td>'+s.now+'</td>'+
 				 		            '<td>'+s.id+'</td>'+
 				 		            '<td>'+s.progress+'</td>'+
 				 		            '</tr>'+
 				 		          '</table>'+
 				 		          '</div>');
 				 				}
 								
 								/* $("#name").val(data.name);
 								$("#teacher").val(data.teacher);
 								$("#type").val(data.type);
 								$("#education").val(data.education);
 								$("#major").val(data.major);
 								$("#base").val(data.base);
 								$("#information").val(data.information);
 								$("#now").val(data.now);
 								$("#time").val(data.time);
 								$("#progress").val(data.progress); */
 							}
 						});
 						})
 				}
 				
 			}
 		});
 	}

    </script>
    <link rel="stylesheet" href="css/examine.css">
</head>
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
        <a href="manage.cn">训练营管理</a>
    </div>
    <div class="btn3 js-change" id="btn3">
        <img src="img/leftstu.png" >
        <a id="xy">训练营学员信息查看</a>
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
      <div class="title">
          <table>
          <tr>
              <td>学生姓名</td>
              <td>咨询老师</td>
              <td>学员类型</td>
              <td>学历</td>
              <td>专业</td>
              <td>是否有基础</td>
              <td>信息来源</td>
              <td>目前情况</td>
              <td>座位号</td>
              <td>学习进度</td>
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