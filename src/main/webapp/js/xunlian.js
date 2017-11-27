$(document).ready(function(){
	$('#xl').click(f1);
})

function f1(){
    	  		f2();
 				$("#d2").click(function(){
 					var roomNumber = $("#c1 td input:checked").val();
 					console.log(111);
 					//location.href="load.cn?id="+id;
 					//console.log(222);
 					//alert(id);
 					 $.ajax({
 						"url":"savemanage.cn",
 						"type":"get",
 						"data":"roomNumber="+roomNumber,
 						"dataType":"json",
 						"success":function(data){
 							$("#roomNumber").val(data.roomNumber);
 							$("#chanxian").val(data.chanxian);
 							$("#ctime").val(data.ctime);
 							$("#seat").val(data.seat);
 							$("#teachername").val(data.teachername);
 							
 						}
 					}); 
 				})
 				$("#d3").click(function(){
 					var roomNumber = $("#c1 td input:checked").val()
 					 $.ajax({
 						"url":"delmanage.cn",
 						"type":"get",
 						"data":"roomNumber="+roomNumber,
 					}); 
 				})
 	}
      
function f2(){
	$.ajax({
			"url":"findmanage.cn",
			"type":"post",
			"dataType":"json",
			"success":function(data){
					/* $('#b2').remove("#b2"); */
					$("#c2,.importent").remove();
				 for(i=0;i<data.length;i++){
					var s = data[i];
					$('#c1').append(
							 '<tr id="c2">'+
		 		              '<td><input type="checkbox" name="roomNumber" value="'+s.roomNumber+'"></td>'+
		 		             '<td>'+s.roomNumber+'</td>'+
		 		               '<td>'+s.chanxian+'</td>'+
		 		               '<td>'+s.ctime+'</td>'+
		 		               '<td>'+s.seat+'</td>'+
		 		               '<td>'+s.teachername+'</td>'+
		 		       '</tr>');
				}
			}
	})
}