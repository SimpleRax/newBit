<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script type="text/javascript" src="js/jquery-1.11.1.js"></script>
    <link rel="stylesheet" href="css/student.css">
    <script type="text/javascript" src="js/user.js"></script>
    <script type="text/javascript" src="js/student.js"></script>
</head>
<body>
 <div class="navigation">
   <div class="front">
       <img src="img/tx.png">
       <div class="typeface">
        <p>包旭婷</p>
        <p>欢迎！</p>
       </div>
       <a href="tologin.cn">
           <img src="img/tctb.png">
       </a>
   </div>
   <div class="subject">
     <div class="head" id="a1">班级学员信息</div>
   </div>
   <div class="stern">
       <a class="up">上一页</a>
       <select name="" id="">
           <option value="">1</option>
       </select>
       <a class="next">下一页</a>
   </div>
 </div>
<div class="body-content">
<div class="pop">
	<form action="StudentSave.cn">
    <table>
    	<tr>
            <td>班级</td>
            <td><input type="text" name="roomNumber"></td>
        </tr>
        <tr>
            <td>学员姓名</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>顾问老师</td>
            <td><input type="text" name="teacher"></td>
        </tr>
        <tr>
            <td>学员类型</td>
            <td><input type="text" name="type"></td>
        </tr>
        <tr>
            <td>学历</td>
            <td><input type="text" name="education"></td>
        </tr>
        <tr>
            <td>专业</td>
            <td><input type="text" name="major"></td>
        </tr>
        <tr>
            <td>是否有基础</td>
            <td><input type="text" name="base"></td>
        </tr>
        <tr>
            <td>信息来源</td>
            <td><input type="text" name="information"></td>
        </tr>
        <tr>
            <td>目前情况</td>
            <td><input type="text" name="now"></td>
        </tr>
        <tr>
            <td>座位号</td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td>学习进度</td>
            <td><input type="text" name="progress"></td>
        </tr>
        <tr>
            <td>
                <button type="submit">确定</button>
            </td>
            <td>
                <button id="ee">取消</button>
            </td>
        </tr> 
    </table>
    </form>
</div>
 <div id="title">
    <span></span>
 </div>
 <div id="center">
     <img src="img/jt.png">
     <div class="seat" id="b1">

     </div>
     <form action="StudentUpdate.cn">
     <div class="block">
       <table id="table-left">
           <tr>
               <td>学员姓名:</td>
           </tr>
           <tr>
               <td>顾问老师:</td>
           </tr>
           <tr>
               <td>学员类型:</td>
           </tr>
           <tr>
               <td>学历:</td>
           </tr>
           <tr>
               <td>专业:</td>
           </tr>
           <tr>
               <td>是否有基础:</td>
           </tr>
           <tr>
               <td>信息来源:</td>
           </tr>
           <tr>
               <td>目前情况:</td>
           </tr>
           <tr>
               <td>座位号:</td>
           </tr>
           <tr>
               <td>学习进度:</td>
           </tr>
       </table>
       <table id="table-right">
             <tr>
                 <td>
                     <input type="text" id="name" name="name">
                 </td>
             </tr>
             <tr>
                 <td>
                     <input type="text" id="teacher" name="teacher">
                 </td>
             </tr>
             <tr>
                 <td>
                     <select id="type" name="type">
                         <option value="A">A</option>
                         <option value="B">B</option>
                         <option value="C">C</option>
                         <option value="D">D</option>
                     </select>
                 </td>
             </tr>
             <tr>
                 <td>
                     <input type="text" id="education" name="education">
                 </td>
             </tr>
             <tr>
                 <td >
                     <input type="text" id="major" name="major">
                 </td>
             </tr>
             <tr>
                 <td>
                     <input type="text" id="base" name="base">
                 </td>
             </tr>
             <tr>
                 <td>
                     <input type="text" id="information" name="information">
                 </td>
             </tr>
             <tr>
                 <td>
                     <input type="text" id="now" name="now">
                 </td>
             </tr>
             <tr>
                 <td>
                     <input type="text" id="id" name="id">
                 </td>
             </tr>
             <tr>
                 <td>
                     <select id="progress" name="progress">
                         <option value="A">A</option>
                         <option value="B">B</option>
                         <option value="C">C</option>
                         <option value="D">D</option>
                     </select>
                 </td>
             </tr>
         </table>
         <button>修改</button>
         <button id="shanchu">删除</button>
     </div>
    </form>
     <div class="tail">   
         <div>
          <img src="img/wrzw.png">
          <div>空座位</div>
         </div>
         <div>
          <img src="img/yrzw.png">
          <div>已经订座</div>	
         </div>
          <div>
           <img src="img/jszw.png">
           <div>学员学习进度为D</div>  
         </div>
     </div>
     <div id="add">
     <button>添加</button>
     </div>  
 </div>
</div>

 <script src="js/jquery.js"></script>
</body>
</html>