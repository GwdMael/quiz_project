<?php
// Ajout connexion base de données
include('connexion.php');

// Récupérer le score depuis le formulaire
$score = $_POST['score'];

// Insertion du score dans la BDD
$stmt = $pdo->prepare("INSERT INTO scores (score) VALUES (:score)");
$stmt->execute(['score' => $score]);

?>