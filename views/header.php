
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

    <script> 
        let frames = [];
        let afterClick = [];
        option = null;
        class Frame{
                constructor(id){
                    this.id = id;
                    this.div_toValid = document.getElementById("div_toValid"+this.id);
                    console.log(this.div_toValid);
                    this.button_appendPoint = document.getElementById("button_appendPoint"+this.id);
                    this.button_substractPoint = document.getElementById("button_substractPoint"+this.id);
                    
                    this.button_appendPoint.addEventListener("click", () => {
                        if(getComputedStyle(this.div_toValid).display != "none"){
                            this.div_toValid.style.display = "none";
                
                        }
                        else{
                            this.div_toValid.style.display = "block";
                        } 
                    });  
                
                
                    this.button_substractPoint.addEventListener("click", () => {
                        if(getComputedStyle(this.div_toValid).display != "none"){
                            this.div_toValid.style.display = "none";
      
                        }
                        else{
                            this.div_toValid.style.display = "block";
                        } 
                    });  
                }
        }
    </script>
</head>
<body>
    
