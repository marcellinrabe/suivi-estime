
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>suivi-estime</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets//css/fontawesome/css/all.css">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/LOGO iteams.png">
    <script src="./assets/js/jquery-3.6.0.min.js"></script>
    <script> 
    // adoption de jquery
        function incrementer(){
            /**
             * renvoie une valeur incrementer à chaque appel de la fonction retour
             * 
             */
            let cpt = 0;
            return function(){
                return cpt++;
            }
        }



        /**
         * @var frames: un tableau contenant la reference de tous les objets Frame instanciés
         * @var inct: un entier suite à l'incrementation par la fonction incrementer()
         * 
         * @var option: chaine qui sera toujours soit "append" ou "substract" et envoyer au serveur au moment 
         * de l'enregistrement d'un modification d'estime, doit être une variable global pour raison de portée
         * 
         */
        let frames = []; 
        let incr = incrementer();
        option = null;


        class Frame{
            
            constructor(id){
                this.id = id;
                
                $("#button_appendPoint"+this.id).on("click", function(event){
                    if($("#div_toValid"+id).css("display") != "none"){
                        $("#avatar"+id).slideDown();
                        $("#div_toValid"+id).slideUp();                        
                    }
                    else{
                        $("#avatar"+id).slideUp();
                        $("#div_toValid"+id).slideDown();                 
                    }
                }); 

                $("#button_substractPoint"+this.id).on("click", function(event){
                    if($("#div_toValid"+id).css("display") != "none"){
                        $("#avatar"+id).slideDown();
                        $("#div_toValid"+id).slideUp();
                    }
                    else{
                        $("#avatar"+id).slideUp();
                        $("#div_toValid"+id).slideDown();   
                    }
                });   
            }
        }
    </script>
</head>
<body>
    <h1 class="grand_titre">Suivi-estime ✔</h1>
    
