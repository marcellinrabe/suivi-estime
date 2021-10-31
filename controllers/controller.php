
<?php

require_once "models/model.php";

// workspace for control output interface and datas
function fetchbd(){
    $lines= fetchteams();
    return $lines;
}


function showteams($lines){
    while($line = $lines->fetch() ){
        $user_image = $line['user_github_pic'];
        $name = $line['nom'].' '.$line['prenom'];
        require 'views/profile.php';
    }
} 





