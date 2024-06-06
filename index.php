<?php
//gronico.xyz/canards     => gronico.xyz/index.php?demande=canards   
//besoin d'un htaccess

//gronico.xyz/canards/:categorie (Piscivore, Forestier...)
//gronico.xyz/canard/:id (6,7)

require_once("./api.php");

try{

    if(!empty($_GET['demande'])){
        $url = explode('/', filter_var($_GET['demande'], FILTER_SANITIZE_URL));
        switch($url[0]){
            case "canards": 
                if(empty($url[1])) {
                    getCanards();
                }
                else {
                    getCanardsByCategorie($url[1]);
                }
            break;


            case "canard":
                if(!empty($url[1])){
                    getCanardById($url[1]);
                }
                else {
                    throw new Exception ('error url vide de canard by id');
                }
               
            break;


            default : throw new Exception ('Demande Invalide');
        }


    } else {
        throw new Exception ('Problème de récupération de données.');
    }
} catch(Exception $e) {
    $erreur = [
        "message" => $e->getMessage(),
        "code" => $e->getCode()
    ];
    print_r($erreur);
}