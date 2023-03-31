<!doctype html>
<html>
    <head>
        <title>Seatch 2</title>
    </head>
    <body>
        <h1>Search 2</h1>
        <?php 
        require "leverancier.php";
        $leverancierid = $_POST["leverancierIdVak"];
        $student1 = new Leverancier();
        $student1->searchLeverancier($leverancierid);
        ?>
        <a href="leveranciermenu.html">Terug naar het hoofdmenu</a>











    </body>
</html>