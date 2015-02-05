<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>意见建议</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet/less" type="text/css" href="less/adviseView.less">
<link rel="stylesheet/less" type="text/css" href="less/main.less">
<!-- <link href="css/adviseView.css" rel="stylesheet"> -->

</head>
<body>
	<form action="" method="post" id="advise_form">
	 <div class="advise_div " style="" >
	 	<div class="advise_content">
	 	<textarea class="font_advise_content" id="advise_textarea" name="advise" >点击输入您的意见和建议</textarea>
	 	</div>
	 	<div class="advise_submit" style="">
	 		<img class="advise_img right" id="advise_img" alt="" src="images/advise/submit.jpg">
	 		<div class="left"></div>
	 	</div>
	 </div>
	 </form>
	<script src="js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="js/less.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function(){
			//点击提交
			$("#advise_img").click(function(){
				$("#advise_form").submit();
			});
			//点击按钮样式
			$("#advise_img").hover(function(){
				$(this).attr("src","images/advise/submit-c.png");
			},function(){
				$(this).attr("src","images/advise/submit.jpg");
			});
			//文本域获取焦点
		   $("#advise_textarea").focus(function cls() {
		       var advise_content = $(this).val();
			   if (advise_content == "点击输入您的意见和建议"){
				   $(this).val("");
			   } 
		    });
		    
			
			
		});
	</script>
</body>
</html>
