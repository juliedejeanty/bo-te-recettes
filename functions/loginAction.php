<?php
require("database.php");

if( empty($_POST["pseudo"])){
    $message = "Vous devez remplir un pseudo";
    header("Location: ../index.php?message=$message");
}

if( !empty($_POST["pseudo"])){
    $req = $db->prepare("SELECT * FROM users WHERE pseudo = :pseudo");
    $req->bindParam(":pseudo", $_POST["pseudo"]);
    $req->execute();

    $result = $req->fetch(PDO::FETCH_ASSOC);
    if($result == false){
        $message = "Le compte n'existe pas";
        header("Location: ../index.php?message=$message");
    }else{
        session_start();
        $pseudo =  $_POST["pseudo"];
        header("Location: ../recette.php?pseudo=$pseudo");
    }
}