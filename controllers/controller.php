
<?php

// workspace for control output interface and datas
function fetchbd(){
    include('models/model.php');
    $lines= fetchteams();
}
fetchbd();

function showteams(){
    foreach($line = $lines->fetch()){
        $user_image = $line['user_github_pic'];
        $name = $line['nom'].' '.$line['prenom'];
        require('views/profile.php');
}
} 
