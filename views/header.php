
<!DOCTYPE html>
<html lang="en">
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
        function compteur(){
            let cpt = 0;
            return function(){
                return cpt++;
            }
        }

        let frames = [];
        let incr = compteur();
        let afterClick = [];
        option = null;
        class Frame{

            constructor(id){
                this.id = id;
                this.methodes();
            }

            methodes(){

                $("#button_appendPoint"+this.id).on("click", function(event){
                    console.log($("#div_toValid"+this.id));
                }); 

                $("#button_substractPoint"+this.id).on("click", function(event){
                    console.log( $("#div_toValid"+this.id));
                });       
            }
        }
    </script>
</head>
<body>
    <h1 class="grand_titre">Suivi-estime ✔</h1>
    
