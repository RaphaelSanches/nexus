<?php
	$titlePage = 'Artistassada';
	include "header-interno.php";


	//Guarda os resultados em uma variável
	$artistas_result = mysql_query("SELECT autor.cod_autor, autor.nome, autor.local_nasc, autor.data_nasc FROM autor ") or die(mysql_error());
	//define o título da página
?>

	<!-- Conteúdo principal da página -->
	<section class="container cf" role="main">
		<h2 class="page-title">Artistas</h2>

		<ul class="artistas-list cf">	
			<?php
				//Fetch_array se torna falso quando não houver mais linhas 
				while($row = mysql_fetch_array($artistas_result)) { 
				?>
						<li class="artistas-list-item">
							<a href="artista-individual.php?cod_autor=<?php echo $row['cod_autor'] ?>"><img src="k1.jpg" alt=""></a>
							<a href="artista-individual.php?cod_autor=<?php echo $row['cod_autor'] ?>"><h3><?php echo $row['nome'] ?></h3></a>
							<div class="info-list-item">
								<p>// <?php echo $row['local_nasc'] ?></p>
								<p>//
									<?php 
										//Converte o formato da data
										echo date('d/m/Y',  strtotime($row['data_nasc']));
									?>
								</p>
							</div>
						</li>
			<?php }	?>
		</ul>
	</section>

</body>
</html>

