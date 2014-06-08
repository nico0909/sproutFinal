<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<link rel="stylesheet" href="css/style.css">
		<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
		<style>
		#namepet-container{
			display:none;
		}
		
		</style>
	</head>

	<body>
		<script>
			$(document).ready(function(){
				
					$('#selectpet-container .pet-char .previous').click(function(){
						if($('#selectpet-container .pet-char .container img').attr('src') == 'assets/char_3_infant.gif'){
							$('#selectpet-container .pet-char .container img').attr('src','assets/char_2_infant.gif');
						} else if($('#selectpet-container .pet-char .container img').attr('src') == 'assets/char_2_infant.gif'){
							$('#selectpet-container .pet-char .container img').attr('src','assets/char_1_infant.gif');
						} else if($('#selectpet-container .pet-char .container img').attr('src') == 'assets/char_1_infant.gif'){
							$('#selectpet-container .pet-char .container img').attr('src','assets/char_3_infant.gif');
						} 
					});
					$('#selectpet-container .pet-char .next').click(function(){
						if($('#selectpet-container .pet-char .container img').attr('src') == 'assets/char_1_infant.gif'){
							$('#selectpet-container .pet-char .container img').attr('src','assets/char_2_infant.gif');
						} else if($('#selectpet-container .pet-char .container img').attr('src') == 'assets/char_2_infant.gif'){
							$('#selectpet-container .pet-char .container img').attr('src','assets/char_3_infant.gif');
						} else if($('#selectpet-container .pet-char .container img').attr('src') == 'assets/char_3_infant.gif'){
							$('#selectpet-container .pet-char .container img').attr('src','assets/char_1_infant.gif');
						} 
					});
					/* $("#namepet-container input[type='submit']").click(function(){
						$("#home-container").css("margin", "-1000px 0 0 0");
					});  */
				
				
				var sproutid;
				$('#select-sprout-btn').click(function(){
					var src = $('#selectpet-container .pet-char .container img').attr('src');
					$('#namepet-container').fadeIn();
				
					if(src == 'assets/char_1_infant.gif'){
						sproutid = 1;
					}else if(src=='assets/char_2_infant.gif'){
						sproutid = 2;
					}else if(src=='assets/char_3_infant.gif'){
						sproutid = 3;
					}
				});
				
				$('#create-sprout').submit(function(){
					$.ajax({
						type: 'post',
						url: 'SetupSprout',
						//data: {'sproutname': $('#sproutname').val(), 'userid': <%=session.getAttribute("userid") %> },
						data: {'sproutname': $('#sproutname').val(), 'userid': 1 },
						success: function(msg){
							$("#home-container").css("margin", "-1000px 0 0 0");
							if(msg == "success"){
								alert("sproutsaved!");	
								console.log('dthdfgh');
							}
						}
						
					});
					$("#home-container").css("margin", "-1000px 0 0 0");
				});
				
				
			});
			
			
		</script>

		<div id="home-container">
			<div id="namepet-container">
				<div class="box">
				<form id="create-sprout">
					<p class="nameme">NAME ME!</p>
					<p><input type="text" placeholder="NAME" id="sproutname"></p>
					<p><input type="submit" value="SUBMIT"></p>
				</form>
				</div>
			</div>
			<div id="selectpet-container">
				<div class="pet-name">
					SELECT YOUR SPROUT
				</div>
				<div class="pet-char">
					<div class="previous"><img src="assets/nexticon.svg"/></div>
					<div class="container">
						<img src="assets/char_3_infant.gif"/>
					</div>
					<div class="next"><img src="assets/nexticon.svg"/></div>
					<div class="clear"></div>
				</div>
				<div class="selectpet-btn">
					<input id="select-sprout-btn" type="submit" value="SELECT"/>
				</div>
			</div>
		</div>
		<div id="welcome-pet-container">
			<div class="pet">
				<img src="assets/char_3_infant.gif"/>
			</div>
			<div class="content">
				<h1>HI! THANK YOU<br>FOR NAMING ME<br>(sproutname)</h1>
				<input type="button" value="START">
			</div>
		</div>
	</body>
</html>