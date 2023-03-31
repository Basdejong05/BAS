<!doctype html>
<html>
	<head>
		<title>delete leverancier formulier 3</title>
	</head>
	<body>
		<h1>delete leverancier formulier 3</h1>
		
		<?php
			require "Leverancier.php";

		    $leverancierid = $_POST["leverancierIdVak"];
			$verwijderen = $_POST["verwijderBox"];
			
			if ($verwijderen=="ja")
			{
				echo "De student is verwijderd <br/>";
				$student1 =  new Leverancier();
				$student1->deleteLeverancier($leverancierid);
			}
			else
			{
				echo "De student is niet verwijderd <br/>";
			}
		?>
		<a href="leveranciermenu.html">Terug naar het hoofdmenu</a>
	</body>
</html>
