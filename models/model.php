<?php
// connexion à la base test_iteams
function dbconnect(){
    try{
        $c = new PDO('mysql:host=127.0.0.1;dbname=test_iteams','marcellinc','');
        return $c;
    }
    catch(PDOException $e){
        echo "Erreur: ".$e->getMessage();
    }
}


function readindb(){
    $c = dbconnect();
    $r = $c->query('SELECT membres.id, nom, prenom, user_github_pic, points FROM membres JOIN estime on membres.id = estime.id_membre ORDER BY points DESC; ');
    return $r;

}






