/*点击事件改变样式*/
$(".js-change").on("click",function(){
  var index=$(this).index();
  $(this).addClass("list").siblings().removeClass("list");
  $(this).parents().find("js-change").eq(index).show().siblings().hide();
});


