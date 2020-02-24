<?php
session_start();

// on se connecte à notre base
require("database.php");

var_dump($_POST["recette"]);
var_dump($_POST["ingredients"]);
var_dump($_POST["etapes"]);
var_dump($_POST["image"]);

// lancement de la requête
$req = $db->prepare("INSERT INTO users (pseudo, recette, ingredients, etapes, image) VALUES(:pseudo, :recette, :ingredients, :etapes, :image)");

// bindparam
$req->bindParam(":pseudo" , $_SESSION["pseudo"]);   
$req->bindParam(":recette" , $_POST["recette"]);  
$req->bindParam(":ingredients" , $_POST["ingredients"]);  
$req->bindParam(":etapes" , $_POST["etapes"]);  
$req->bindParam(":image" , $_POST["image"]);  


// execute
$req->execute(array("pseudo"=>$_SESSION["pseudo"],"recette"=>$_POST["recette"],"ingredients"=>$_POST["ingredients"],"etapes"=>$_POST["etapes"],"image"=>$_POST["image"] )); 

$pseudo = $_SESSION["pseudo"];

header("location:../recette.php?pseudo=$pseudo");

