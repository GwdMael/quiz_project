<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Dynamique</title>
    <link rel="stylesheet" href="./css/style.css">
</head>

<body>

    <div id="quiz-container">

        <h2 id="question">Question ici</h2> <!-- Question actuelle -->
        <div id="choices">

            <button class="choice">Réponse 1</button>
            <button class="choice">Réponse 2</button>
            <button class="choice">Réponse 3</button>
            <button class="choice">Réponse 4</button>

        </div>

        <button id="next">Suivant</button> <!-- Passage à la question suivante -->
        <p id="timer">Temps restant: 30s</p> <!-- Affichage compte à rebours -->

    </div>

    <form action="save_score.php" method="POST" id="scoreForm">
        <input type="hidden" name="score" id="scoreInput" value="">
        <button type="submit">Sauvegarder le score</button>
    </form>

    <script src="./js/script.js"></script> <!-- Liaison du script -->
    
</body>
</html>

<?php
// Connexion base de données
include('php/connexion.php');
?>