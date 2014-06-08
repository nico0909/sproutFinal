<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@page import = "java.util.*" %>
    <%@page import = " javax.sql.*" %>
    <%@page import = " java.sql.*" %>
  <%@page import = "java.lang.*" %>
     
  <%@page import = "java.text.*" %>
  <%@page import = "sprout.utility.*" %>

  
  <jsp:useBean id="questions" type="java.sql.ResultSet" scope="request"/>
<html>

	<head>

		<link rel="stylesheet" href="./styles/thecss.css">

		
		
    <script type="text/javascript" src="./scripts/jquery-1.9.1.min.js"></script>
    
    

    <script>
    function uni(question,answer) {

    	this.question = question;
    	this.answer = answer;
    	
    }
    function DisplayQuestions() 

    {
    	   var Questions = new Array(20);
      <%
      
      String question="";
      int count=0;
      Random rnd=new Random();
      for(int i=0;i<20;i++){
    	  
    	  int picknumbered=rnd.nextInt(20)+1;
    	  System.out.println(picknumbered);
    	  questions.beforeFirst();
    	  while(questions.next()){
    		  count++;
    		  if(picknumbered==questions.getRow()){
    		  System.out.println(questions.getString("question"));%>
    		  
    		  Questions[ctr]=new uni("<%=questions.getString("question")%>+","+<%=questions.getString("answer")%>");
    			  
    		<% 
    		}
    	  }
      }%>
      return Questions;
      
    }
    function getData(){
		var x;
		x=setQuestions();
		return x;
	}
    function setQuestion()
	{
		var QCount = 0;
		var QNumbers= 0;
		var ctr=0;
		var x =setQuestions();
		var index=0;
		var total = 20 - 1;
			
		$('#startprogram').html( thisArray[index].question);
		
	/*  document.getElementById("startprogram").value = 	questions[index].question; */
		    if(index == total)
		    {
		        index = 0;
		    }
		    else {
		    	
		        index++;
		    }
			
	}  
      
    		
    	      
    	     
    	    		
    function ValidateTrueOrFalse()
    {
    var points = document.getElementById("totalscore").value;
    	
    }



    score = 0;

    easy = 20;

    intermediate = 15;

    hard = 10;

    var gameover = "Game over! please restart the game";

          
          function Greet()
    			{
    			
    				
    			
    				pic1 = document.getElementById('assassinscreed').id;
    				var Check1 = document.getElementById('Giveanswer1').value;
    		
    			  
            
    				if(Check1 == pic1)
    				{
    					score += 5;
        	document.getElementById("totalscore").innerHTML = score;
    					document.getElementById("Greeting1").innerHTML = "Correct!";
    					document.getElementById("Greeting1").style.color = "black";
    					document.getElementById("Greeting1").style.fontSize = "50px";
    				 
    				
    				}
    				
    			 	
    				else
    				{


    easy -= 1;
      document.getElementById("totalguesses1").innerHTML = easy;
      intermediate -= 1;
      document.getElementById("totalguesses2").innerHTML = intermediate;
      hard -= 1;
      document.getElementById("totalguesses3").innerHTML = hard;
    				

    if(easy <=  5)
    {
      document.getElementById("totalguesses1").innerHTML = easy;
    document.getElementById("totalguesses1").style.color = "Red";

    }
    if(intermediate <=  5)
    {

      document.getElementById("totalguesses2").innerHTML = intermediate;
    document.getElementById("totalguesses2").style.color = "Red";

    }
    if(hard <=  5)
    {

      document.getElementById("totalguesses3").innerHTML = hard;
    document.getElementById("totalguesses3").style.color = "Red";

    }

    if(easy ==  0)
    {


      alert('The game is over for EASY MODE. Your score is ' + score);
     

    }
    if(intermediate ==  0)
    {    
      alert('The game is over for INTERMEDIATE MODE. Your score is ' + score);


    }
    if(hard ==  0)
    {       
      alert('The game is over for EXPERT MODE. Your score is ' + score);


    }

    					document.getElementById("Greeting1").innerHTML = "Wrong! Please try again";
    					document.getElementById("Greeting1").style.color = "red";
    					document.getElementById("Greeting1").style.fontSize = "20px";
    					
    				
    				}
    				
    	
    			}
    			


    function shuffle()

    {
     	var iIndex;
    				
    				iIndex = Math.floor(Math.random() * 10);
        
           	document.getElementById("assassinscreed").src = arrNames[iIndex];
            
            
            
            
            
          //  document.getElementById("Image2").src = arrNames[iIndex];
           
            
    				
    				
    			//	document.getElementById("Image3").src = arrNames[iIndex];
    			//	document.getElementById("Image4").src = arrNames[iIndex];
    			//	document.getElementById("Image5").src = arrNames[iIndex];
    			//	document.getElementById("Image6").src = arrNames[iIndex];
    			//	document.getElementById("Image7").src = arrNames[iIndex];
    			//	document.getElementById("Image8").src = arrNames[iIndex];
    			//	document.getElementById("Image9").src = arrNames[iIndex];
    			//	document.getElementById("Image10").src = arrNames[iIndex];
    				
    			  // String[] split = aw.split("/");
    		    var str="How are you doing today?";
              var n=str.split(" ");
            //one =  document.getElementById("Image1").src;
            
          //   var str= "images/nico.jpg";
     // var n=str.split("/",2);

    //var a = n[1];
    //var na = n[1].split(".",1);
            document.getElementById("aa").innerHTML = document.getElementById("assassinscreed").src;


    }
		
    </script>
    
    <script>
