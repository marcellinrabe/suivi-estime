<?php
require_once "models/model.php";


function home(){
    /**
     * affiche la page principale
     */

    require_once 'views/header.php';
    $request = new Request();
    $datas_team = $request->get_datas_team();
    $last_id = $request->get_last_id();
    $teams_count = $request->get_teams_count();
    
    
    foreach($datas_team as $line){
        $id = $line['id'];
        $user_pic = $line['user_github_pic'];
        $point = $line['point'];
        $name = $line['nom'].' '.$line['prenom'];
        require 'views/profile.php';
    }
}


function update(){ 
    /**
     * @param $_POST['motif_updatePoint'] O.K
     * @param $bouton append/sub ?? O.K par ajax
     */ 

    $request = new Request();
    $request->updatePoint($_POST['option'], $_POST['motif']);
    
}

function get_last_id(){
    $request = new Request();
    $last_id = $request->get_last_id();
    echo $last_id;
}

function get_id(int $index){
/**
 * on veut qu'à chaque de cette fonction, elle fetch un à une l'id dans la base
 */
 
 $request = new Request();
 $datas_team = $request->get_datas_team();
 echo $datas_team[$index]['id'];


}    






