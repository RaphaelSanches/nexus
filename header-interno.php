<!DOCTYPE html>
<html lang="pt-br">
<head>
	<link rel="stylesheet" type="text/css" href="assets/css/normalize.css">
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<script type="text/javascript"src="assets/js/script-min.js"></script>
	<?php
		include "config.php";
		// linha que estabelece a conexão
		$connection = mysql_connect($database['server'], $database['login'], $database['senha']);
		mysql_set_charset('UTF8', $connection);

		//seleciona o banco de dados através da conexão
		$select_db = mysql_select_db($database['database_name'], $connection) or die(mysql_error());
	?>

	<title><?php echo $titlePage ?> - Nexus</title>

</head>
<body>
	<div class="load-overlay"></div>

	<!-- header da página -->
	<header class="header header-interno" role="banner">
		<div class="container cf">
			<!-- logo -->
			<a href="index.php" title="Nexus - Arte telemática">
				<svg class="logo" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="230px" height="50px" viewBox="0 0 725 187" enable-background="new 0 0 725 187" xml:space="preserve"> <polygon fill="#353535" points="233.905,112.635 281.504,112.635 281.504,80.835 233.905,80.835 233.905,61.035 285.704,61.035 285.704,29.035 198.305,29.035 198.305,169.033 287.504,169.033 287.504,137.234 233.905,137.234 "/> <polygon fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="233.905,112.635 281.504,112.635 281.504,80.835 233.905,80.835 233.905,61.035 285.704,61.035 285.704,29.035 198.305,29.035 198.305,169.033 287.504,169.033 287.504,137.234 233.905,137.234 "/> <g> <defs> <rect id="SVGID_1_" x="-121" y="-394" width="1000" height="1000"/> </defs> <clipPath id="SVGID_2_"> <use xlink:href="#SVGID_1_" overflow="visible"/> </clipPath> <path clip-path="url(#SVGID_2_)" fill="#353535" d="M528.3,121.834c0,11.4-10.8,17-21.199,17c-10.4,0-21.399-5.6-21.399-17V29.035 h-34.2v93.399c0,30.799,27,48.599,55.6,48.599c28.8,0,55.799-17.8,55.799-48.599V29.035h-34.6V121.834z"/> <path clip-path="url(#SVGID_2_)" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" d="M528.3,121.834c0,11.4-10.8,17-21.199,17 c-10.4,0-21.399-5.6-21.399-17V29.035h-34.2v93.399c0,30.799,27,48.599,55.6,48.599c28.8,0,55.799-17.8,55.799-48.599V29.035h-34.6 V121.834z"/> <path clip-path="url(#SVGID_2_)" fill="#353535" d="M645.697,85.834c-12.6-1.4-23-3.6-22.2-14.2c1.2-16.599,38.8-18.199,38.8,0.4 h33.999c0.801-60.399-107.998-60.399-106.798,0c0.399,30.4,20.399,40.799,50.799,43c14,0.8,25.6,2.4,25.6,12.2 c0,16.399-43.799,16.8-43.799-1h-34.6c-0.8,61.6,113.198,59.999,113.198,1.199C700.696,92.435,673.497,88.834,645.697,85.834"/> <path clip-path="url(#SVGID_2_)" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" d="M645.697,85.834 c-12.6-1.4-23-3.6-22.2-14.2c1.2-16.599,38.8-18.199,38.8,0.4h33.999c0.801-60.399-107.998-60.399-106.798,0 c0.399,30.4,20.399,40.799,50.799,43c14,0.8,25.6,2.4,25.6,12.2c0,16.399-43.799,16.8-43.799-1h-34.6 c-0.8,61.6,113.198,59.999,113.198,1.199C700.696,92.435,673.497,88.834,645.697,85.834z"/> <path clip-path="url(#SVGID_2_)" fill="#FFFFFF" d="M365.086,62.128l-0.003-0.006L365.086,62.128z"/> <polygon clip-path="url(#SVGID_2_)" fill="#D80000" points="390.503,29.035 427.502,29.035 427.502,34.435 341.503,169.033 302.904,169.033 302.904,163.634 	"/> <polygon clip-path="url(#SVGID_2_)" fill="#353535" points="365.094,60.058 344.904,29.035 307.705,29.035 307.705,34.436 344.438,91.795 	"/> <polygon clip-path="url(#SVGID_2_)" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="365.094,60.058 344.904,29.035 307.705,29.035 307.705,34.436 344.438,91.795 	"/> <polygon clip-path="url(#SVGID_2_)" fill="#353535" points="370.384,132.31 393.902,169.033 432.502,169.033 432.502,163.635 391.058,99.953 	"/> <polygon clip-path="url(#SVGID_2_)" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="370.384,132.31 393.902,169.033 432.502,169.033 432.502,163.635 391.058,99.953 	"/> <polygon clip-path="url(#SVGID_2_)" fill="#D80000" points="76.184,29.035 38.985,29.035 38.985,34.435 125.183,169.033 163.783,169.033 163.783,163.634 	"/> <polygon clip-path="url(#SVGID_2_)" fill="#353535" points="38.985,42.35 38.985,169.033 76.187,169.033 76.187,100.441 	"/> <polygon clip-path="url(#SVGID_2_)" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="38.985,42.35 38.985,169.033 76.187,169.033 76.187,100.441 	"/> <polygon clip-path="url(#SVGID_2_)" fill="#353535" points="163.781,155.98 163.781,29.036 125.149,29.036 125.149,96.622 	"/> <polygon clip-path="url(#SVGID_2_)" fill="none" stroke="#FFFFFF" stroke-miterlimit="10" points="163.781,155.98 163.781,29.036 125.149,29.036 125.149,96.622 "/> </g> </svg>
			</a>
			
			<!-- menu -->
			<nav role="navigation" class="nav-main">
				<ul role="menubar">
					<li class="nav-main-item glitch" role="presentation">
						<a href="index.php" role="menuitem">//home</a>
					</li>
					<li class="nav-main-item glitch" role="presentation">
						<a href="arte-telematica.php" role="menuitem">//arte telemática</a> 
					</li>
					<li class="nav-main-item glitch" role="presentation">
						<a href="artistas.php" role="menuitem">//artistas</a>
					</li>
					<li class="nav-main-item glitch" role="presentation">
						<a href="experimentos.php">//experimentos</a>
					</li>
					<li class="nav-main-item glitch" role="presentation">
						<a href="o-nexus.php" role="menuitem">//o nexus</a>
					</li>
				</ul>
			</nav>

		</div>
	</header>