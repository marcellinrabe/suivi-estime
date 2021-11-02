<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/fontawesome/css/all.css">

    <script>
            class Frame{
                constructor(input){
                    this.id = input;
                    this.d = document.getElementById("dn"+this.id);
                    this.ba = document.getElementById("ba"+this.id);
                    this.bs = document.getElementById("bs"+this.id);
                    this.cliquea();
                    this.cliques();
                }
            
                cliquea(){ // click for append
                this.ba.addEventListener("click", () => {
                    if(getComputedStyle(this.d).display != "none"){
                      this.d.style.display = "none";
                
                    } else {
                      this.d.style.display = "block";
                    }
                  })  
                }
                cliques(){ // click for substract
                  this.bs.addEventListener("click", () => {
                    if(getComputedStyle(this.d).display != "none"){
                      this.d.style.display = "none";
      
                    } else {
                      this.d.style.display = "block";
                    }
                  })
                }

            }
    </script>

    <title>test iteams</title>
</head>
<body>
    
