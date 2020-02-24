<?php
require("functions/database.php");
require("functions/header.php");

?> 

<body class="recette"> 
<div class="btn">
    <a class="back" href="index.php">Retour</a>
</div>

<div class="formulaire">
    <h1>Ajouter une recette </h1>

    <form action="functions/addRecette.php" method="post">
    <div>
        <div>
            <p>Titre</p> 
                <input type="text" name="recette" id="recette"></input>
            <p>Étapes</p> 
            <textarea name="étapes" id="étapes" cols="30" rows="10"></textarea>
        </div>

        <div>
            <p>Image</p> 
                <input type="text" name="image" id="image"></input>
            <p>Ingrédients</p> 
                <textarea name="ingrédients" id="ingrédients" cols="30" rows="10"></textarea>
            </div>
            
        </div>
        <input type="submit"></input>
     </form>

</div>
</body>
