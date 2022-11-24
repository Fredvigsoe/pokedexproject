DROP DATABASE IF EXISTS pokedex;
CREATE DATABASE pokedex;
USE pokedex;
DROP TABLE IF EXISTS pokedex;
DROP TABLE IF EXISTS pokemon_type;
DROP TABLE IF EXISTS pokemon_trainer;
DROP TABLE IF EXISTS trainers_pokemon;
CREATE TABLE pokemon_type (
	type_id int,
    type_name VARCHAR(45),
    PRIMARY KEY (type_id)
);
CREATE TABLE pokedex (
    pokedex_number int,
    name VARCHAR(45),
    speed int,
    special_defence int,
    special_attack int,
    defence int,
    attack int,
    hp int, 
    fk_primary_type_id int,
    fk_secondary_type_id int,
	PRIMARY KEY (pokedex_number),
    FOREIGN KEY (fk_primary_type_id) references pokemon_type(type_id)
);

CREATE TABLE pokemon_trainer (
	trainer_id int,
    trainer_name VARCHAR(45),
	PRIMARY KEY (trainer_id)
);
CREATE TABLE trainers_pokemon (
	fk_trainer_id int,
    name VARCHAR(45),
    FOREIGN KEY (fk_trainer_id) references pokemon_trainer(trainer_id)
);

INSERT INTO pokemon_type (type_id, type_name)
					VALUES (1, 'Grass');
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (2, 'Water');
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (3, 'Fire');
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (4, 'Poison');
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (5, 'Ground'); 
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (6, 'Ice');
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (7, 'Psychic'); 
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (8, 'Ghost'); 
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (9, 'Rock');
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (10, 'Normal');
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (11, 'Dragon');
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (12, 'Electric');
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (13, 'Flying');
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (14, 'Bug');
INSERT INTO pokemon_type (type_id, type_name)
					VALUES (15, 'Fighting');

INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (1, 'Bulbasaur', 45, 65, 65, 49, 49, 45, 1, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (2, 'Ivysaur', 60, 80, 80, 63, 62, 60, 1, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (3, 'Venusaur', 80, 100, 100, 83, 82, 80, 1, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (4, 'Charmander', 65, 50, 60, 43, 52, 39, 3, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (5, 'Charmeleon', 80, 65, 80, 58, 64, 58, 3, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (6, 'Charizard', 100, 85, 109, 78, 84, 78, 3, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (7, 'Squirtle', 43, 64, 50, 65, 48, 44, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (8, 'Wartortle', 58, 80, 65,80, 63, 59, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (9, 'Blastoise', 78, 105, 85, 100, 83, 79, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (10, 'Caterpie', 45, 20, 20, 35, 30, 45, 14, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (11, 'Metapod', 30, 25, 25, 55, 20, 50, 14, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (12, 'Butterfree', 70, 80, 90, 50, 45, 60, 14, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (13, 'Weedle', 50, 20, 20, 30, 35, 40, 14, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (14, 'Kakuna', 35, 25, 25, 50, 25, 45, 14, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (15, 'Beedrill', 75, 80, 45, 40, 90, 65, 14, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (16, 'Pidgey', 56, 35, 35, 40, 45, 40, 10, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (17, 'Pidgeotto', 71, 50, 50, 55, 60, 63, 10, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (18, 'Pidgeot', 101, 70, 70, 75, 80, 83, 10, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (19, 'Rattata', 72, 35, 25, 35, 56, 30, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (20, 'Raticate', 97, 70, 50, 60, 81, 55, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (21, 'Spearow', 70, 31, 31, 30, 60, 40, 10, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (22, 'Fearow', 100, 61, 61, 65, 90, 65, 10, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (23, 'Ekans', 55, 54, 40, 44, 60, 35, 4, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (24, 'Arbok', 80, 79, 65, 69, 85, 60, 4, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (25, 'Pikachu', 90, 50, 50, 40, 55, 35, 12, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (26, 'Raichu', 110, 80, 90, 55, 90, 60, 12, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (27, 'Sandshrew', 40, 30, 20, 85, 75, 50, 5, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (28, 'Sandslash', 65, 55, 45, 110, 100, 75, 5, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (29, 'Nidoran-f', 41, 40, 40, 52, 47, 55, 4, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (30, 'Nidorina', 56, 55, 55, 67, 62, 70, 4, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (31, 'Nidoqueen', 76, 85, 75, 87, 92, 90, 4, 5);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (32, 'Nidoran-m', 50, 40, 40, 40, 57, 46, 4, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (33, 'Nidorino', 65, 55, 55, 57, 72, 61, 4, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (34, 'Nidoking', 85, 75, 85, 77, 102, 81, 4, 5);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (35, 'Clefairy', 35, 65, 60, 48, 45, 70, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (36, 'Clefable', 60, 90, 95, 73, 70, 95, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (37, 'Vulpix', 65, 65, 50, 40, 41, 38, 3, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (38, 'Ninetales', 100, 100, 81, 75, 76, 73, 3, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (39, 'Jigglypuff', 20, 25, 45, 20, 45, 115, 10, 10);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (40, 'Wigglytuff', 45, 50, 85, 45, 70, 140, 10, 10);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (41, 'Zubat', 55, 40, 30, 35, 45, 40, 4, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (42, 'Golbat', 90, 75, 65, 70, 80, 75, 4, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (43, 'Oddish', 30, 65, 75, 55, 50, 45, 1, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (44, 'Gloom', 40, 75, 85, 70, 65, 60, 1, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (45, 'Vileplume', 50, 90, 110, 85, 80, 75, 1, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (46, 'Paras', 25, 55, 45, 55, 70, 35, 14, 1);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (47, 'Parasect', 30, 80, 60, 80, 95, 60, 14, 1);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (48, 'Venonat', 45, 55, 40, 50, 55, 60, 14, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (49, 'Venomoth', 90, 75, 90, 60, 65, 70, 14, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (50, 'Diglett', 95, 45, 35, 25, 55, 10, 5, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (51, 'Dugtrio', 120, 70, 50, 50, 80, 35, 5, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (52, 'Meowth', 90, 40, 40, 35, 45, 40, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (53, 'Persian', 115, 65, 65, 60, 70, 65, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (54, 'Psyduck', 55, 50, 65, 48, 52, 50, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (55, 'Golduck', 85, 80, 95, 78, 82, 80, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (56, 'Mankey', 70, 45, 35, 35, 80, 40, 15, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (57, 'Primeape', 95, 70, 60, 60, 105, 65, 15, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (58, 'Growlithe', 60, 50, 70, 45, 70, 55, 3, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (59, 'Arcanine', 95, 80, 100, 80, 110, 90, 3, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (60, 'Poliwag', 90, 40, 40, 40, 50, 40, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (61, 'Poliwhirl', 90, 50, 50, 65, 65, 65, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (62, 'Poliwrath', 70, 90, 70, 95, 95, 90, 2, 15);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (63, 'Abra', 90, 55, 105, 15, 20, 25, 7, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (64, 'Kadabra', 105, 70, 120, 30, 35, 40, 7, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (65, 'Alakazam', 120, 95, 135, 45, 50, 55, 7, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (66, 'Machop', 35, 35, 35, 50, 80, 70, 15, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (67, 'Machoke', 45, 60, 50, 70, 100, 80, 15, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (68, 'Machamp', 55, 85, 65, 80, 130, 90, 15, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (69, 'Bellsprout', 40, 30, 70, 35, 75, 50, 1, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (70, 'Weepinbell', 55, 45, 85, 50, 90, 65, 1, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (71, 'Victreebel', 70, 70, 100, 65, 105, 80, 1, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (72, 'Tentacool', 70, 100, 50, 35, 40, 40, 2, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (73, 'Tentacruel', 100, 120, 80, 65, 70, 80, 2, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (74, 'Geodude', 20, 30, 30, 100, 80, 40, 9, 5);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (75, 'Graveler', 35, 45, 45, 115, 95, 55, 9, 5);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (76, 'Golem', 45, 65, 55, 130, 120, 80, 9, 5);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (77, 'Ponyta', 90, 65, 65, 55, 85, 50, 3, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (78, 'Rapidash', 105, 80, 80, 70, 100, 65, 3, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (79, 'Slowpoke', 15, 40, 40, 65, 65, 90, 2, 7);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (80, 'Slowbro', 30, 80, 100, 110, 75, 95, 2, 7);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (81, 'Magnemite', 45, 55, 95, 70, 35, 25, 12, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (82, 'Magneton', 70, 70, 120, 95, 60, 50, 12, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (83, 'Farfetchd', 60, 62, 58, 55, 65, 52, 10, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (84, 'Doduo', 75, 35, 35, 45, 85, 35, 10, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (85, 'Dodrio', 100, 60, 60, 70, 110, 60, 10, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (86, 'Seel', 45, 70, 45, 55, 45, 65, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (87, 'Dewgong', 70, 95, 70, 80, 70, 90, 2, 6);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (88, 'Grimer', 25, 50, 40, 50, 80, 80, 4, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (89, 'Muk', 50, 100, 65, 75, 105, 105, 4, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (90, 'Shellder', 40, 25, 45, 100, 65, 30, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (91, 'Cloyster', 70, 45, 85, 180, 95, 50, 2, 6);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (92, 'Gastly', 80, 35, 100, 30, 35, 30, 8, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (93, 'Haunter', 95, 55, 115, 45, 50, 45, 8, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (94, 'Gengar', 110, 75, 130, 60, 65, 60, 8, 4);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (95, 'Onix', 70, 45, 30, 160, 45, 35, 9, 5);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (96, 'Drowzee', 42, 90, 43, 45, 48, 60, 7, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (97, 'Hypno', 67, 115, 73, 70, 73, 85, 7, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (98, 'Krabby', 50, 25, 25, 90, 105, 30, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (99, 'Kingler', 75, 50, 50, 115, 130, 55, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (100, 'Voltorb', 100, 55, 55, 50, 30, 40, 12, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (101, 'Electrode', 140, 80, 80, 70, 50, 60, 12, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (102, 'Exeggcute', 40, 45, 60, 80, 40, 60, 1, 7);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (103, 'Exeggutor', 55, 65, 125, 85, 95, 95, 1, 7);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (104, 'Cubone', 35, 50, 40, 95, 50, 50, 5, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (105, 'Marowak', 45, 80, 50, 110, 80, 60, 5, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (106, 'Hitmonlee', 87, 110, 35, 53, 120, 50, 15, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (107, 'Hitmonchan', 76, 110, 35, 79, 105, 50, 15, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (108, 'Lickitung', 30, 75, 60, 75, 55, 90, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (109, 'Koffing', 35, 45, 60, 95, 65, 40, 4, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (110, 'Weezing', 60, 70, 85, 120, 90, 65, 4, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (111, 'Rhyhorn', 25, 30, 30, 95, 85, 80, 5, 9);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (112, 'Rhydon', 40, 45, 45, 120, 130, 105, 5, 9);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (113, 'Chansey', 50, 105, 35, 5, 5, 250, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (114, 'Tangela', 60, 40, 100, 115, 55, 65, 1, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (115, 'Kangaskhan', 90, 80, 40, 80, 95, 105, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (116, 'Horsea', 60, 25, 70, 70, 40, 30, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (117, 'Seadra', 85, 45, 95, 95, 65, 55, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (118, 'Goldeen', 63, 50, 35, 60, 67, 45, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (119, 'Seaking', 68, 80, 65, 65, 92, 80, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (120, 'Staryu', 85, 55, 70, 55, 45, 30, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (121, 'Starmie', 115, 85, 100, 85, 75, 60, 2, 7);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (122, 'Mr-mime', 90, 120, 100, 65, 45, 40, 7, 10);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (123, 'Scyther', 105, 80, 55, 80, 110, 70, 14, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (124, 'Jynx', 95, 95, 115, 35, 50, 65, 6, 7);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (125, 'Electabuzz', 105, 85, 95, 57, 83, 65, 12, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (126, 'Magmar', 93, 85, 100, 57, 95, 65, 3, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (127, 'Pinsir', 85, 70, 55, 100, 125, 65, 14, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (128, 'Tauros', 110, 70, 40, 95, 100, 75, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (129, 'Magikarp', 80, 20, 15, 55, 10, 20, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (130, 'Gyarados', 81, 100, 60, 79, 125, 95, 2, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (131, 'Lapras', 60, 95, 85, 80, 85, 130, 2, 6);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (132, 'Ditto', 48, 48, 48, 48, 48, 48, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (133, 'Eevee', 55, 65, 45, 50, 55, 55, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (134, 'Vaporeon', 65, 95, 110, 60, 65, 130, 2, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (135, 'Jolteon', 130, 95, 110, 60, 65, 65, 12, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (136, 'Flareon', 65, 110, 95, 60, 130, 65, 3, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (137, 'Porygon', 40, 75, 85, 70, 60, 65, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (138, 'Omanyte', 35, 55, 90, 100, 40, 35, 9, 2);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (139, 'Omastar', 55, 70, 115, 125, 60, 70, 9, 2);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (140, 'Kabuto', 55, 45, 55, 90, 80, 30, 9, 2);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (141, 'Kabutops', 80, 70, 65, 105, 115, 60, 9, 2);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (142, 'Aerodactyl', 130, 75, 60, 65, 105, 80, 9, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (143, 'Snorlax', 30, 110, 65, 65, 110, 160, 10, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (144, 'Articuno', 85, 125, 95, 100, 85, 90, 6, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (145, 'Zapdos', 100, 90, 125, 85, 90, 90, 12, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (146, 'Moltres', 90, 85, 125, 90, 100, 90, 3, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (147, 'Dratini', 50, 50, 50, 45, 64, 41, 11, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (148, 'Dragonair', 70, 70, 70, 65, 84, 61, 11, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (149, 'Dragonite', 80, 100, 100, 95, 134, 91, 11, 13);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (150, 'Mewtwo', 130, 90, 154, 90, 110, 106, 7, null);
INSERT INTO pokedex (pokedex_number, `name`, speed, special_defence, special_attack, defence, attack, hp, fk_primary_type_id, fk_secondary_type_id) 
                     VALUES (151, 'Mew', 100, 100, 100, 100, 100, 100, 7, null);



INSERT INTO pokemon_trainer (trainer_id, trainer_name)
					 VALUES (1, 'Ash');
INSERT INTO pokemon_trainer (trainer_id, trainer_name)
					 VALUES (2, 'Brock');
INSERT INTO pokemon_trainer (trainer_id, trainer_name)
					 VALUES (3, 'Misty');
INSERT INTO pokemon_trainer (trainer_id, trainer_name)
					 VALUES (4, 'Giovanni');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (1, 'Bulbasaur');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (1, 'Charmander');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (1, 'Squirtle');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (1, 'Butterfree');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (1, 'Pidgeotto');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (1, 'Pikachu');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (2, 'Geodude');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (2, 'Onix');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (3, 'Staryu');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (3, 'Starmie');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (4, 'Nidoqueen');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (4, 'Nidoking');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (4, 'Dugtrio');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (4, 'Rhyhorn');
INSERT INTO trainers_pokemon (fk_trainer_id, `name`)
					 VALUES (4, 'Rhydon');