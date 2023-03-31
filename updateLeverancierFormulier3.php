<!doctype html>
<html>
	
	<head>
		<title>update leverancier formulier 3</title>
	</head>
	<body>
		<h1>update leverancier formulier 3</h1>
		
		<?php
			require "Leverancier.php";

            // gegevens uit de array in variabelen stoppen
		    $levid = $_POST["leverancierIdVak"];
			$naam = $_POST["levnaamVak"];
			$contact = $_POST["levcontactVak"];
			$email = $_POST["levemailVak"];
			$adres = $_POST["levadresVak"];
            $postcode = $_POST["levpostcodeVak"];
            $woonplaats = $_POST["levwoonplaatsVak"];
			
            // maken object ---------------------------------------------------
			$leverancier1 = new Leverancier($naam, $contact, $email , $adres, $postcode , $woonplaats); // maakt object
			$leverancier1->updateLeverancier($levid);		           // vervangt de tabelgegevens voor objectgegevens
            echo "Dit zijn de gewijzigde gegevens: <br/>";
            echo $levid."<br/>";
			$leverancier1->afdrukken();	                       // drukt object af

		?>
		<a href="leveranciermenu.html">Terug naar het hoofdmenu</a>
	</body>
</html>