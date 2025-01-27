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
('Comment déclarer une variable globale en PHP?', 'global', '$GLOBALS', '$global', 'var', 1),
('Quelle est la méthode pour ajouter un élément à un tableau en JavaScript?', 'pop()', 'unshift()', 'concat()', 'push()', 3),
('Quel est l’opérateur pour obtenir le reste d’une division en PHP?', '*', '/', '%', '//', 2),
('Quel est le résultat de l’expression "5" + 5 en JavaScript?', 'NaN', '55', 'Error', '10', 1),
('Que fait la méthode setTimeout() en JavaScript?', 'Réinitialise une variable', 'Arrête l\exécution du script', 'Exécute une fonction après un délai', 'Exécute une fonction immédiatement', 2),
('Comment définir une constante en PHP?', 'define()', 'set_constant()', 'const', 'constant()', 2),
('Quel est le but de la méthode Array.map() en JavaScript?', 'Filtrer les éléments d’un tableau', 'Ajouter un élément au début d’un tableau', 'Supprimer un élément d’un tableau', 'Appliquer une fonction à chaque élément d’un tableau', 3),
('Quelle méthode permet de vérifier si une variable est un tableau en PHP?', 'array_check()', 'is_array()', 'is_table()', 'check_array()', 1),
('Quelle est la valeur de la variable $a après l’exécution de ce code : $a = 10; $a += 5;', '10', '25', '15', '5', 2),
('Quelle est la méthode pour envoyer une requête HTTP en JavaScript?', 'httpRequest()', 'get()', 'send()', 'fetch()', 3),
('Comment déclarer une fonction en JavaScript?', 'maFonction() function', 'create function maFonction()', 'declare function maFonction()', 'function maFonction()', 3),
('Comment créer un tableau associatif en PHP?', '$tableau[] = valeur;', '$tableau = array();', 'array(key => valeur);', '$tableau[key] = valeur;', 3),
('Quel est l’opérateur de comparaison strict en JavaScript?', '!==', '===', '==', '<>', 0),
('Que fait la méthode document.getElementById() en JavaScript?', 'Retourne un élément par son identifiant', 'Retourne tous les éléments', 'Retourne un élément par sa classe', 'Ajoute un élément à la page', 0),
('Comment déclarer un tableau vide en PHP?', '$tableau = new Array();', '$tableau = [];', '$tableau = array();', '$tableau = empty();', 1);


CREATE TABLE scores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    score INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);