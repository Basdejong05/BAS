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
		    $leverancierid = $_POST["leverancierIdVak"];
			$naam = $_POST["naamVak"];
            $postcode = $_POST["postcodeVak"];
            $bedrijf = $_POST["bedrijfVak"];
			
            // maken object ---------------------------------------------------
			$student1 = new Leverancier($bedrijf, $naam, $postcode); // maakt object
			$student1->updateLeverancier($leverancierid);		           // vervangt de tabelgegevens voor objectgegevens
            echo "Dit zijn de gewijzigde gegevens: <br/>";
            echo $leverancierid."<br/>";
			$student1->afdrukken();	                       // drukt object af

		?>
		<a href="leveranciermenu.html">Terug naar het hoofdmenu</a>
	</body>
</html>