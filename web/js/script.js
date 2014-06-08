$(document).ready(function(){

	$("#top-color").animate({ "width": "80%" }, "easing");

	$("#item-gallery1").delay(500).fadeToggle(500);
	$("#item-gallery2").delay(700).fadeToggle(500);
	$("#item-projects").delay(900).fadeToggle(500);
	$("#item-contacts").delay(1100).fadeToggle(500);
	$("#item-about").delay(1300).fadeToggle(500);
	$("#item-members").delay(1500).fadeToggle(500);

	$("#menu-con li:nth-child(1)").delay(500).fadeToggle(500);
	$("#menu-con li:nth-child(2)").delay(800).fadeToggle(500);
	$("#menu-con li:nth-child(3)").delay(1100).fadeToggle(500);
	$("#menu-con li:nth-child(4)").delay(1400).fadeToggle(500);
	$("#menu-con li:nth-child(5)").delay(1700).fadeToggle(500);

	$("#logo-con").click(function(){
		if($("#about-con").is(":visible")){
			$("#menu-about").removeClass();
			$("#menu-about").addClass("notselected");
			$("#about-con").fadeToggle();
			$("#home-wrapper").delay(500).fadeToggle(500);
			$("#item-gallery1").delay(500).fadeToggle(500);
			$("#item-gallery2").delay(700).fadeToggle(500);
			$("#item-projects").delay(900).fadeToggle(500);
			$("#item-contacts").delay(1100).fadeToggle(500);
			$("#item-about").delay(1300).fadeToggle(500);
			$("#header-con #logo-con .logo-label").fadeToggle();
			$("#header-con #logo-con").css("padding","80px 20px");
			$("#header-con #logo-con").css("background","rgba(255,255,255,1)");
			$("#header-con").css("height","52%");
		} else if($("#programs-con-con").is(":visible")){
			$("#menu-programs").removeClass();
			$("#menu-programs").addClass("notselected");
			$("#programs-con-con").fadeToggle(500);
			$("#about-con").delay(800).fadeToggle(500);
			$("#home-wrapper").delay(500).fadeToggle(500);
			$("#item-gallery1").delay(500).fadeToggle(500);
			$("#item-gallery2").delay(700).fadeToggle(500);
			$("#item-projects").delay(900).fadeToggle(500);
			$("#item-contacts").delay(1100).fadeToggle(500);
			$("#item-about").delay(1300).fadeToggle(500);
			$("#header-con #logo-con .logo-label").fadeToggle();
			$("#header-con #logo-con").css("padding","80px 20px");
			$("#header-con #logo-con").css("background","rgba(255,255,255,1)");
			$("#header-con").css("height","52%");
		} else if($("#contact-con").is(":visible")){
			$("#menu-contact").removeClass();
			$("#menu-contact").addClass("notselected");
			$("#contact-con").fadeToggle(500);
			$("#about-con").delay(800).fadeToggle(500);
			$("#home-wrapper").delay(500).fadeToggle(500);
			$("#item-gallery1").delay(500).fadeToggle(500);
			$("#item-gallery2").delay(700).fadeToggle(500);
			$("#item-projects").delay(900).fadeToggle(500);
			$("#item-contacts").delay(1100).fadeToggle(500);
			$("#item-about").delay(1300).fadeToggle(500);
			$("#header-con #logo-con .logo-label").fadeToggle();
			$("#header-con #logo-con").css("padding","80px 20px");
			$("#header-con #logo-con").css("background","rgba(255,255,255,1)");
			$("#header-con").css("height","52%");
		} else if($("#project-con-con").is(":visible")){
			$("#menu-projects").removeClass();
			$("#menu-projects").addClass("notselected");
			$("#project-con-con").fadeToggle(500);
			$("#about-con").delay(800).fadeToggle(500);
			$("#home-wrapper").delay(500).fadeToggle(500);
			$("#item-gallery1").delay(500).fadeToggle(500);
			$("#item-gallery2").delay(700).fadeToggle(500);
			$("#item-projects").delay(900).fadeToggle(500);
			$("#item-contacts").delay(1100).fadeToggle(500);
			$("#item-about").delay(1300).fadeToggle(500);
			$("#header-con #logo-con .logo-label").fadeToggle();
			$("#header-con #logo-con").css("padding","80px 20px");
			$("#header-con #logo-con").css("background","rgba(255,255,255,1)");
			$("#header-con").css("height","52%");
		} else if($("#member-logo-con").is(":visible")){
			$("#menu-members").removeClass();
			$("#menu-members").addClass("notselected");
			$("#member-logo-con").fadeToggle(500);
			$("#about-con").delay(800).fadeToggle(500);
			$("#home-wrapper").delay(500).fadeToggle(500);
			$("#item-gallery1").delay(500).fadeToggle(500);
			$("#item-gallery2").delay(700).fadeToggle(500);
			$("#item-projects").delay(900).fadeToggle(500);
			$("#item-contacts").delay(1100).fadeToggle(500);
			$("#item-about").delay(1300).fadeToggle(500);
			$("#header-con #logo-con .logo-label").fadeToggle();
			$("#header-con #logo-con").css("padding","80px 20px");
			$("#header-con #logo-con").css("background","rgba(255,255,255,1)");
			$("#header-con").css("height","52%");
		}
	});

	$("#menu-con #menu-about").click(function(){
		if($("#home-wrapper").is(":visible")){
			$("#menu-about").removeClass();
			$("#item-gallery1").delay(500).fadeToggle(500);
			$("#item-gallery2").delay(700).fadeToggle(500);
			$("#item-projects").delay(900).fadeToggle(500);
			$("#item-contacts").delay(1100).fadeToggle(500);
			$("#item-about").delay(1300).fadeToggle(500);
			$("#home-wrapper").delay(1600).fadeToggle();
			$("#header-con #logo-con .logo-label").fadeToggle();
			$("#header-con #logo-con").css("padding","10px 20px")
			$("#header-con").css("height","60px");
			$("#about-con").delay(1800).fadeToggle(500);
			$("#menu-about").addClass("selected");
			$("#header-con #logo-con").css("background","rgba(255,255,255,0)");
		} else if($("#programs-con-con").is(":visible")){
			$("#menu-programs").removeClass();
			$("#menu-about").removeClass();
			$("#menu-programs").addClass("notselected");
			$("#programs-con-con").fadeToggle(500);
			$("#about-con").delay(800).fadeToggle(500);
			$("#menu-about").addClass("selected");
		} else if($("#member-logo-con").is(":visible")){
			$("#menu-members").removeClass();
			$("#menu-about").removeClass();
			$("#menu-members").addClass("notselected");
			$("#member-logo-con").fadeToggle(500);
			$("#about-con").delay(800).fadeToggle(500);
			$("#menu-about").addClass("selected");
		} else if($("#contact-con").is(":visible")){
			$("#menu-contact").removeClass();
			$("#menu-about").removeClass();
			$("#menu-contact").addClass("notselected");
			$("#contact-con").fadeToggle(500);
			$("#about-con").delay(800).fadeToggle(500);
			$("#menu-about").addClass("selected");
		} else if($("#project-con-con").is(":visible")){
			$("#menu-projects").removeClass();
			$("#menu-about").removeClass();
			$("#project-con-con").addClass("notselected");
			$("#contact-con").fadeToggle(500);
			$("#about-con").delay(800).fadeToggle(500);
			$("#menu-about").addClass("selected");
		}
	});

	$("#menu-con #menu-programs").click(function(){
		if($("#home-wrapper").is(":visible")){
			$("#menu-programs").removeClass();
			$("#item-gallery1").delay(500).fadeToggle(500);
			$("#item-gallery2").delay(700).fadeToggle(500);
			$("#item-projects").delay(900).fadeToggle(500);
			$("#item-contacts").delay(1100).fadeToggle(500);
			$("#item-about").delay(1300).fadeToggle(500);
			$("#home-wrapper").delay(1600).fadeToggle();
			$("#header-con #logo-con .logo-label").fadeToggle();
			$("#header-con #logo-con").css("padding","10px 20px")
			$("#header-con").css("height","60px");
			$("#programs-con-con").delay(1800).fadeToggle(500);
			$("#menu-programs").addClass("selected");
			$("#header-con #logo-con").css("background","rgba(255,255,255,0)");
		} else if($("#about-con").is(":visible")){
			$("#menu-about").removeClass();
			$("#menu-about").addClass("notselected");
			$("#menu-programs").removeClass();
			$("#about-con").fadeToggle();
			$("#programs-con-con").delay(1000).fadeToggle(500);
			$("#menu-programs").addClass("selected");
		} else if($("#member-logo-con").is(":visible")){
			$("#menu-member").removeClass();
			$("#menu-member").addClass("notselected");
			$("#menu-programs").removeClass();
			$("#about-con").fadeToggle();
			$("#member-logo-con").delay(1000).fadeToggle(500);
			$("#menu-programs").addClass("selected");
		} else if($("#contact-con").is(":visible")){
			$("#menu-contact").removeClass();
			$("#menu-contact").addClass("notselected");
			$("#menu-programs").removeClass();
			$("#contact-con").fadeToggle();
			$("#programs-con-con").delay(1000).fadeToggle(500);
			$("#menu-programs").addClass("selected");
		} else if($("#project-con").is(":visible")){
			$("#menu-contact").removeClass();
			$("#menu-contact").addClass("notselected");
			$("#menu-projects").removeClass();
			$("#programs-con").fadeToggle();
			$("#project-con").delay(1000).fadeToggle(500);
			$("#menu-programs").addClass("selected");
		}
	});

	$("#menu-con #menu-members").click(function(){
		if($("#home-wrapper").is(":visible")){
			$("#menu-members").removeClass();
			$("#item-gallery1").delay(500).fadeToggle(500);
			$("#item-gallery2").delay(700).fadeToggle(500);
			$("#item-projects").delay(900).fadeToggle(500);
			$("#item-contacts").delay(1100).fadeToggle(500);
			$("#item-about").delay(1300).fadeToggle(500);
			$("#home-wrapper").delay(1600).fadeToggle();
			$("#header-con #logo-con .logo-label").fadeToggle();
			$("#header-con #logo-con").css("padding","10px 20px")
			$("#header-con").css("height","60px");
			$("#member-logo-con").delay(1800).fadeToggle(500);
			$("#menu-members").addClass("selected");
			$("#header-con #logo-con").css("background","rgba(255,255,255,0)");
		} else if($("#about-con").is(":visible")){
			$("#menu-about").removeClass();
			$("#menu-about").addClass("notselected");
			$("#menu-members").removeClass();
			$("#about-con").fadeToggle();
			$("#member-logo-con").delay(1000).fadeToggle(500);
			$("#menu-members").addClass("selected");
		} else if($("#programs-con-con").is(":visible")){
			$("#menu-programs").removeClass();
			$("#menu-programs").addClass("notselected");
			$("#menu-members").removeClass();
			$("#programs-con-con").fadeToggle();
			$("#member-logo-con").delay(1000).fadeToggle(500);
			$("#menu-members").addClass("selected");
		} else if($("#contact-con").is(":visible")){
			$("#menu-contact").removeClass();
			$("#menu-contact").addClass("notselected");
			$("#menu-members").removeClass();
			$("#contact-con").fadeToggle();
			$("#member-logo-con").delay(1000).fadeToggle(500);
			$("#menu-members").addClass("selected");
		} else if($("#project-con").is(":visible")){
			$("#menu-contact").removeClass();
			$("#menu-contact").addClass("notselected");
			$("#menu-members").removeClass();
			$("#project-con").fadeToggle();
			$("#member-logo-con").delay(1000).fadeToggle(500);
			$("#menu-programs").addClass("selected");
		}
	});

	$("#menu-con #menu-contact").click(function(){
		if($("#home-wrapper").is(":visible")){
			$("#menu-contact").removeClass();
			$("#item-gallery1").delay(500).fadeToggle(500);
			$("#item-gallery2").delay(700).fadeToggle(500);
			$("#item-projects").delay(900).fadeToggle(500);
			$("#item-contacts").delay(1100).fadeToggle(500);
			$("#item-about").delay(1300).fadeToggle(500);
			$("#home-wrapper").delay(1600).fadeToggle();
			$("#header-con #logo-con .logo-label").fadeToggle();
			$("#header-con #logo-con").css("padding","10px 20px")
			$("#header-con").css("height","60px");
			$("#contact-con").delay(1800).fadeToggle(500);
			$("#menu-contact").addClass("selected");
			$("#header-con #logo-con").css("background","rgba(255,255,255,0)");
		} else if($("#about-con").is(":visible")){
			$("#menu-about").removeClass();
			$("#menu-about").addClass("notselected");
			$("#menu-contact").removeClass();
			$("#about-con").fadeToggle();
			$("#contact-con").delay(1000).fadeToggle(500);
			$("#menu-contact").addClass("selected");
		} else if($("#member-logo-con").is(":visible")){
			$("#menu-member").removeClass();
			$("#menu-member").addClass("notselected");
			$("#menu-contact").removeClass();
			$("#member-logo-con").fadeToggle();
			$("#contact-con").delay(1000).fadeToggle(500);
			$("#menu-contact").addClass("selected");
		} else if($("#programs-con-con").is(":visible")){
			$("#menu-programs").removeClass();
			$("#menu-programs").addClass("notselected");
			$("#menu-contact").removeClass();
			$("#programs-con-con").fadeToggle();
			$("#contact-con").delay(1000).fadeToggle(500);
			$("#menu-contact").addClass("selected");
		} else if($("#project-con").is(":visible")){
			$("#menu-project").removeClass();
			$("#menu-project").addClass("notselected");
			$("#menu-contact").removeClass();
			$("#project-con").fadeToggle();
			$("#contact-con").delay(1000).fadeToggle(500);
			$("#menu-contact").addClass("selected");
		}
	});

	$("#menu-con #menu-projects").click(function(){
		if($("#home-wrapper").is(":visible")){
			$("#menu-projects").removeClass();
			$("#item-gallery1").delay(500).fadeToggle(500);
			$("#item-gallery2").delay(700).fadeToggle(500);
			$("#item-projects").delay(900).fadeToggle(500);
			$("#item-contacts").delay(1100).fadeToggle(500);
			$("#item-about").delay(1300).fadeToggle(500);
			$("#home-wrapper").delay(1600).fadeToggle();
			$("#header-con #logo-con .logo-label").fadeToggle();
			$("#header-con #logo-con").css("padding","10px 20px")
			$("#header-con").css("height","60px");
			$("#project-con").delay(1800).fadeToggle(500);
			$("#menu-projects").addClass("selected");
			$("#header-con #logo-con").css("background","rgba(255,255,255,0)");
		} else if($("#about-con").is(":visible")){
			$("#menu-about").removeClass();
			$("#menu-about").addClass("notselected");
			$("#menu-projects").removeClass();
			$("#about-con").fadeToggle();
			$("#project-con").delay(1000).fadeToggle(500);
			$("#menu-projects").addClass("selected");
		} else if($("#member-logo-con").is(":visible")){
			$("#menu-members").removeClass();
			$("#menu-members").addClass("notselected");
			$("#menu-projects").removeClass();
			$("#member-logo-con").fadeToggle();
			$("#project-con").delay(1000).fadeToggle(500);
			$("#menu-projects").addClass("selected");
		} else if($("#contact-con").is(":visible")){
			$("#menu-contact").removeClass();
			$("#menu-contact").addClass("notselected");
			$("#menu-projects").removeClass();
			$("#contact-con").fadeToggle();
			$("#project-con").delay(1000).fadeToggle(500);
			$("#menu-projects").addClass("selected");
		} else if($("#programs-con-con").is(":visible")){
			$("#menu-programs").removeClass();
			$("#menu-programs").addClass("notselected");
			$("#menu-projects").removeClass();
			$("#programs-con-con").fadeToggle();
			$("#project-con").delay(1000).fadeToggle(500);
			$("#menu-projects").addClass("selected");
		} 
	});

	$("li#menu-about.notselected").mouseover(function(){
		$("#menu-about .icon").css("height", "0px");
		$("#menu-about .label").css("height", "50px");
	});

	$("li#menu-about.notselected").mouseout(function(){
		$("#menu-about .icon").css("height", "50px");
		$("#menu-about .label").css("height", "0px");
	});

	$("li#menu-programs.notselected").mouseover(function(){
		$("#menu-programs .icon").css("height", "0");
		$("#menu-programs .label").css("height", "50px");
	});

	$("li#menu-programs.notselected").mouseout(function(){
		$("#menu-programs .icon").css("height", "50px");
		$("#menu-programs .label").css("height", "0px");
	});

	$("li#menu-members.notselected").mouseover(function(){
		$("#menu-members .icon").css("height", "0");
		$("#menu-members .label").css("height", "50px");
	});

	$("li#menu-members.notselected").mouseout(function(){
		$("#menu-members .icon").css("height", "50px");
		$("#menu-members .label").css("height", "0px");
	});

	$("li#menu-projects.notselected").mouseover(function(){
		$("#menu-projects .icon").css("height", "0");
		$("#menu-projects .label").css("height", "50px");
	});

	$("li#menu-projects.notselected").mouseout(function(){
		$("#menu-projects .icon").css("height", "50px");
		$("#menu-projects .label").css("height", "0px");
	});

	$("li#menu-contact.notselected").mouseover(function(){
		$("#menu-contact .icon").css("height", "0");
		$("#menu-contact .label").css("height", "50px");
	});

	$("li#menu-contact.notselected").mouseout(function(){
		$("#menu-contact .icon").css("height", "50px");
		$("#menu-contact .label").css("height", "0px");
	});

	$("#btnknowledge").click(function(){
		if($("#btnmembership").hasClass("selected")){
			$("#programs-con").css("margin","0 0 0 -100%");
			$("#programs-nav a").removeClass("selected");
			$("#btnknowledge").addClass("selected");
		} else if($("#btnadvocacy").hasClass("selected")){
			$("#programs-con").css("margin","0 0 0 -100%");
			$("#programs-nav a").removeClass("selected");
			$("#btnknowledge").addClass("selected");
		}
	});

	$("#btnmembership").click(function(){
		if($("#btnknowledge").hasClass("selected")){
			$("#programs-con").css("margin","0 0 0 0");
			$("#programs-nav a").removeClass("selected");
			$("#btnmembership").addClass("selected");
		} else if($("#btnadvocacy").hasClass("selected")){
			$("#programs-con").css("margin","0 0 0 0");
			$("#programs-nav a").removeClass("selected");
			$("#btnmembership").addClass("selected");
		}
	});

	$("#btnadvocacy").click(function(){
		if($("#btnknowledge").hasClass("selected")){
			$("#programs-con").css("margin","0 0 0 -200%");
			$("#programs-nav a").removeClass("selected");
			$("#btnadvocacy").addClass("selected");
		} else if($("#btnmembership").hasClass("selected")){
			$("#programs-con").css("margin","0 0 0 -200%");
			$("#programs-nav a").removeClass("selected");
			$("#btnadvocacy").addClass("selected");
		}
	});


	if ($(window).width() <= 980){
			$("#btnhistory").click(function(){
				if($("#aboutmissionvision-con").is(":visible")){
					$("#about-nav a").removeClass();
					$(this).addClass("selected");
					$("#aboutmissionvision-con").css("margin", "0 0 0 0");
					$("#aboutmissionvision-con").css("opacity", "0");
					setTimeout(function(){
						$("#aboutmissionvision-con").hide();
						$("#history-con").show();
						$("#history-con").css("margin", "0 auto 0 auto");
						$("#history-con").css("opacity", "1");
							var delayli = 200;
								for ( var i = 1; i < 18; i++ ){
									$("#history-con ul li:nth-child(" + i + ")").delay(delayli).fadeToggle(1000);
									delayli+=300;

								}
					},600);
				}
			});

			$("#btnaboutus").click(function(){
				if($("#history-con").is(":visible")){
					$("#about-nav a").removeClass();
					$(this).addClass("selected");
					$("#history-con").css("opacity", "0");
					setTimeout(function(){
						$("#history-con").hide();
						$("#aboutmissionvision-con").show();
						$("#aboutmissionvision-con").css("margin", "0 0 0 50px");
						$("#aboutmissionvision-con").css("opacity", "1");
						$("#history-con ul li").css("display","none");
					},600);	
				}
			});
		} else {
			$("#btnhistory").click(function(){
				if($("#aboutmissionvision-con").is(":visible")){
					$("#about-nav a").removeClass();
					$(this).addClass("selected");
					$("#aboutmissionvision-con").css("margin", "0 0 0 0");
					$("#aboutmissionvision-con").css("opacity", "0");
					setTimeout(function(){
						$("#aboutmissionvision-con").hide();
						$("#history-con").show();
						$("#history-con").css("margin", "0 auto 0 auto");
						$("#history-con").css("opacity", "1");
							var delayli = 200;
								for ( var i = 1; i < 18; i++ ){
									$("#history-con ul li:nth-child(" + i + ")").delay(delayli).fadeToggle(1000);
									delayli+=300;

								}
					},600);
				}
			});

			$("#btnaboutus").click(function(){
				if($("#history-con").is(":visible")){
					$("#about-nav a").removeClass();
					$(this).addClass("selected");
					$("#history-con").css("opacity", "0");
					setTimeout(function(){
						$("#history-con").hide();
						$("#aboutmissionvision-con").show();
						$("#aboutmissionvision-con").css("margin", "0 0 0 100px");
						$("#aboutmissionvision-con").css("opacity", "1");
						$("#history-con ul li").css("display","none");
					},600);	
				}
			});
		}

});