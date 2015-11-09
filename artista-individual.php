<?php

	
	//adiciona o header
	include "header-interno.php";

	$cod_autor = $_GET['cod_autor'];

	$artistaIndividual_result = mysql_query("SELECT * FROM autor WHERE autor.cod_autor = $cod_autor") or die(mysql_error());	

	$row = mysql_fetch_assoc($artistaIndividual_result);

	//define o título da página
	$titlePage = $row['nome'];
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
			
			<img class="img-artista-individual" src="k1.jpg" width="300">			
		</article>
		
		<ul class="obras-artista-highlights cf">
			<?php 	

				$obrasArtista_result = mysql_query("SELECT obras.cod_autor, obras.cod_obra, obras.nome, obras.destaque, obras.texto FROM obras WHERE obras.cod_autor = $cod_autor ORDER BY obras.destaque DESC") or die(mysql_error());
				if($row['cod_autor'] != null){//errado
					echo $row['cod_autor'];
					while($row = mysql_fetch_assoc($obrasArtista_result)) { 
				?>
				<li class="obras-artista-highlights-item">
					<a href="experimento-individual.html">
						<img src="k2.jpg">
					</a>
					<a href="experimento-individual.html">
						<h3><?php echo $row['nome']; ?></h3>
					</a>

					<p><?php echo $row['texto']; ?></p>
				</li>
				<?php } 

				}
				else{
					echo "Nadinha";
				}
				?>


		</ul>
	</section>

</body>
</html>

