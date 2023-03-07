<?php
    $servername = 'localhost';
    $dbname= "bas";
    $user = 'root';
    $pass = 'root';

    error_reporting(E_ALL);
    ini_set('display_errors','on');
    //$dbh = new PDO('mysql:host=localhost;dbname=bas', $user, $pass);

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $user, $pass);
        foreach($dbh->query('SELECT * from FOO') as $row) {
            print_r($row);
        }
        $dbh = null;
    } catch (PDOException $e) {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }




