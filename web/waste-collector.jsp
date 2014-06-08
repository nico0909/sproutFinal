<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>MINI GAME</title>
<style>
body{
    margin:0;
    padding:0;
    background: url(assets/crossword.png);
}
.container{
    overflow:hidden;
    width:700px;
   
}
.box{
    width:120px;
    height:120px;
    float:left;
    background-color:#ccc;
    margin-bottom:20px;
}

.spacing{
    margin-right:10px;
}

#item-con #sprout-image img{
	width: 16em;
	height: 29em;
}
#item-con #sprout-image{
	position:absolute;
	left:30%;
}
#item-con #waste-image{
	position:absolute;
	height: 16em;
	width: 16em;
	background: #fff;
	left: 57%;
	border-radius: 100%;
	border: 10px solid #109253;
}
#item-con #waste-image img{
	width: 100%;
	border-radius:100%;
} 
h2{
	text-align:center;
	color: #109253;
	padding: 2em;
}
h3{
	text-align:center;
	color: #109253;
	padding:0;
	
}
#item-con #circle{
	width: 20px;
	height: 20px;
	background: #109253;
	border-radius: 100%;
	position:absolute;
	top: 47%;
	left: 47%;
	
}
#item-con #circle2{
	width: 40px;
	height: 40px;
	background: #109253;
	border-radius: 100%;
	position:absolute;
	top: 44%;
	left: 49%;
}
#item-con #circle3{
	width: 60px;
	height: 60px;
	background: #109253;
	border-radius: 100%;
	position:absolute;
	top: 40%;
	left: 52%;
}
.sprout-image:hover{
transform:rotate(7deg);
-ms-transform:rotate(7deg); /* IE 9 */
-webkit-transform:rotate(7deg); /* Opera, Chrome, and Safari */
}
#item-con .trash-bin{
	position: absolute;
	cursor:pointer;
	
}
#item-con .trash-bin img:hover{
		transform:rotate(10deg);
-ms-transform:rotate(10deg); /* IE 9 */
-webkit-transform:rotate(10deg); /* Opera, Chrome, and Safari */
}
#item-con .trash-bin img{
width:8em;
	height: 16em;
}
#item-con #biodegradable{
	top: 60%;
	left: 59%;
	transform:rotate(10deg);
-ms-transform:rotate(10deg); /* IE 9 */
-webkit-transform:rotate(10deg); /* Opera, Chrome, and Safari */
}
#item-con #biodegradable:hover{
		transform:rotate(-2deg);
-ms-transform:rotate(-2deg); /* IE 9 */
-webkit-transform:rotate(-2deg); /* Opera, Chrome, and Safari */
}
#item-con #nonbiodegradable:hover{
	transform:rotate(5deg);
-ms-transform:rotate(5deg); /* IE 9 */
-webkit-transform:rotate(-5deg); /* Opera, Chrome, and Safari */
}
#item-con #recyclable:hover{
	transform:rotate(6deg);
-ms-transform:rotate(6deg); /* IE 9 */
-webkit-transform:rotate(6deg); /* Opera, Chrome, and Safari */
}
#item-con #nonbiodegradable{
	top: 58%;
	left: 70%;
	transform:rotate(-14deg);
-ms-transform:rotate(-14deg); /* IE 9 */
-webkit-transform:rotate(-14deg); /* Opera, Chrome, and Safari */
}
#item-con #recyclable{
	top: 48%;
	left: 80%;
	transform:rotate(-42deg);
-ms-transform:rotate(-42deg); /* IE 9 */
-webkit-transform:rotate(-42deg); /* Opera, Chrome, and Safari */
}
#game-over{
display:none;
}

#game-over{
height: 400px;
}

#time-out-con{
	position: fixed;
	right: 200px;
	top: 170px;
	width: 500px;
	padding: 25px 0;
	height: 200px;
	background: #109253;
	border-radius: 4px;
	color: #fff !important;
	font-wight: bold;
	text-align: center;
	text-weight: 300;
}