$(document).ready(function() 
		{
$("#p1").click(function () {
$("#showone").fadeOut(1000); 



});
});

</script>

    <script>
$(document).ready(function() {

$("#p2").click(function () {
$("#showone").fadeIn(10); 



});
});

</script>

 <script>
$(document).ready(function() {
$("#showone").hide();
$("#showone").show(50);  
$("#instructionsmanual").hide(); 
$("#xbutton").hide(); 



$("#instruction").click(function () {

	$("#instructionsmanual").css("position","absolute");
  $("#instructionsmanual").css("border","5px solid black");
 $("#instructionsmanual").css("left","320");
 
 $("#instructionsmanual").fadeIn(1000);
 
   $("#xbutton").fadeIn(1000); 
   
   $("#x").css("position","absolute");
 $("#x").css("left","910"); 

 
 
});
});		
</script>	

 <script>
$(document).ready(function() { 
	setQuestion();
$("#xbutton").click(function () {


 
 $("#instructionsmanual").fadeOut(1000);
 
   $("#xbutton").fadeOut(1000); 
   


 
 
});
});		

</script>	


<script language="javascript">

//COUNTDOWN
var max_time = 5;
var cinterval;
var NUMB=1;
 
function countdown_timer()
{

  // decrease timer                 
  max_time--;
  if(max_time == 0)
  {
     NUMB++;
     setQuestion();

max_time= 6;
  
   

 }
  document.getElementById('countdown').innerHTML = max_time;
   document.getElementById('qnumber').innerHTML = NUMB;
  
  
            
                  

 
  }

// 1,000 means 1 second.
cinterval = setInterval('countdown_timer()', 1000);
</script>

	
	</head>


	<body>

<center><h1>Mini Game <br/> SCORE: <span id = "totalscore">0</span></h1></center>

<div id = "e1">

<center><input type="button" id="instruction" value="How to play"></input></center>



 <div id = "instructionsmanual"><img src = "images/instructions.jpg"></img> </div>
 <div id = "x"> <button id = "xbutton"><img src = "images/x.jpg" height = "30" width = "30"></img></div>




             
                
                   
                   
<div id="guesstext1">Time: <span id = "countdown">5</span></div>




<div id = "showone">



<div id="container">
<!--
here here

!-->
   
   
                   Question no.
                   <span id = "qnumber">
                   </span> 
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <span id="startprogram">
                   
                   
                   </span>
                  
     
     

	    <br/>
	    <br/>



  <br/>

  <input type ="Submit" value="true" id="true"/>
  <input type ="submit" value = "false" id="false"/>
    
    
    
    
    
    
    
    


	</body>
</html>