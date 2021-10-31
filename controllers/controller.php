
<?php
// workspace for control output interface and datas
require_once "models/model.php";

function listTeams($lines){
    while($line = $lines->fetch() ){
        $user_image = $line['user_github_pic'];
        $name = $line['nom'].' '.$line['prenom'];
        require 'views/profile.php';
    }
}





