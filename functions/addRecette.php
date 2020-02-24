<?php
require("database.php");
session_start();
var_dump($_POST["recette"]);
var_dump($_POST["ingredients"]);
var_dump($_POST["étapes"]);
var_dump($_POST["image"]);


// lancement de la requête
$req = $db->prepare("INSERT INTO users (pseudo, recette, ingredients, étapes, image) VALUES(:pseudo, :recette, :ingredients, :étapes, :image)");

// bindparam
$req->bindParam(":pseudo" , $_SESSION["pseudo"]);   
$req->bindParam(":recette" , $_POST["recette"]);  
$req->bindParam(":ingredients" , $_POST["ingredients"]);  
$req->bindParam(":étapes" , $_POST["étapes"]);  
$req->bindParam(":image" , $_POST["image"]);  


// execute
$req->execute();

//header("location:../recette.php?pseudo=$pseudo");

