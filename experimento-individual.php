<?php

	
	//define o título da página
	$titlePage = "Artista - Nexus";
	//adiciona o header
	include "header-interno.php";

	$cod_obra = $_GET['cod_obra'];

	$obraIndividual_result = mysql_query("SELECT * FROM obras WHERE obras.cod_obra = $cod_obra") or die(mysql_error());	

	$row = mysql_fetch_assoc($obraIndividual_result);

?>

	<!-- Conteúdo principal da página -->
	<section class="container cf" role="main">
		<section class="main-experimento">
			<div class="banner-experimento">
				<div class="container-titulo-experimento">
					<h2 data-text="La Plissure du Texte"><?php echo $row['nome']; ?></h2>
				</div>
				<img src="k2.jpg" alt="">
			</div>

			<div class="box-texto-corner"><?php echo $row['texto']; ?>
			</div>
		</section>

		<aside class="aside-experimento">
			<?php 	

				$obrasArtista_result = mysql_query("SELECT autor.cod_autor, autor.nome FROM autor INNER JOIN autor_x_obras ON autor_x_obras.cod_autor = autor.cod_autor WHERE autor_x_obras.cod_obra = $cod_obra") or die(mysql_error());
				$row = mysql_fetch_assoc($obrasArtista_result);

				?>
			<div class="info-autor">
				<a href="artista-individual.php?cod_autor=<?php echo $row['cod_autor'] ?>"><img src="k1.jpg" alt=""></a>
				<a href="artista-individual.php?cod_autor=<?php echo $row['cod_autor'] ?>"><h3><?php echo $row['nome']; ?></h3></a>
			</div>
		
			<div class="galeria-experimento">
				<h3>Galeria</h3>

				<a href="#" class="wrap-img">
					<img src="k2.jpg">		
				</a>
				<a href="#" class="wrap-img">
					<img src="k1.jpg">		
				</a>
				<a href="#" class="wrap-img">
					<img src="k2.jpg">		
				</a>
			</div>

		</aside>
	</section>

</body>
</html>

