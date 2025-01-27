<?php 
// Informations de connexion à la base de données
$host = 'localhost';
$db = 'quiz';
$user = 'root';
$pass = '';

try {
    // Connexion
    $pdo = new PDO("mysql:host=$host; dbname=$db; charset=utf8", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Récupérer une question aléatoire
    $stmt = $pdo->query("SELECT * FROM questions ORDER BY RAND() LIMIT 1");
    $question = $stmt -> fetch(PDO::FETCH_ASSOC);
    
    // Préparer la réponse JSON
    $response = [
        'question' => $question['question'],
        'choices' => [
            $question['choice1'],
            $question['choice2'],
            $question['choice3'],
            $question['choice4']
        ],
        'correct' => $question['correct']
    ];

    // Renvoie la question sous forme json
    echo json_encode($response);

} 
catch (PDOException $e) {
    echo "Error :" . $e->getMessage();
}