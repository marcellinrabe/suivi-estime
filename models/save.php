<?php
require_once 'model.php';

function getid(){
    foreach($_COOKIE as $value){
        $i = (int)substr($value, 2, strlen($value)-1) ; 
        return $i;
    }
}
function getmotif(){
    foreach($_POST as $value){
        return $value;
    }
}

function vidercookies(){
    foreach($_COOKIE as $key => $value){
        setcookie($key);
    }
}

function getpush(){
    foreach($_POST as $key => $value){
        if(preg_match('/b[as]/', $key)){
            setcookie('push',$key);
        }
        else{
            updatePoint();
        }
    }
}


function updatePoint(){

    $c = dbconnect();
    // requete pour avoir le nombre de point de l'id
    $i = getid();
    $p = $c->prepare('SELECT points FROM estime WHERE id_membre = :i');
    $p->execute(array('i'=> $i));
    
    $a = preg_match('/ba/', $_COOKIE['push']) ? (int)"1" : (int)"-1";
    $line = $p->fetch();    


    // si l'id membre existe déjà dans la base donc on modifie son point
    // syntaxe: UPDATE TABLE SET COLONNE="VALEUR A JOUR" WHERE PK=1;

    $r = $c->prepare("UPDATE estime SET motif= :m, points= :p WHERE id_membre= :i");
    $r->execute(array(
        'm' => getmotif(),
        'p' => $line['points']+$a,
        'i' => $i));
} 

getpush();

header('Location: ../index.php');


















