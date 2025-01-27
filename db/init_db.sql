drop database if exists quiz;

CREATE DATABASE quiz;

drop table if exists questions;
drop table if exists scores;

CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    choice1 VARCHAR(255) NOT NULL,
    choice2 VARCHAR(255) NOT NULL,
    choice3 VARCHAR(255) NOT NULL,
    choice4 VARCHAR(255) NOT NULL,
    correct INT NOT NULL
);


INSERT INTO questions (question, choice1, choice2, choice3, choice4, correct)
VALUES 
('Comment déclarer une variable globale en PHP?', '$GLOBALS', '$global', 'global', 'var', 1),
('Quelle est la méthode pour ajouter un élément à un tableau en JavaScript?', 'push()', 'pop()', 'unshift()', 'concat()', 1),
('Quel est l’opérateur pour obtenir le reste d’une division en PHP?', '%', '/', '//', '*', 1),
('Quel est le résultat de l’expression "5" + 5 en JavaScript?', '10', '55', 'Error', 'NaN', 2),
('Que fait la méthode setTimeout() en JavaScript?', 'Exécute une fonction après un délai', 'Exécute une fonction immédiatement', 'Arrête l\exécution du script', 'Réinitialise une variable', 1),
('Comment définir une constante en PHP?', 'define()', 'const', 'constant()', 'set_constant()', 1),
('Quel est le but de la méthode Array.map() en JavaScript?', 'Appliquer une fonction à chaque élément d’un tableau', 'Filtrer les éléments d’un tableau', 'Ajouter un élément au début d’un tableau', 'Supprimer un élément d’un tableau', 1),
('Quelle méthode permet de vérifier si une variable est un tableau en PHP?', 'is_array()', 'array_check()', 'is_table()', 'check_array()', 1),
('Quelle est la valeur de la variable $a après l’exécution de ce code : $a = 10; $a += 5;', '10', '15', '5', '25', 2),
('Quelle est la méthode pour envoyer une requête HTTP en JavaScript?', 'fetch()', 'httpRequest()', 'get()', 'send()', 1),
('Comment déclarer une fonction en JavaScript?', 'function maFonction()', 'maFonction() function', 'declare function maFonction()', 'create function maFonction()', 1),
('Comment créer un tableau associatif en PHP?', '$tableau[] = valeur;', '$tableau[key] = valeur;', 'array(key => valeur);', '$tableau = array();', 2),
('Quel est l’opérateur de comparaison strict en JavaScript?', '===', '==', '<>', '!==', 1),
('Que fait la méthode document.getElementById() en JavaScript?', 'Retourne un élément par son identifiant', 'Retourne un élément par sa classe', 'Retourne tous les éléments', 'Ajoute un élément à la page', 1),
('Comment déclarer un tableau vide en PHP?', '$tableau = array();', '$tableau = [];', '$tableau = new Array();', '$tableau = empty();', 1);


CREATE TABLE scores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    score INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);