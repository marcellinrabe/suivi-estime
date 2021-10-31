<?php

#connexion à la base test_iteams
function dbconnect(){
    try{
        $c = new PDO('mysql:host=127.0.0.1;dbname=test_iteams','root','');
        echo 'connexion etablie';
    }

    catch(PDOException $e){
        echo "Erreur: ".$e->getMessage();
    }
}


