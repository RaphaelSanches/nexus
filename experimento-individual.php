<?php

	
	//define o título da página
	$titlePage = "Experimentos";
	//adiciona o header
	include "header-interno.php";

	$cod_obra = $_GET['cod_obra'];

	$obraIndividual_result = mysql_query("SELECT obras.*, img.img_url, img.cod_obra, img.destaque FROM obras RIGHT JOIN img ON img.cod_obra = obras.cod_obra WHERE obras.cod_obra = $cod_obra AND img.destaque = 1") or die(mysql_error());	

	$row = mysql_fetch_assoc($obraIndividual_result);

?>

	<!-- Conteúdo principal da página -->
	<section class="container cf" role="main">
		<section class="main-experimento">
			<div class="banner-experimento">
				<div class="container-titulo-experimento">
					<h2><?php echo $row['nome']; ?></h2>
				</div>
				<img src="assets/img/content/experimentos/<?php echo $row['nome'] ?>/<?php echo $row['img_url'] ?>" alt="">
			</div>
			
			<h3 class="info-artista-individual text-left">//Quando:</h3>
			<h3 class="info-artista-individual text-left">//Onde: <span>São Paulo, Brasil</span></h3>
			<div class="box-texto-corner">
				<?php echo $row['texto']; ?>
			</div>
		</section>

		<aside class="aside-experimento">
			<?php 	

				$obrasArtista_result = mysql_query("SELECT autor.cod_autor, autor.nome, autor.img_url FROM autor INNER JOIN autor_x_obras ON autor_x_obras.cod_autor = autor.cod_autor WHERE autor_x_obras.cod_obra = $cod_obra") or die(mysql_error());
				$row2 = mysql_fetch_assoc($obrasArtista_result);

				?>
			<div class="info-autor">
				<a href="artista-individual.php?cod_autor=<?php echo $row2['cod_autor'] ?>"><img src="assets/img/content/autor/<?php echo $row2['img_url'] ?>" alt=""></a>
				<a href="artista-individual.php?cod_autor=<?php echo $row2['cod_autor'] ?>	"><h3><?php echo $row2['nome']; ?></h3></a>
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