#game-Sscore{
	font-size: 5em;
	color: white;
	text-align: center;
	text-decoration: none;
	text-weight: 300;
}

#game-over #sprout-image{
width: 30%;
text-align: right;
	height: 100%;
	float: left
}

#game-over #sprout-image img{
	height: 100%;
}

#timer-main-con{
	margin-left: 30px;
	width: 8%;
	height: 70%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	border-radius: 5px;
	border:4px solid #109253;
	
}
#timer-con{
	background: #109253;
	width: 100%;
	height: 0%;
}

#timer{
	padding: 10px;
	border-radius: 100%;
	background: #fff;
	border: 1px solid #109253;
	color: #109253;
	width: 1.2em;
	text-align:center;
	font-size: 2em;
	margin: 0 auto;
}
#sidenav{
	width: 400px;
	height: 100%;
	background: rgba(16,97,58,.8);
	position: fixed;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	padding: 50px 0 0 0;
	left: -400px;
	z-index: 99999;
	-webkit-transition: all .3s; /* For Safari 3.1 to 6.0 */
	transition: all .3s;
}

#sidenav .profilepic{
	width: 200px;
	height: 200px;
	background: white;
	border-radius: 100%;
	border: 10px solid rgba(16,97,58,1);
	margin: 0 auto;
}

#sidenav .username{
	color: white;
	font-size: 2em;
	text-align: center;
	margin: 15px 0 0 0;
}

#sidenav ul{
	list-style: none;
	margin: 15px 0 0 0;
}

#sidenav ul li{
	width: 100%;
	padding: 15px 0;
	background: rgba(0,0,0,.05);
	color: white;
	font-size: 1.3em;
	text-align: center;
}

#sidenav ul li:hover{
	background: white;
	color: black;
}

.menubtn{
	position: fixed;
	top: 20px;
	left: 20px;
	z-index: 2;
}

.menubtn img{
	width: 40px;
	cursor: pointer;
}
</style>
		<link rel="stylesheet" href="css/style.css">
		<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
</head>
<body>
		<div id="sidenav">
			<div class="profilepic">
			</div>
			<div class="username">
				Juan Dela Cruz
			</div>
			<ul>
				<li>HOME</li>
				<li>NOTIFICATIONS (1)</l1>
				<li>DASHBOARD</li>
				<li>DAILY TASK</li>
				<li>MINI-GAMES</l1>
				<li>ACHIEVEMENTS</l1>
			</ul>
		</div>
		<div class="menubtn">
			<img src="assets/menubtn1.svg"/>
		</div>
<!-- <div class="container">
    <div class="box spacing">Test 1</div>
    <div class="box spacing">Test 2</div>
    <div class="box spacing">Test 3</div>
     <div class="box spacing">Test 3</div>
    <div class="box">Test 4</div>

    <div class="box spacing">Test 5</div>
    <div class="box spacing">Test 6</div>
    <div class="box spacing">Test 7</div>
     <div class="box spacing">Test 3</div>
    <div class="box">Test 8</div>
    
    <div class="box spacing">Test 5</div>
    <div class="box spacing">Test 6</div>
    <div class="box spacing">Test 7</div>
     <div class="box spacing">Test 3</div>
    <div class="box">Test 8</div>
    
    <div class="box spacing">Test 5</div>
    <div class="box spacing">Test 6</div>
    <div class="box spacing">Test 7</div>
     <div class="box spacing">Test 3</div>
    <div class="box">Test 8</div>
