 // conteneur des objets utilisateurs affichés dans la page

 
 
 function get_last_id(id){


    $.ajax({
        url:"index.php?action=get_last_id",
        method:"GET"
    })

    .done(function(response){

        let last_id = parseInt(response);
        
        if(id == last_id){
            console.log("comparaison succes");
            for(cpt=0; cpt < last_id; cpt++){  
            /**
            * la variable i est juste ici un compteur
            * instanciation de chaque objet Frame qui fait reference à l'affichage de chaque membre
            * executer une seule fois et à la derniere instanciation des membres
            */
                if( cpt != 23){
                    frames.push(new Frame(cpt + 1));
                }
            }
        }
    })

    .fail(function(error){
        console.log("error "+JSON.stringify(error));
    });

 }

 function get_id(){

    $.ajax({
        url:"index.php?action=get_id&index="+incr(),
        method:"GET",
    })

    .done(function(response){
        let id = parseInt(response);
        get_last_id(id);
    })

    .fail(function(error){
        console.log("error "+JSON.stringify(error));
    });

 }

// if cpt = last_id
get_id();

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

function apply_update(){
    /**
     * regex sur option qui doit être soit append ou substract
     * annulation du comportement par defaut de 
     */
    
    button_update = $("#validation"); 
    motif =_$("#motif_updatePoint"); 

    $("#validation").on("click", function(event){
        event.preventDefault();

        sendData({
            "motif": motif,
            "option": option
        });

    });

    
}



 


  


  

  







