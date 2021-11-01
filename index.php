<?php

    require 'views/header.php'; 
    $user_image = NULL;
    $name = NULL;
    $id = NULL;

    require 'controllers/controller.php';
    listTeams(readindb());

    
    
    
