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

function readindb(){
    $c = dbconnect();
    $r = $c->query('SELECT nom, prenom, user_github_pic FROM membres');
    return $r;
}


function save(string $id, string $motif, $string $type){
    /**
     * $type can take only value app(for append) or sub(as substract)
     */
    echo "not finish";
}




