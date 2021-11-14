<?php

class Connect{
    // Essaie d'établir une connexion à la base de données Iteams
     
    protected function dbconnect(){
        try{
            $connection = new PDO('mysql:host=127.0.0.1;dbname=ITEAMS','root','');
            return $connection;
            
        }
        catch(PDOException $exception){
            echo "Erreur: ".$exception->getMessage();
        }
    }
}

class Request extends Connect{
// objet Query et ses méthodes sont tous les requetes liés à la base de données ITEAMS
 
    
    public function get_datas_team(){
        try{ 
            $connection = $this->dbconnect();
            $request = $connection->query('SELECT m.id, m.nom, m.prenom, m.user_github_pic, e.point FROM membre AS m JOIN estime AS e on m.id = e.id_membre ORDER BY m.id;');
            $result = $request->fetchAll(); 
            return $result;
        }
        catch(Exception $exception){
            echo "Erreur : ".$exception->getMessage();
        } 
    }


    public function get_teams_count(){
    // renvoie le total des effectifs des membres
         
        try{
            $connection = $this->dbconnect();
            $request = $connection->query('SELECT COUNT(id) AS teams_count FROM membre;');
            $result = $request->fetch();
            return $result['teams_count'];
        }
        catch(Exception $exception){
            echo "Erreur : ".$exception->getMessage();
        }
    }


    public function get_last_id(){
    // renvoie la derniere id des membres dans la base
         
        try{
            $connection = $this->dbconnect();
            $request = $connection->prepare('SELECT id as max_id FROM membre ORDER BY id DESC LIMIT 1; ');
            $request->execute();
            $request = $request->fetch();
            return $request['max_id'];
        }
        catch(Exception $exception){
            echo "Erreur : ".$exception.getMessage();
        }
    }
    
    

    public function updatePoint($option, $motif){
        /**
         * ajoute ou supprime un point d'un membre
         * @param option est le type de modification (ajout ou suppression de point)
         */

        
        if(preg_match('/[as]/', $option)):
            // on verifie que la variable option est soit a(append) ou s(substract)
            global $point;
            global $id;

            $connection = dbconnect();
    
            // $option sera 1 ou -1 selon que l'admin a cliquer sur le bouton append ou sub
            if($option == 'a'){
                $option = 1;
            }
            elseif($option == 's'){
                $option = -1;
            }

            $request = $connection->prepare("UPDATE estime AS e SET e.motif= :motif, e.point= :newPoint WHERE e.id_membre= :id");
            $request->execute(array(
                'motif' => $_POST['motif_updatePoint'],
                'newPoint' => $point+$option,
                'id' => $id));
        endif;
    } 


    

}






