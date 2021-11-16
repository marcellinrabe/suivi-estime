<?php
    
    require_once 'controllers/controller.php';
    
    $action = htmlspecialchars($_GET['action']);
    $index = htmlspecialchars($_GET['index']);
    

    if((!empty($action)) && $action=="update"){
        update();
    }
    elseif(!empty($action) && $action == "get_last_id"){
        get_last_id();
    }
    elseif(!empty($action) && $action == "get_id"){
        get_id($index);
    }
    else{ 
        home();
    
    }
    



    

    

    

    
    
    
