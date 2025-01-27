let timer;
let timerLeft = 30; // Durée initiale en secondes
let score = 0;
let questions = [];
let currentQuestionIndex = 0;

function startTimer() {
    timer = setInterval(function() {
        if (timerLeft <= 0) {
            clearInterval(timer); // Arrêt du timer quand il atteint 0
            alert("Temps écoulé !");
            // Passage à la question suivante
            showQuestion();
        } else {
            document.getElementById('timer').innerHTML = "Temps restant: " + timerLeft + "s";
            timerLeft--; // Diminue le temps d'une seconde
        }
    }, 1000) // Timer diminue toutes les secondes
}

function resetTimer() {
    clearInterval(timer);
    timerLeft = 30;
    startTimer();
}

// Fonction récupérer les questions via PHP
function fetchQuestions() {
    fetch('./data/questions.json')
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.json();
    })
    .then(data => {
        questions = data;
        showQuestion();
    })
    .catch(error => console.error("Erreur :", error)); // Gérer les erreurs
}

// Fonction pour afficher une question
function showQuestion() {
    if (currentQuestionIndex >= questions.length) {
        alert("Quiz terminé !");
        saveScore();
        return;
    }

    const questionData = questions[currentQuestionIndex];
    document.getElementById('question').innerText = questionData.question;

    const choices = document.querySelectorAll('.choice');
    choices.forEach((choice, index) => {
        choice.innerText = questionData.choices[index]; // Affiche les choix de réponse
        choice.onclick = () => checkAnswer(index); // Vérifie la réponse quand on clique
    });

    // Stocke l'indice de la réponse correcte
    correctChoiceIndex = questionData.correct;

    // Réinitialise le timer pour la nouvelle question
    resetTimer();
}

// Fonction pour afficher le score
function displayScore() {
    document.getElementById('score').innerText = "Score: " + score;
}

// Fonction pour vérifier la réponse
function checkAnswer(selectedIndex) {
    if (selectedIndex === correctChoiceIndex) {
        alert("Bonne réponse !");
        score += 10; // Ajoute 10 points pour une bonne réponse
    } else {
        alert("Mauvaise réponse !");
    }
    // Affiche le score
    displayScore();
    // Charger une nouvelle question après avoir vérifié la réponse
    currentQuestionIndex++;
    showQuestion();
}

// Fonction pour envoyer le score au serveur
function saveScore() {
    fetch('./save_score.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `score=${score}` // Envoie le score au serveur
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.text();
    })
    .then(data => {
        console.log('Score sauvegardé:', data);
    })
    .catch(error => console.error('Erreur : ', error));
}

// Appelle de la fonction
fetchQuestions();