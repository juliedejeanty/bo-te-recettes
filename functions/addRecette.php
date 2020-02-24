<?php
require("database.php");
session_start();
$pseudo = $_SESSION["pseudo"];

// lancement de la requête
$req = $db->prepare("INSERT INTO users (pseudo, recette, ingrédients, étapes) VALUES(:pseudo, :message)");
// bindparam
$req->bindParam(":pseudo" , $_SESSION["pseudo"]);   
$req->bindParam(":message" , $_POST["message"]);  

// execute
$req->execute();
