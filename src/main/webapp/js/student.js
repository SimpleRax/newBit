$(document).ready(function(){
	$(".subject").on("click","#a1",f2)
	.on("click","a",f3)
	$(".block").on("click","#shanchu",f4)
	/*$("#b1").on("click","div",f4)*/
});
/*$(function(){
    	$('#a1').click(f1);
      });*/
function f1(){
    	$('#b1').empty()
    	for(var i=1;i<31;i++){
    		$('#b1').append(
    		    '<div class="stern-list" id="'+i+'">'+
    		             '<img src="img/wrzw.png" id="'+i+'">'+
    		            '<span id="s1" class="'+i+'"></span>'+
    		             '<span id="s2" class="'+i+'s2"></span>'+
    		         '</div>');
    		
    		};
}

function f2(){
	$.ajax({
			"url":"seatsfind.cn",
			"type":"post",
			"dataType":"json",
			"success":function(data){
				console.log(data);
					$(".content,.importent").remove();
				    for(i=0;i<data.length;i++){
					var s = data[i];
					$('#a1').after(
						    '<div class="content">'+
					        '<a data-id="'+s.roomNumber+'">'+s.roomNumber+'</a>'+
					   		'</div>'
					);
				    }
			}
	})
}

function f3(e){
	e.preventDefault();
	var num=$(this).attr("data-id");
	$("#title").html(num);
	f1();
	$("#b1").on("click","div",function(e){
		 e.preventDefault();
		 var id=$(this).attr("id");
		 $.ajax({
				"url":"seats.cn",
				"type":"get",
				"data":"id="+id+"&roomNumber="+num,
				"dataType":"json",
				"success":function(data){
					$("#name").val(data.name);
					$("#teacher").val(data.teacher);
					$("#type").val(data.type);
					$("#education").val(data.education);
					$("#major").val(data.major);
					$("#base").val(data.base);
					$("#information").val(data.information);
					$("#now").val(data.now);
					$("#id").val(data.id);
					$("#progress").val(data.progress);
					$("."+id).html(data.name);
					$("."+id+"s2").html(data.teacher);	
				}
		      
			});
		 $("#b1").off("click","div")
		})
	
	
}

function f4(){
	var id = $("#id").val();
	 $.ajax({
		"url":"delStudent.cn",
		"type":"get",
		"data":"id="+id,
	 });
	/* f2();*/
}

