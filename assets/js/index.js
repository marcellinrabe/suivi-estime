 
 function send_data(id, donnees){
    // envoie de donnée javascript à php 
    // transformation en requete ajax suivant jquery
      $.ajax({
          url: "index.php?action=update",
          method: "POST",
          data: donnees
      })
      .done(function(response){
          $("#rank"+id).text("estime : "+response);

      })
      
      .fail(function(error) {
          console.log(error);
      });
  }
  
 
 
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

        $("#validation"+id).on("click", function(event){
            event.preventDefault();
        
            send_data(id, {
                "motif": $("#motif_updatePoint"+id).val(),
                "option": option+id
            }); 
        });

    })

    .fail(function(error){
        console.log("error "+JSON.stringify(error));
    });

 }


get_id();



    

    




 


  


  

  







