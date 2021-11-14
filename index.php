<?php
    
    require_once 'controllers/controller.php';
    
    $action = htmlspecialchars($_GET['action']);
    

    if((!empty($action)) && $action=="update"){
        update();
    }
    else{ 
        home();
    
    }
    



    

    

    

    
    
    
