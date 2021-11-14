 // conteneur des objets utilisateurs affichés dans la page

function sendData(data){
  // envoie de donnée javascript à php 

    let XHR = new XMLHttpRequest(), FD  = new FormData(), name;
      
    for (name in data){
        FD.append(name, data[name]);
    }
  
    XHR.addEventListener('load', function(event){
        console.log('AJAX success');
        console.log(XHR.responseText);
    });
    
    XHR.addEventListener('error', function(event) {
        console.log('AJAX failure');
    });
  
    XHR.open('POST','index.php?action=update');
    XHR.send(FD);
}




for(i=0; i<last_id-1; i++){  
/**
 * la variable i est juste ici un compteur
 * instanciation de chaque objet Frame qui fait reference à l'affichage de chaque membre
 */

    if(i!=23){
        frames.push(new Frame(i+1));
    }
}



function apply_update(){
    /**
     * regex sur option qui doit être soit append ou substract
     * annulation du comportement par defaut de 
     */
    

    button_update = document.getElementById("validation");
    motif = document.getElementById("motif_updatePoint").value;
    
    console.log(option);

    let afterClick = button_update.addEventListener("click", (event) => {
        event.preventDefault();

        sendData({
            "motif":motif,
            "option":option,
        });

    });

    
}



 


  


  

  







