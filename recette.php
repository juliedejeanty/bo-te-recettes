<body class="recette">
<?php
require("functions/database.php");
require("functions/header.php");
$pseudo = $_GET["pseudo"];

//var_dump($_GET["pseudo"]);
?>

<div class="btn">
    <a class="back" href="index.php">Retour</a>
    <a class="plus" href="formulaire.php">
        <i class="fas fa-plus-circle"></i>
    </a>
</div>

<?php
// select tout dans la table users à partir de pseudo 
$req = $db->prepare("SELECT * FROM users WHERE pseudo = :pseudo");
$req->bindParam(":pseudo", $_GET["pseudo"]);
$req->execute();

$count = $req->rowCount();

// if pas de résultat  trouvé dans la base de données
if($count === 0){
    ?>
        <div class="center">
        <p class="hello"> <?php echo "Hello " . $pseudo ?> </p> 
        <button class="add">Ajouter une recette</button>        
        </div>
    <?php
}

while($result = $req->fetch(PDO::FETCH_ASSOC) ){
    ?> 
    <div class="miam">
        <div class="gauche">
            <div></div>
            <div></div>
            <?php 
            $result=str_replace(";",'<br />',$result);
            ?> 
            <h1><?php echo $result["recette"];?></h1>
            <h2>Ingrédients</h2>
            <p><?php echo $result["ingredients"]; ?></p> <br>
            <h2>Étapes</h2>
            <p><?php echo $result["etapes"]; ?></p>
            <a href="functions/deleteRecette.php?id=<?php echo $result["id"]?>"> 
                <i class="fas fa-trash"> </i> 
            </a>
            <a href="functions/dupplicateRecette.php?id=<?php echo $result["id"]?>"> 
                <i class="fas fa-copy"></i>
            </a>

        </div>

       
        <div class="droite">
            <img src="<?php echo $result["image"]; ?>" alt=""></img>
        </div>
    </div>
    <?php
}
?>
    </body>
