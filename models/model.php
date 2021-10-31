<?php

// connexion à la base test_iteams
function dbconnect(){
    try{
        $c = new PDO('mysql:host=127.0.0.1;dbname=test_iteams','root','');
        return $c;
    }
    catch(PDOException $e){
        echo "Erreur: ".$e->getMessage();
    }
}

function fetchteams(){
    $c = dbconnect();
    // $q as query
    $q = 'SELECT nom, prenom, user_github_pic FROM membres';
    $r = $c->query($q);
    return $r;
}




