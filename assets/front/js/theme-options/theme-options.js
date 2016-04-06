/*THEME OPTIONS.JS
-------------------------------------------------------------------------------------------------------------------------------
This is JS file that contains skin, layout Style and bg used in this template
-------------------------------------------------------------------------------------------------------------------------------
Template Name: allEvents
Author: Iwthemes
Name File: theme-options.js
Version 1.0 - Created on 19nov 2014
Website: http://www.iwthemes.com 
Support Website: http://support.iwthemes.com/
Email: support@iwthemes.com
Copryright: (C) 2014
-------------------------------------------------------------------------------------------------------------------------------*/

  $(document).ready(function($) {

  	/* Selec your skin and layout Style */

	function interface(){

    // Skin value
    var skin = "green"; /* black, brown, cyan, green, orange-light, purple, red */

    // Theme Panel - disable panel options
    var themepanel = "1"; // 1 (default - enable), 0 (disable)

    $(".skin").attr("href", "css/skins/"+ skin + "/" + skin + ".css");
    $("#layout").addClass(layout);
    $("#theme-options").css('opacity' , themepanel);

  	}

 	interface();
	
	//=================================== Skins Changer ====================================//

	google.setOnLoadCallback(function(){

	'use strict';

    // Color changer
	$(".black").click(function(){
	    $(".skin").attr("href", "css/skins/black/black.css");
	   	$(".logo").attr("src", "css/skins/black/logo.png");
	    return false;
	});
   	$(".brown").click(function(){
        $(".skin").attr("href", "css/skins/brown/brown.css");
	   	$(".logo").attr("src", "css/skins/brown/logo.png");
        return false;
   	});
	$(".cyan").click(function(){
	    $(".skin").attr("href", "css/skins/cyan/cyan.css");
	   	$(".logo").attr("src", "css/skins/cyan/logo.png");
	    return false;
	});
	$(".green").click(function(){
	    $(".skin").attr("href", "css/skins/green/green.css");
	   	$(".logo").attr("src", "css/skins/green/logo.png");
	    return false;
	});
	$(".orange-light").click(function(){
        $(".skin").attr("href", "css/skins/orange-light/orange-light.css");
	   	$(".logo").attr("src", "css/skins/orange-light/logo.png");
        return false;
   	});
   	$(".purple").click(function(){
        $(".skin").attr("href", "css/skins/purple/purple.css");
	   	$(".logo").attr("src", "css/skins/purple/logo.png");
        return false;
   	});
    $(".red").click(function(){
	   	$(".skin").attr("href", "css/skins/red/red.css");
	   	$(".logo").attr("src", "css/skins/red/logo.png");
	    return false;
	});

 });

	//=================================== Background Options ====================================//
	
	$('#theme-options ul.backgrounds li').click(function(){
		$bgSrc = $(this).css('background-image');
		if ($(this).attr('class') == 'bgnone')
			$bgSrc = "none";

		$('body').css('background-image',$bgSrc);
		$.cookie('background', $bgSrc);
		$.cookie('backgroundclass', $(this).attr('class').replace('active',''));
		$(this).addClass('active').siblings().removeClass('active');
	});

	//=================================== Panel Options ====================================//

	$('#theme-options .title').click(function(){
		if ($('#theme-options').css('left') == "-250px")
		{
			$left = "0px";
			$.cookie('displayoptions', "0");
		} else {
			$left = "-250px";
			$.cookie('displayoptions', "1");
		}
		$('#theme-options').animate({
			left: $left
		},{
			duration: 500,
			easing: "easeInOutExpo"
		});

	});

	$(function(){
		$('#theme-options').fadeIn();
		$bgSrc = $.cookie('background');
		$('body').css('background-image',$bgSrc);

		if ($.cookie('displayoptions') == "1")
		{
			$('#theme-options').css('left','-250px');
		} else if ($.cookie('displayoptions') == "0") {
			$('#theme-options').css('left','0');
		} else {
			$('#theme-options').delay(800).animate({
				left: "-250px"
			},{
				duration: 500,
				easing: "easeInOutExpo"
			});
			$.cookie('displayoptions', "1");
		}
		$('#theme-options ul.backgrounds').find('li.' + $.cookie('backgroundclass')).addClass('active');

	});

});