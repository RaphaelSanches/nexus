<?php
	$titlePage = 'Artistas';
	include "header-interno.php";


	//Guarda os resultados em uma variável
	$experimentos_result = mysql_query("SELECT obras.nome, obras.cod_obra, img.img_url, img.cod_obra, img.destaque FROM obras RIGHT JOIN img ON img.cod_obra = obras.cod_obra WHERE img.destaque = 1 ") or die(mysql_error());
	//define o título da página
?>

	<!-- Conteúdo principal da página -->
	<section class="container cf" role="main">
		<h2 class="page-title">Experimentos</h2>

		<ul class="artistas-list cf">
 			<?php
				//Fetch_array se torna falso quando não houver mais linhas 
				while($row = mysql_fetch_array($experimentos_result)) { 
				?>
					<a href="experimento-individual.php?cod_obra=<?php echo $row['cod_obra'] ?>" class="experimentos-item">
						<img src="assets/img/content/experimentos/<?php echo $row['nome'] ?>/<?php echo $row['img_url'] ?>">
						<h3 class="experimentos-item__title"><?php echo $row['nome'] ?></h3>
					</a>

			<?php }	?> 
		</ul>
	</section>

</body>
</html>

