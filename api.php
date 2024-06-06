<?php
//const pour definir la racine du site 
define("URL", str_replace("index.php","",(isset($_SERVER['HTTPS'])? "https" : "http").
"://".$_SERVER['HTTP_HOST'].$_SERVER["PHP_SELF"]));


function getCanards(){
    $pdo = getConnexion();
    $req = "SELECT f.id, f.libelle, f.libelle2, f.image, f.alimentation, f.habitat, c.libelle as 'categorie'
    from canards f inner join categorie c on f.categorie_id=c.id";
    $stmt = $pdo->prepare($req);
    $stmt->execute();
    $canards = $stmt->fetchALL(PDO::FETCH_ASSOC);
    for($i=0;$i< count($canards); $i++){
        $canards[$i]['image'] = $canards[$i]['image'];
    }
    $stmt->closeCursor();
    sendJson($canards);
}

function getCanardsByCategorie($categorie){
    $pdo = getConnexion();
    $req = "SELECT f.id, f.libelle, f.libelle2, f.image, f.alimentation, f.habitat, c.libelle as 'categorie'
    from canards f inner join categorie c on f.categorie_id=c.id where c.libelle = :categorie";
    $stmt = $pdo->prepare($req);
    $stmt->bindValue(":categorie", $categorie, PDO::PARAM_STR);
    $stmt->execute();
    $canards = $stmt->fetchALL(PDO::FETCH_ASSOC);
    $stmt->closeCursor();
    sendJson($canards);
}

function getCanardById($id){
    $pdo = getConnexion();
    $req = "SELECT f.id, f.libelle, f.libelle2, f.image, f.alimentation, f.habitat, c.libelle as 'categorie'
    from canards f inner join categorie c on f.categorie_id=c.id 
    where f.id = :id";
    $stmt = $pdo->prepare($req);
    $stmt->bindValue(":id", $id, PDO::PARAM_INT);
    $stmt->execute();
    $canard = $stmt->fetch(PDO::FETCH_ASSOC);
    $canard['image'] = $canard['image'];
    $stmt->closeCursor();
    sendJson($canard);
}

function getConnexion(){
    //à changer quand sous linux
    return new PDO("mysql:host=localhost;dbname=xxxxx;charset=utf8","xxxxx", "xxxxxxx");
}

function sendJSON($infos){
    header('Access-Control-Allow-Origin: *');
    header('Content-Type: application/json');
    echo json_encode($infos,JSON_UNESCAPED_UNICODE);
}

