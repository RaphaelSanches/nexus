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
			<div class="banner-experimento img-container--medium bottom-0">
				<div class="container-titulo-experimento">
					<h2><?php echo $row['nome']; ?></h2>
				</div>

				<img src="assets/img/content/experimentos/<?php echo $row['nome'] ?>/<?php echo $row['img_url'] ?>" alt="">
			</div>
			
			<h3 class="info-artista-individual text-left">//Quando: <span><?php echo $row['data'] ?></span></h3>
			<h3 class="info-artista-individual text-left">//Onde: <span><?php echo $row['local'] ?></span></h3>
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
				<a href="artista-individual.php?cod_autor=<?php echo $row2['cod_autor'] ?>">
					<div class="img-container--medium glitch">
						<img src="assets/img/content/autor/<?php echo $row2['img_url'] ?>" alt="">
					</div>	
				</a>
				<a href="artista-individual.php?cod_autor=<?php echo $row2['cod_autor'] ?>	"><h3><?php echo $row2['nome']; ?></h3></a>
			</div>
		
			<div class="galeria-experimento">
				<h3>Galeria</h3>
				<?php  
					$img_result = mysql_query("SELECT img.img_url, img.cod_obra, img.destaque FROM img WHERE img.cod_obra = $cod_obra AND destaque = 0") or die(mysql_error());;

					//quantidade de registros
					$registros = mysql_num_rows($img_result);

					if($registros >= 1){
						while($row3 = mysql_fetch_assoc($img_result)) {
				?>
				<a href="assets/img/content/experimentos/<?php echo $row['nome'] ?>/<?php echo $row3['img_url'] ?>" class="wrap-img" rel="example_group">
					<img src="assets/img/content/experimentos/<?php echo $row['nome'] ?>/<?php echo $row3['img_url'] ?>">
				</a>

				<?php 
						}
					}

				else { 
					echo "<h2 class='version-text'><strong>ERROR 404</strong></h2>Infelizmente, não possuímos mais imagens dessa obra.";
				}
				?>
			</div>

		</aside>
	</section>

</body>
</html>

