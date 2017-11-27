$(document).ready(function(){
	$(".shuaxin").on("click","#b3",f1)
	$('#zh').click(f1);
})

function f1(){
    	  		f2();
 				$("#d2").click(function(){
 					var id = $("#c1 td input:checked").val();
 					console.log(111);
 					//location.href="load.cn?id="+id;
 					//console.log(222);
 					//alert(id);
 					 $.ajax({
 						"url":"load.cn",
 						"type":"get",
 						"data":"id="+id,
 						"dataType":"json",
 						"success":function(data){
 							$("#name").val(data.name);
 							$("#username").val(data.username);
 							$("#password").val(data.password);
 							$("#dep").val(data.dep);
 							$("#career").val(data.career);
 							$("#id").val(data.id);
 							
 						}
 					}); 
 				})
 				$("#d3").click(function(){
 					var id = $("#c1 td input:checked").val()
 					 $.ajax({
 						"url":"del.cn",
 						"type":"get",
 						"data":"id="+id,
 					}); 
 				})
 	}
      
function f2(){
	$.ajax({
			"url":"user.cn",
			"type":"post",
			"dataType":"json",
			"success":function(data){
					/* $('#b2').remove("#b2"); */
					$("#c2,.importent").remove();
				 for(i=0;i<data.length;i++){
					var s = data[i];
					$('#c1').append(
		            '<tr id="c2">'+
		              '<td><input type="checkbox" name="id" value="'+s.id+'"></td>'+
		             '<td>'+s.name+'</td>'+
		               '<td>'+s.username+'</td>'+
		               '<td>'+s.password+'</td>'+
		               '<td>'+s.dep+'</td>'+
		               '<td>'+s.career+'</td>'+
		               '<td>'+s.id+'</td>'+
		            '</tr>');
				}
			}
	})
}