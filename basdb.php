<?php

    error_reporting(E_ALL);
    ini_set('display_errors', 'on');
    $db = new PDO("mysql:host=localhost;dbname=bas", "root", "root");

    function SQLWithResult($db,$command, $values =[]){
        $query = $db->prepare($command);
        $query->execute($values);
        return $query->fetchAll(PDO::FETCH_ASSOC);

    }

    function SQLWithoutResult($db,$command,$values = []){
        $query = $db->prepare($command);
        $query->execute($values);
}

