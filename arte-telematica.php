<?php
	$titlePage = 'Arte Telemática';
	include "header-interno.php";


	//Guarda os resultados em uma variável
	$artistas_result = mysql_query("SELECT autor.cod_autor, autor.nome, autor.local_nasc, autor.data_nasc, autor.img_url FROM autor ") or die(mysql_error());
	//define o título da página
?>

	<!-- Conteúdo principal da página -->
	<section class="container cf" role="main">
		<h2 class="page-title">A Arte Telemática</h2>
		<video src="assets/video/infografico_1.mp4" autoplay width="1060" loop></video>

		<p>A arte das novas tecnologias configurou-se em múltiplas e conhecidas 

modalidades. No conjunto de realizações diferenciadas dessa arte, o 

compartilhamento é frequente. Com o desenvolvimento dessas tecnologias, desde o 

rádio e a televisão, já se despertou de inicio o interesse por certos artistas pelo uso de 

redes a longa distancia (um conjunto de computadores que utiliza links de 

telecomunicações).</p>

<p>Na arte telemática (a palavra telemática, cunhada na França em 1977, por 

Simon Nora e Alain Minc, significa a conectividade entre a tecnologia da informática e 

a da telecomunicação) se atinge um dos pontos mais à frente do impulso de 

subjetividade das linguagens poéticas contemporâneas. Operacionalizada com as 

disponibilidades interfaciais das máquinas, a nova arte é criada em espaço 

multidimensional.</p>

<p>A potência dos dispositivos tecnológicos digitais conjugados traz a eliminação 

das distâncias geográficas e permite a imediata comunicação. É possível acreditar na 

grande importância que isso representa para relacionamentos culturais de maior 

densidade, advindos de uma ordem gerada pelo que é amplamente internacional, a 

exemplo do que ocorre no mundo da educação, da economia, da política, etc.

Na utilização do espaço da comunicação telemática nos vemos diante de um trabalho 

com grandes colaborações de um projeto. É uma instauração de mundos virtuais 

constituindo uma psico-realidade no fluxo eletrônico.</p>

<p>Pensando em aumentar o espaço e alcance que esse determinado tipo de arte possuí, criamos o Nexus. Produzimos também um podcast para os nossos leitores. <br /><br />Esperamos que vocês gostem! Ouça pelo site<br /></p>

<audio src="assets/audio/podcast.mp3" controls></audio>
<p>Ou então <a href="assets/audio/podcast.mp3" target="_blank" style="color: #d80000; text-transform: uppercase" download>baixe aqui</a></p>
	</section>

	<section class="container margin-up-down">
		<h2 class="page-title">Países de origem dos artistas</h2>
		<div class="large-corner-box ultra-large">
			<!-- audio a ser disparado -->
			<audio src="assets/audio/infografico.mp3" id="infografico__audio" auto></audio>
			<audio src="assets/audio/close.mp3" id="infografico__audio__close" auto></audio>
			<audio src="assets/audio/hover.mp3" id="infografico__audio__hover" auto></audio>
			<!-- indicadores do mapa -->
			<div class="icon-pointer america-latina" country="america-latina"></div>
			<div class="icon-pointer asia" country="asia"></div>
			<div class="icon-pointer eua" country="eua"></div>
			<div class="icon-pointer europa" country="europa"></div>
			<div class="icon-pointer oceania" country="oceania"></div>
			<div class="icon-pointer__modal">
				<div class="close">X</div>
				<!-- conteúdo -->
				<div class="icon-pointer__content" country="america-latina">Brasil: <br /><br />Gilbertto Prado<br />André Parente</div>
				<div class="icon-pointer__content" country="asia">Coreia do Sul:<br /><br />Nam June Paik</div>
				<div class="icon-pointer__content" country="eua">Estados Unidos:<br /><br />Kit G. e Sherrie R.</div>
				<div class="icon-pointer__content" country="europa">
					Inglaterra: <br /><br />
						Roy Ascott <br /><br /><br />
					Espanha: <br /><br />
						Antonio Muntadas<br /><br /><br />
					Alemanha:<br /><br />
						Michael Gleich<br /><br /><br />
					Itália:<br /><br />
						Waldemar Cordeiro
				</div>
				<div class="icon-pointer__content" country="oceania">
					Austrália: <br /><br />
						Jeffrey Shaw 
				</div>
			</div>
			<img src="assets/img/world-map.svg" alt="" width="900">
		</div>
	</section>

	<section class="container margin-up-down">
		<h2 class="page-title">Mídias usadas pelos artistas</h2>
		<video src="assets/video/infografico_2.mp4" autoplay width="1060" loop></video>
	</section>

</body>
</html>

