<body class="recette">

<?php
require("functions/database.php");
require("functions/header.php");
//var_dump($_GET["pseudo"]);
 
$req = $db->prepare("SELECT * FROM users WHERE pseudo = :pseudo");
$req->bindParam(":pseudo", $_GET["pseudo"]);
$req->execute();
?>

<div class="btn">
    <a class="back" href="index.php">Retour</a>
</div>

<?php
// boucle
while ($result = $req->fetch(PDO::FETCH_ASSOC)){
    ?>
    
    <div class="miam">
        <div class="gauche">
            <div></div>
            <div></div>
        <?php 
        $result=str_replace(array("\r\n","\n"),'<br />',$result);
            ?> 
            <h1><?php echo $result["recette"];?></h1>
            <h2>Ingrédients</h2>
            <p><?php echo $result["ingredients"]; ?></p> <br>
            <h2>Étapes</h2>
            <p><?php echo $result["étapes"]; ?></p>
        </div>

       
        <div class="droite">
        <img src="<?php echo $result["image"]; ?>" alt=""></img>

        </div>


    </div>
    <?php
}   
?>
</body>
