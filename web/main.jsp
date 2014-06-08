<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="styles/style.css">
<script src="./scripts/jquery-1.9.1.min.js"></script>
<title>Sprout</title>
<script>
function executeQuery() {
	  $.ajax({
	    url: 'battery.html',
	    success: function(data) {
	      // do something with the return value here if you like
	    
	      
	    }
	  });
	  setTimeout(executeQuery, 5000); // you could choose not to continue on failure...
	}
	function monitor(){
		var refreshIntervalId = 0;
		  $('#batteryInformation').load('battery.html');
		  	if($('#charging').text()  == "Online"){
					$('#charge').css('opacity','1');
					refreshIntervalId = setTimeout(chargecharge, 1000);
			}else {
					clearTimeout(refreshIntervalId);
					refreshIntervalId = setTimeout(chargenot, 1000);
					$('#charge').css('opacity','0');
					$('#home1-container').css('background-color', 'green');
			}
		  	 setTimeout(monitor, 2000);
	}
	function chargecharge(){
		$("#home1-container").css('background','#C62626');
		setTimeout( function(){
	      $("#home1-container").css('background','#FC3535');
	    },500);
		 $("#charge").css('border-color','#C62626');
			setTimeout( function(){
		      $("#charge").css('border-color','#FC3535');
		    },500);
			 $(".health div").css('width','-=1%');
	}
	function chargenot(){
		$("#home1-container").css('background','green');
	}
$(document).ready(function(){
	executeQuery();
	monitor();
	
});

</script>
</head>
<body>
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
			<img src="assets/menubtn.svg"/>
		</div>
		<div id="charge">
			<img src="assets/charge.svg">
		</div>
		<div id="home1-container">
			<div id="pet-container">
				<div class="pet-name">
					SPROUT
				</div>
				<div class="pet-char">
					<div class="container">
						<img src="assets/char_1_infant.gif"/>
					</div>
				</div>
				<div class="pet-health">
					<div class="health">
						<div></div>
					</div>
				</div>
				<div class="pet-day">
					LEVEL 1
					<br/>
					SC: 1000
				</div>
				<div id="batteryInformation" style="display:none;">
			</div>
		</div>

		<script>
			$('.menubtn').click(function(){
				if($('#sidenav').css('left') == '-400px'){
					$('#sidenav').css('left','0');
				}
			});
			$('#home1-container').click(function(){
				if($('#sidenav').css('left') == '0px'){
					$('#sidenav').css('left','-400px');
				}
			});

			


			$('#charge').click(function(){
				

			});
		</script>

</div>


</body>
</html>

<!-- <html>
	<head>
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
			<img src="assets/menubtn.svg"/>
		</div>
		<div id="charge">
			<img src="assets/charge.svg">
		</div>
		<div id="home1-container">
			<div id="pet-container">
				<div class="pet-name">
					SPROUT
				</div>
				<div class="pet-char">
					<div class="container">
						<img src="assets/char_1_infant.gif"/>
					</div>
				</div>
				<div class="pet-health">
					<div class="health">
						<div></div>
					</div>
				</div>
				<div class="pet-day">
					LEVEL 1
				</div>
			</div>
		</div>

		<script>
			$('.menubtn').click(function(){
				if($('#sidenav').css('left') == '-400px'){
					$('#sidenav').css('left','0');
				}
			});
			$('#home1-container').click(function(){
				if($('#sidenav').css('left') == '0px'){
					$('#sidenav').css('left','-400px');
				}
			});

			setTimeout( function(){
			$('#charge').css('opacity','1');
			},2000);


			$('#charge').click(function(){
				$("#home1-container").css('background','#C62626');
				setTimeout( function(){
			      $("#home1-container").css('background','#FC3535');
			    },500);
			    setTimeout( function(){
			      $("#home1-container").css('background','#C62626');
			    },1000);
			    setTimeout( function(){
			      $("#home1-container").css('background','#FC3535');
			    },1500);
			    setTimeout( function(){
			      $("#home1-container").css('background','#C62626');
			    },2000);
			    setTimeout( function(){
			      $("#home1-container").css('background','#FC3535');
			    },2500);
			    setTimeout( function(){
			      $("#home1-container").css('background','#FC3535');
			    },3000);
				setTimeout( function(){
			      $("#home1-container").css('background','#FC3535');
			    },3500);
			    setTimeout( function(){
			      $("#home1-container").css('background','#FC3535');
			    },4000);
			    setTimeout( function(){
			      $("#home1-container").css('background','#FC3535');
			    },4500);
			    setTimeout( function(){
			      $("#home1-container").css('background','#FC3535');
			    },5000);
			    setTimeout( function(){
			      $("#home1-container").css('background','#FC3535');
			    },5500);
			    setTimeout( function(){
			      $("#home1-container").css('background','##FC3535');
			    },6000);

			    $("#charge").css('border-color','#C62626');
				setTimeout( function(){
			      $("#charge").css('border-color','#FC3535');
			    },500);
			    setTimeout( function(){
			      $("#charge").css('border-color','#C62626');
			    },1000);
			    setTimeout( function(){
			      $("#charge").css('border-color','#FC3535');
			    },1500);
			    setTimeout( function(){
			      $("#charge").css('border-color','#C62626');
			    },2000);
			    setTimeout( function(){
			      $("#charge").css('border-color','#FC3535');
			    },2500);
			    setTimeout( function(){
			      $("#charge").css('border-color','#FC3535');
			    },3000);
				setTimeout( function(){
			      $("#charge").css('border-color','#FC3535');
			    },3500);
			    setTimeout( function(){
			      $("#charge").css('border-color','#FC3535');
			    },4000);
			    setTimeout( function(){
			      $("#charge").css('border-color','#FC3535');
			    },4500);
			    setTimeout( function(){
			      $("#charge").css('border-color','#FC3535');
			    },5000);
			    setTimeout( function(){
			      $("#charge").css('border-color','#FC3535');
			    },5500);
			    setTimeout( function(){
			      $("#charge").css('border-color','#FC3535');
			    },6000);

			    $(".health div").css('width','-=5%');

			    setTimeout( function(){
			      $(".health div").css('width','-=5%');
			    },1000);
			   
			    setTimeout( function(){
			      $(".health div").css('width','-=5%');
			    },2000);
			   
			    setTimeout( function(){
			      $(".health div").css('width','-=5%');
			    },3000);
				
			    setTimeout( function(){
			      $(".health div").css('width','-=5%');
			    },4000);
			    
			    setTimeout( function(){
			      $(".health div").css('width','-=5%');
			    },5000);
			    
			    setTimeout( function(){
			      $(".health div").css('width','-=5%');
			    },6000);

			});
		</script>
	</body>
</html> -->