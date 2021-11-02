
<?php
// workspace for control output interface and datas
require_once "models/model.php";

setcookie('usernb', getUserNumber()); setcookie('maxid', getmaxid());


function listTeams($lines){

    while($line = $lines->fetch()) {
        
        $id = $line['id'];
        $user_image = $line['user_github_pic'];
        $user_point = $line['points']; 
        $name = $line['nom'].' '.$line['prenom'];
        require 'views/profile.php';
    }
    $lines->closeCursor();
}





