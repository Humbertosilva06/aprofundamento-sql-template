-- Active: 1681048382860@@127.0.0.1@3306
-- Conecte o arquivo pratica-aprofundamento-sql.db com a extensão MySQL e ative a conexão aqui

-- Deletar tabela
DROP TABLE pokemons;

-- Criar tabela
CREATE TABLE pokemons (
    id INTEGER PRIMARY KEY UNIQUE NOT NULL,
    name TEXT UNIQUE NOT NULL,
    type TEXT NOT NULL,
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER NOT NULL,
    special_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL
);

-- Popular tabela
INSERT INTO pokemons (
    id,
    name,
    type,
    hp,
    attack,
    defense,
    special_attack,
    special_defense,
    speed
)
VALUES 
    (1, "bulbasaur", "grass", 45, 49, 49, 65, 65, 45),
    (2, "ivysaur", "grass", 60, 62, 63, 80, 80, 60),
    (3, "venusaur", "grass", 80, 82, 83, 100, 100, 80),
    (4, "charmander", "fire", 39, 52, 43, 60, 50, 65),
    (5, "charmeleon", "fire", 58, 64, 58, 80, 65, 80),
    (6, "charizard", "fire", 78, 84, 78, 109, 85, 100),
    (7, "squirtle", "water", 44, 48, 65, 50, 64, 43),
    (8, "wartortle", "water", 59, 63, 80, 65, 80, 58),
    (9, "blastoise", "water", 79, 83, 100, 85, 105, 78);

-- Buscar todos os pokemons
SELECT * FROM pokemons 

-- Práticas

--1.1 pokemons com attack maior que 60--

SELECT * FROM pokemons 
WHERE attack > 60;

--1.2 pokemons com attack ou special_attack maior que 60 --

SELECT * FROM pokemons 
WHERE attack >= 60 
AND special_attack >= 60;

--1.3 pokemons que tenham na coluna name o termo "saur" NO FINAL do texto

SELECT * FROM pokemons
WHERE name  LIKE "%saur";

--2.1 media simples da coluna hp

SELECT AVG(hp) as mediaSimplesHP
FROM pokemons;

--2.2 buscar numero de linhas
SELECT COUNT(*) as totalDeLinhas
FROM pokemons;


--3.1- todos os pokemons baseado na coluna defense em ordem decrescente
SELECT * FROM pokemons
ORDER BY defense DESC;

-- 3.2 todos os pokemons agrupados por type
SELECT COUNT(*), type
FROM pokemons
GROUP BY type;
-- todos os pokemons, resultado limitado a 3 linhas começando pela quinta
--obs: OFFSET sempre coloque um numero antes, se quero começar a partir do 5, offset 4

SELECT * FROM pokemons
LIMIT 3
OFFSET 4;

-- FIXAÇÃO --

SELECT * FROM pokemons
WHERE type = "fire" OR type = "grass"
ORDER BY attack
LIMIT 3
OFFSET 2;


