<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>使用说明</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet/less" type="text/css" href="less/manualView.less">
<link rel="stylesheet/less" type="text/css" href="less/main.less">
<!-- <link href="css/manualView.css" rel="stylesheet"> -->

</head>
<body>
	<div class="manual＿div">
		<div class="manual_download">
	 		<a href=""><font class="font_download">使用说明文档下载</font></a>
	 	</div>
		<div class="manual_machine">
			<div class="manual_window">
				<img class="manual_windw_pic" alt="" src="images/manual/div1.png"><img class="manual_windw_pic" alt="" src="images/manual/div2.png"><img class="manual_windw_pic" alt="" src="images/manual/div3.png"><img class="manual_windw_pic" alt="" src="images/manual/div4.png"><img class="manual_windw_pic" alt="" src="images/manual/div5.png"><img class="manual_windw_pic" alt="" src="images/manual/div6.png"><img class="manual_windw_pic" alt="" src="images/manual/div7.png">
			</div>
		</div>
		<div class="manual_content ">
			<img class="manual_num left" alt="" src="images/manual/div1_1.png">
			<div class="manual_font font_manual_content left">系统启动后，您需要用IC卡刷卡进行身份验证。</div> 
		</div>
		<img class="manual_prev" alt="" src="images/manual/div_left.png" id="manual_prev">
		<img class="manual_next" alt="" src="images/manual/div_right.png" id="manual_next">
	
	</div>
	<script src="js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="js/less.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function(){
			//设备流程点击事件 
			var machineWidth = $(".manual_machine").width();//每个图片宽度 
			var manualCount = 0;//当前位置
			
			//设置DIV宽度
			$(".manual_window").width(machineWidth * 7);
			$(".manual_windw_pic").width(machineWidth);
			 $(".manual_machine").height($(".manual_windw_pic").height());
		    var manual_num = parseInt($(".manual_num").attr("src").substr(17));//当前文字
			var manual_font = ["系统启动后，您需要用IC卡刷卡进行身份验证。",
			                 "请您握住两侧手柄，进行心率检测。",
			                 "在3分钟的测试过程中，系统将播放谜语和笑话供您欣赏。",
			                 "为您呈现测试结果。",
			                 "请您在吹嘴处持续均匀吹气，进入酒精检测流程。",
			                 "对您的饮酒状态做出评估。",
			                 "系统为您呈现酒精和心率检测的综合结果，以及据此为您提供的贴心建议。"];
			 
			$("#manual_next").click(function(){
				//图片
				if(manualCount < (-5 * machineWidth)){
					manualCount = machineWidth;
				}
				manualCount -= machineWidth;
				$(".manual_window").animate({left : manualCount + "px"},500,function(){});
 				//文字
				manual_num++;
				if(manual_num > 7){
					manual_num = 1;
				}
				$(".manual_num").attr("src","images/manual/div"+manual_num+"_1.png");
				$(".manual_font").text(manual_font[manual_num-1]); 
			});
			$("#manual_prev").click(function(){
				//图片
				if(manualCount > (-1 * machineWidth)){
					manualCount = (-7 * machineWidth);
				}
				manualCount += machineWidth;
				$(".manual_window").animate({left : manualCount + "px"},500,function(){});
				//文字
				manual_num--;
				if(manual_num < 1){
					manual_num = 7;
				}
				$(".manual_num").attr("src","images/manual/div"+manual_num+"_1.png");
				$(".manual_font").text(manual_font[manual_num-1]); 
			});
			
		});
	
	</script>
</body>
</html>
