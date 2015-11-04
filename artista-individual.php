<?php
	include "header-interno.php";

	$cod_autor = $_GET['cod_autor'];

	$artistaIndividual_result = mysql_query("SELECT * FROM autor WHERE autor.cod_autor = $cod_autor") or die(mysql_error());
	$row = mysql_fetch_array($artistaIndividual_result);

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
					Roy Ascott was born in Bath, England. He was educated at the City of Bath Boys' School. His National Service was spent as a commissioned officer in the RAF Fighter Command working with radar defence systems.[1] From 1955-59 he studied Fine Art at King's College, University of Durham (now Newcastle University) under Victor Pasmore and Richard Hamilton, and Art History under Lawrence Gowing and Quentin Bell. On graduation he was appointed Studio Demonstrator (1959–61). He then moved to London, where he established the radical Groundcourse at Ealing Art College, which he subsequently established at Ipswich Civic College, in Suffolk. Notable alumni of the Groundcourse include Brian Eno, Pete Townshend, Stephen Willats, Roger Ruskin Spear, and Michael English.			Roy Ascott was born in Bath, England. He was educated at the City of Bath Boys' School. His National Service was spent as a commissioned officer in the RAF Fighter Command working with radar defence systems.[1] From 1955-59 he studied Fine Art at King's College, University of Durham (now Newcastle University) under Victor Pasmore and Richard Hamilton, and Art History under Lawrence Gowing and Quentin Bell. On graduation he was appointed Studio Demonstrator (1959–61). He then moved to London, where he established the radical Groundcourse at Ealing Art College, which he subsequently established at Ipswich Civic College, in Suffolk. Notable alumni of the Groundcourse include Brian Eno, Pete Townshend, Stephen Willats, Roger Ruskin Spear, and Michael English.

				</p>
			</div>
			
			<img class="img-artista-individual" src="k1.jpg" width="300">			
		</article>
		
		<ul class="obras-artista-highlights cf">
				<li class="obras-artista-highlights-item">
					<a href="experimento-individual.html">
						<img src="k2.jpg">
					</a>
					<a href="experimento-individual.html">
						<h3>La PLissure du Text asdasd asdsad asda </h3>
					</a>

					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur odit nulla soluta, molestiae, dignissimos sequi corporis, eaque in quos quaerat temporibus dolorem quo incidunt similique et vero magni unde ratione!</p>
				</li>
				<li class="obras-artista-highlights-item">
					<a href="#">
						<img src="k1.jpg">
					</a>
					<a href="#">
						<h3>La PLissure du Koala</h3>
					</a>

					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur odit nulla soluta, molestiae, dignissimos sequi corporis, eaque in quos quaerat temporibus dolorem quo incidunt similique et vero magni unde ratione!</p>
				</li>
				<li class="obras-artista-highlights-item">
					<a href="#">
						<img src="k2.jpg">
					</a>
					<a href="#">
						<h3>La PLissure du Koala</h3>
					</a>

					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur odit nulla soluta, molestiae, dignissimos sequi corporis, eaque in quos quaerat temporibus dolorem quo incidunt similique et vero magni unde ratione!</p>
				</li>
		</ul>
	</section>

</body>
</html>

