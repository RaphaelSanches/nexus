<?php
	$titlePage = 'Artistas';
	include "header-interno.php";


	//Guarda os resultados em uma variável
	$artistas_result = mysql_query("SELECT autor.cod_autor, autor.nome, autor.local_nasc, autor.data_nasc, autor.img_url FROM autor ") or die(mysql_error());
	//define o título da página
?>

	<!-- Conteúdo principal da página -->
	<section class="container cf" role="main">
		<h2 class="page-title">A Arte Telemática</h2>

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
	</section>

</body>
</html>

