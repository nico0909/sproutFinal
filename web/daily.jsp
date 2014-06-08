<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" href="css/style.css">
		<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
		<style>
		#monday{
			position: absolute;
top: 4600px;
left: 360px;
z-index: 1;
color: #fff;
font-size: 3em;
transform: rotate(-30deg);
-ms-transform: rotate(-30deg);
-webkit-transform: rotate(-30deg);
		}
	
		#tuesday{
			position: absolute;
top: 3950px;
left: 150px;
z-index: 1;
color: #fff;
font-size: 3em;
transform: rotate(-30deg);
-ms-transform: rotate(-30deg);
-webkit-transform: rotate(-30deg);
		}
		#wednesday{
position: absolute;
top: 3750px;
left: 880px;
z-index: 1;
color: #fff;
font-size: 3em;
transform: rotate(35deg);
-ms-transform: rotate(35deg);
-webkit-transform: rotate(35deg);
		}
		#thursday{
			position: absolute;
top: 3300px;
left: 340px;
z-index: 1;
color: #fff;
font-size: 3em;
transform: rotate(-10deg);
-ms-transform: rotate(-10deg);
-webkit-transform: rotate(-10deg);
		}
		#friday{
			position: absolute;
top: 2950px;
left: 550px;
z-index: 1;
color: #fff;
font-size: 3em;
transform: rotate(30deg);
-ms-transform: rotate(30deg);
-webkit-transform: rotate(30deg);
		}
		#saturday{
			position: absolute;
			color:black;
top: 2480px;
left: 740px;
z-index: 2;
color: #fff;
font-size: 3em;
transform: rotate(30deg);
-ms-transform: rotate(30deg);
-webkit-transform: rotate(30deg);
		}
			#sunday{
			position: absolute;
top: 2080px;
left: 690px;
z-index: 2;
color: #fff;
font-size: 3em;
transform: rotate(30deg);
-ms-transform: rotate(30deg);
-webkit-transform: rotate(30deg);
		}
		.mommy{
			width: 15px;
			height: 15px;
			border-radius: 100%;
			background: rgba(0,0,0,.3);
			display: inline-block;
		}
		</style>
	</head>

	<body>
		<script>
			window.scroll(0, document.documentElement.scrollHeight)
		</script>
		<div id="sidenav">
			<div class="profilepic">
			</div>
			<div class="username">
				Juan Dela Cruz
			</div>
			<ul>
				<a href="main.jsp"><li>HOME</li></a>
				<a href="dashboard.jsp"><li>DASHBOARD</li></a>
				<a href="daily.jsp"><li>DAILY TASK</li></a>
				<a href="store.html"><li>STORE</li></a>
				<li>MINI-GAMES</l1>
				<li>ACHIEVEMENTS</l1>
			</ul>
		</div>
		<div class="menubtn">
			<img src="assets/menubtn1.svg"/>
		</div>
		<div id="days-container">
			<div id="yourpet">
				<img src="assets/char_1_infant.gif"/>
			</div>

			<div id="leaf1-modal">
				<div class="box">
					<input type="checkbox">&nbsp;Carry a reusable bags fill up with all your trash, recyclables and food wastes from school.<br/>
					<input type="checkbox">&nbsp;Have an atleast 20 pesos savings from your "Baon"<br/>
					<input type="checkbox">&nbsp;Have a trash list. <span style="font-size: .8em">MOMMY</span> <div class="mommy"></div>
				</div>
				<div class="mask"></div>
			</div>

			<img src="assets/days.svg" id="whole">
			<img src="assets/days_1.svg" id="leaf1" class="disabled"><div id="monday">MONDAY</div>
			<img src="assets/days_2.svg" id="leaf2"  class="disabled"><div id="tuesday">TUESDAY</div>
			<img src="assets/days_3.svg" id="leaf3" class="disabled"><div id="wednesday">WEDNESDAY</div>
			<img src="assets/days_4.svg" id="leaf4" class="disabled"><div id="thursday">THURSDAY</div>
			<img src="assets/days_5.svg" id="leaf5" class="disabled"><div id="friday">FRIDAY</div>
			<img src="assets/days_4.svg" id="leaf6" class="disabled"><div id="saturday">SATURDAY</div>
			<img src="assets/days_1.svg" id="leaf7" class="disabled"><div id="sunday">SUNDAY</div>
			<img src="assets/days_2.svg" id="leaf8"  class="disabled">
			
		</div>
			<script>
				$('#leaf1').click(function(){
					$('#leaf1-modal').fadeIn(200);
				});
				$('#leaf1-modal .mask').click(function(){
					$('#leaf1-modal').fadeOut();
				});
				$('.menubtn').click(function(){
					if($('#sidenav').css('left') == '-400px'){
						$('#sidenav').css('left','0');
					}
				});
				$('#days-container').click(function(){
					if($('#sidenav').css('left') == '0px'){
						$('#sidenav').css('left','-400px');
					}
				});
			</script>
	</body>
</html>