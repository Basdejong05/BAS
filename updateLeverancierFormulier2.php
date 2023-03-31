<!doctype html>
<html>
	<head>
		<title>update leverancier formulier 2</title>
	</head>
	<body>
		<h1>update leverancier formulier 2</h1>
		
		<?php
			require "Leverancier.php";					// nodig om object te maken
			$leverancierid = $_POST["leverancierIdVak"];	// uitlezen vakje van deleteLeverancierForm1 
			$student1 = new Leverancier();				// object aanmaken
			$student1->searchLeverancier($leverancierid);	
			// properties in variabelen zetten
			$naam=$student1->get_name();
			$postcode=$student1->get_postcode();
			$bedrijf=$student1->get_bedrijf();
		?>
		
		<form action="updateLeverancierFormulier3.php" method="post">
			<!-- $leverancierid mag niet meer gewijzigd worden -->
			<br>
            <?php echo $leverancierid ?>
            <input type="hidden" name="leverancierIdVak" value="<?php echo $leverancierid;  ?> "><br>
            <input type="text"   name="naamVak"      value="<?php echo $naam;     ?> "><br/>
            <input type="text"   name="postcodeVak"  value="<?php echo $postcode;  ?> "><br/>
            <input type="text"   name="bedrijfVak" value="<?php echo $bedrijf;  ?> "><br/><br/>
			<input type="submit"><br/><br/>
		</form>

		<a href="leveranciermenu.html">Terug naar het hoofdmenu</a>
	</body>	