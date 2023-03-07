<?php

    $user = 'localhost';
    $pass = 'root';

    $dbh = new PDO('mysql:host=localhost;dbname=bas', $user, $pass);

    try {
        $dbh = new PDO('mysql:host=localhost;dbname=bas', $user, $pass);
        foreach($dbh->query('SELECT * from FOO') as $row) {
            print_r($row);
        }
        $dbh = null;
    } catch (PDOException $e) {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }




