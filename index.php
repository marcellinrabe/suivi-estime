<?php
    $user_image = NULL;
    $name = NULL;
    require 'controllers/controller.php';
    
    $lines = fetchbd();
    showteams($lines);
    

    

// manage controller