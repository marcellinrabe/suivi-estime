<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <script>
            class Frame{
                constructor(input){
                    this.id = input;
                    this.d = document.getElementById("dn"+this.id);
                    this.b = document.getElementById("ba"+this.id);
                    this.clique();
                }
            
                clique(){
                this.b.addEventListener("click", () => {
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
    
