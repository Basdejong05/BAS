<!doctype html>
<html>
	<head>
		<title>create leverancier formulier 2</title>
	</head>
	<body>
		<h1>create leverancier formulier 2</h1>

		<?php
			require "Leverancier.php";
			
			// uitlezen vakjes van createLeverancierForm1 -----
			$naam=$_POST["naamvak"];
			$contact=$_POST["contactvak"];
			$email=$_POST["emailvak"];
			$adres=$_POST["adresvak"];
			$postcode=$_POST["postcodevak"];
			$woonplaats=$_POST["woonplaatsvak"];

			// maken object -------------------------------
			$student1 = new Leverancier($naam, $contact ,$email, $postcode, $adres, $woonplaats);
            $student1->createLeverancier();

			// afdrukken object ---------------------------
		
			echo "<br/><br/>";
			echo $student1->afdrukken();
		?> 	
		<br>
		<a href="leveranciermenu.html">Terug naar het hoofdmenu</a>
	</body>
</html>
