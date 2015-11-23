<?php
	$titlePage = 'O Projeto Nexus';
	include "header-interno.php";


	//Guarda os resultados em uma variável
	$experimentos_result = mysql_query("SELECT obras.nome, obras.cod_obra, img.img_url, img.cod_obra, img.destaque FROM obras RIGHT JOIN img ON img.cod_obra = obras.cod_obra WHERE img.destaque = 1 ") or die(mysql_error());
	//define o título da página
?>

	<!-- Conteúdo principal da página -->
	<section class="container cf" role="main">
		<div class="large-corner-box">
			<h1>O Nexus</h1>
			<h2 class="version-text">Versão 1.0.0</h2>
			<p>Desenvolvido por:</p>
			<p><strong>Fernanda Mazzotti<br />
			Guilherme Henrique<br />
			Hugo Machado<br />
			Raphael Sanches</strong></p>
			<p>Professor Orientador:</p>
			<p><strong>Ricardo A. Bontempo</strong></p>
			<p>

Este site foi publicado e é mantido pelos alunos do 2º período do curso de DESIGN DIGITAL da Universidade Anhembi Morumbi visando a atender às exigências do Projeto Interdisciplinar. Trata-se de uma publicação temporária para propósitos estritamente acadêmicos e sem fins lucrativos. Em atendimento às exigências da Lei 9.610/98 e do parágrafo 4° do Artigo 184 do Código Penal os alunos responsáveis por esta publicação colocam-se à disposição, através do link abaixo, para dirimir qualquer dúvida referente à eventual violação de direitos autorais, comprometendo-se desde já, a retirar do ar qualquer texto, som ou imagem pertencente a autor ou titular que se sinta direta ou indiretamente prejudicado.</p>
		</div>

	</section>

</body>
</html>

