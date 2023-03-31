<!doctype html>
<html>
	<head>
		<title>update leverancier formulier 2</title>
	</head>
	<body>
		<h1>update leverancier formulier 2</h1>
		
		<?php
			require "Leverancier.php";					// nodig om object te maken
			$levid = $_POST["leverancierIdVak"];	// uitlezen vakje van deleteLeverancierForm1 
			$leverancier1 = new Leverancier();				// object aanmaken
			$leverancier1->searchLeverancier($levid);	
			// properties in variabelen zetten
			$naam=$leverancier1->get_name();
			$postcode=$leverancier1->get_postcode();
			$adres=$leverancier1->get_adres();
			$woonplaats=$leverancier1->get_woonplaats();
			$email=$leverancier1->get_email();
			$contact=$leverancier1->get_contact();
		?>
		
		<form action="updateLeverancierFormulier3.php" method="post">
			<!-- $levid mag niet meer gewijzigd worden -->
			<br>
            <?php echo $levid ?>
            <input type="hidden" name="leverancierIdVak" value="<?php echo $levid;  ?> "><br>
            <input type="text"   name="levnaamVak"      value="<?php echo $naam;     ?> "><br/>
            <input type="text"   name="levcontactVak"  value="<?php echo $contact;  ?> "><br/>
			<input type="text"   name="levemailVak"  value="<?php echo $email;  ?> "><br/>
            <input type="text"   name="levadresVak"      value="<?php echo $adres;     ?> "><br/>
            <input type="text"   name="levpostcodeVak"  value="<?php echo $postcode;  ?> "><br/>
            <input type="text"   name="levwoonplaatsVak" value="<?php echo $woonplaats;  ?> "><br/><br/>
			<input type="submit"><br/><br/>
		</form>

		<a href="leveranciermenu.html">Terug naar het hoofdmenu</a>
	</body>	