</div> -->
<div>
<h2>Help your sprout decide where to dispose her trash!</h2>
	<div id="item-con">
	
		<div id="sprout-image"><img src='assets/char_1_infant.gif' class="sprout-image"><h3>ITEM NO. <span id="item-no">1</span></h3></div>
		<div id="waste-image"><img src=""></div>
		<div id="circle"></div>
		<div id="circle2"></div>
		<div id="circle3"></div>
		<div id="answer-choices">
			<div class="trash-bin" id="biodegradable" data-ans="biodegradable"><img src="assets/trashbin1.png"></div>
			<div class="trash-bin" id="nonbiodegradable" data-ans="nonbiodegradable"><img src="assets/trashbin2.png"></div>
			<div class="trash-bin" id="recyclable" data-ans="recyclable"><img src="assets/trashbin3.png"></div>
		</div>
		<div id="timer-main-con">
		<div id="timer-con">
			<div id="timer">20</div>
		</div>
		</div>
		
	</div>
	<div id="game-over">
			<div id="sprout-image"><img src='assets/char_1_infant.gif' class="sprout-image"></div>
			<div id="time-out-con">
				<h1 id="game-overlabel">TIME OVER</h1>
				<h5 id="game-Sscore"><span id="score"></span>/<span id="total"></span></h5>
			</div>
	</div>
</div>
<script>
$('.menubtn').click(function(){
	if($('#sidenav').css('left') == '-400px'){
		$('#sidenav').css('left','0');
	}
});
$('#game-over').click(function(){
	if($('#sidenav').css('left') == '0px'){
		$('#sidenav').css('left','-400px');
	}
});
$('#item-con').ready(function(){
	
	//$(this).
	var ctr;
	var items = 1;
	var trash = new Array(13);
	trash[0] = "apple.png";
	trash[1] = "banana.png";
	trash[2] = "can.png";
	trash[3] = "candy.png";
	trash[4] = "fishbone.png";
	trash[5] = "snack.png";
	trash[6] = "bottle1.png";
	trash[7] = "bottle2.png";
	trash[8] = "bottle3.png";
	trash[9] = "box.png";
	trash[10] = "paperbag.png";
	trash[11] = "paper.png";
	trash[12] = "tanzan.png";
	
	var trashanswers = new Array(13);
	trashanswers[0] = "biodegradable";
	trashanswers[1] = "biodegradable";
	trashanswers[2] = "recyclable";
	trashanswers[3] = "nonbiodegradable";
	trashanswers[4] = "biodegradable";
	trashanswers[5] = "nonbiodegradable";
	trashanswers[6] = "recyclable";
	trashanswers[7] = "recyclable";
	trashanswers[8] = "recyclable";
	trashanswers[9] = "recyclable";
	trashanswers[10] = "recyclable";
	trashanswers[11] = "recyclable";
	trashanswers[12] = "recyclable";
	
	ctr = Math.round(12 * Math.random());
	$('#waste-image img').attr('src', 'assets/'+trash[ctr]);
	
	var score = 0;
	
	$('.trash-bin').click(function(){
		
		items++;
		
		var answer = $(this).data('ans');
		//alert(answer);
		if(answer === trashanswers[ctr]){
			score++;
			//alert("correct"+answer+", "+trashanswers[ctr]);
		}else{
			//alert("wrong");
		}	
		ctr = Math.round(12 * Math.random());
		$('#waste-image img').attr('src', 'assets/'+trash[ctr]);
	});
	/* var max_time = 20;
	var cinterval;
	
	function countdown_timer(){
	// decrease timer 
	max_time--;
	document.getElementById('timer').innerHTML = max_time;
	
	if(max_time == 0)
	{
		$('#score').text(score);
		$('#total').text(items);
		$('#item-con').fadeOut();
	
	max_time= 21;
	}

	}
	// 1,000 means 1 second.
	cinterval = setInterval(countdown_timer(), 1000); */
	var max = 20;
	setInterval(function(){
		max--;
		var height = $('#timer-con').css('height','+=22%'); 
		$('#timer-con').css('height', height);
		
		$('#item-no').text(items);
		$('#timer').text(max);
		if (max == 0){
			
			$('h1').text('GREAT JOB!');
			$('#item-con').fadeOut();
			$('#game-over').fadeIn().delay(500);
			$('#score').text(score);
			$('#total').text(items);
			items = 1;
			score = 0;
		} 
	}, 1000);
});

</script>
</body>
</html>