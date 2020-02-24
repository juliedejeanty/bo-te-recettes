<?php
// on se connecte à notre base
require("database.php");
session_start();
$pseudo = $_SESSION["pseudo"];

    // lancement de la requête
    $req = $db->prepare("DELETE FROM users WHERE id=:id");
    $req->bindParam(":id" , $_GET["id"]);


    // execute
    $req->execute();

    header("location:../recette.php?pseudo=$pseudo");

