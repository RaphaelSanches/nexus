$(document).ready(function(){
	$(".icon-pointer").click(function(){
		$(".icon-pointer__content").hide();
		var local = $(this).attr("country");
		$(".icon-pointer__modal, .icon-pointer__content[country='"+local+"'] ").fadeIn('slow');
		document.getElementById('infografico__audio').play();
	});


	$(".close").click(function() {
		$(".icon-pointer__modal, .icon-pointer__content").fadeOut('slow');
		document.getElementById('infografico__audio__close').play();
	});

	$(".wrap-img").fancybox({		'overlayShow'	:	true, 'openEffect' : 'fade' });


	$(function(){
		
		// container is the DOM element;
		// userText is the textbox
		
		var container = $(".page-title")
		
		// Shuffle the contents of container
		container.shuffleLetters();
		$(".artistas-list-item > a > h3, .experimentos-item__title, .container-titulo-experimento > h2, .info-autor > a > h3, .nome-artista-individual").shuffleLetters();
		
	});




});

