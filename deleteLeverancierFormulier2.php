<!doctype html>
<html>
	<head>
		<title>delete leverancier formulier 2</title>
	</head>
	<body>
		<h1>delete leverancier formulier 2</h1>
		
		<?php
			require "Leverancier.php";					// nodig om object te maken
			$leverancierid = $_POST["leverancierIdVak"];	// uitlezen vakje van deleteLeverancierForm1 
			$student1 = new Leverancier();				// object aanmaken
			$student1->searchLeverancier($leverancierid);
		?>
		
		<form action="deleteLeverancierFormulier3.php" method="post">
			<!-- $leverancierid mag niet meer gewijzigd worden -->
			<input type="hidden" name="leverancierIdVak" value=" <?php echo $leverancierid ?> ">
			<!-- 2x verwijderBox om nee of ja door te kunnen geven -->
			<input type="hidden" 	name="verwijderBox" value="nee">			
			<input type="checkbox" 	name="verwijderBox" value="ja">
			<label for="verwijderBox"> Verwijder deze leverancier.</label><br/><br/>
			<input type="submit"><br/><br/>
		</form>

		<a href="leveranciermenu.php">Terug naar het hoofdmenu</a>
	</body>	