<?php

		
	//define o título da página
	$titlePage = "Artistas";

	//adiciona o header
	include "header-interno.php";

	$cod_autor = $_GET['cod_autor'];

	$artistaIndividual_result = mysql_query("SELECT * FROM autor WHERE autor.cod_autor = $cod_autor") or die(mysql_error());	

	$row = mysql_fetch_assoc($artistaIndividual_result);


	function limitarTexto($texto, $limite){
		//conta os caracteres
  		$contador = strlen($texto);

  		//limita os caracteres
 		if ( $contador >= $limite ) {    
 		  	//limita os caracteres  
     		$texto = substr($texto, 0, strrpos(substr($texto, 0, $limite), ' ')) . '...';
     		return $texto;
 		 }
  		else{
   		 return $texto;
  		}
	} 
?>

	<!-- Conteúdo principal da página -->
	<section class="container cf" role="main">
		<article class="container cf">
			<div class="wrapper-fl-left">
				<h2 class="nome-artista-individual"><?php echo $row['nome']; ?></h2>
				<h3 class="info-artista-individual">
					Cidade: <span><?php echo $row['local_nasc']; ?></span></h3>
				<h3 class="info-artista-individual">
					Nascimento: <span><?php echo $row['data_nasc']; ?></span>
				</h3>
				<p class="box-texto-corner">
					<?php echo $row['texto']; ?>
				</p>
			</div>
			
			<img class="img-artista-individual" src="assets/img/content/autor/<?php echo $row['img_url'] ?>" width="300">
		</article			

		<ul class="obras-artista-highlights cf">
			<h2 class="page-title">Obras do Artista</h2>

			<?php 	

				$obrasArtista_result = mysql_query("SELECT obras.cod_obra, obras.nome, obras.destaque, obras.texto, img.img_url, img.cod_obra, img.destaque 
					FROM obras 
						INNER JOIN autor_x_obras ON autor_x_obras.cod_obra = obras.cod_obra
						RIGHT JOIN img ON img.cod_obra = obras.cod_obra 
					WHERE autor_x_obras.cod_autor = $cod_autor AND img.cod_obra = obras.cod_obra AND img.destaque = 1
					ORDER BY obras.destaque DESC") or die(mysql_error());
				
				//quantidade de registros
				$registros = mysql_num_rows($obrasArtista_result);


				if($registros >= 1){
					while($row = mysql_fetch_assoc($obrasArtista_result)) { 

				?>
				<li class="obras-artista-highlights-item">
					<a href="experimento-individual.php?cod_obra=<?php echo $row['cod_obra'] ?>">
						<img src="assets/img/content/experimentos/<?php echo $row['nome'] ?>/<?php echo $row['img_url'] ?>">
					</a>
					<a href="experimento-individual.php?cod_obra=<?php echo $row['cod_obra'] ?>">
						<h3><?php echo $row['nome']; ?></h3>
					</a>

					<p><?php echo limitarTexto($row['texto'], 300) ?></p>
				</li>
				<?php } 

				}
				else{
					echo "<h2 class='version-text'>ERROR 404<br />Infelizmente, não possuímos obras cadastradas desse artista.</h2>";
				}
				?>
		</ul>
	</section>

</body>
</html>

