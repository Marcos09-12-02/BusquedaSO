DROP DATABASE IF EXISTS geometry_wars;
CREATE DATABASE geometry_wars;

USE geometry_wars;

CREATE TABLE jugador (
	id INT NOT NULL,
	nombre VARCHAR(60) NOT NULL,
	edad INT NOT NULL,
	
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE partida (
	id INT NOT NULL,
	nombre VARCHAR(60) NOT NULL,
	modo INT NOT NULL,
	
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE partidas_jugadas (
	partida_id INT NOT NULL,
	jugador_id INT NOT NULL,
	puntos INT NOT NULL,
	ganador INT NOT NULL,
	
	FOREIGN KEY (partida_id) REFERENCES partida (id),
	FOREIGN KEY (jugador_id) REFERENCES jugador (id)
) ENGINE=InnoDB;

INSERT INTO jugador VALUES (1,'Juan',15);
INSERT INTO jugador VALUES (2,'ALbert',32);
INSERT INTO jugador VALUES (3,'Eva',45);
INSERT INTO jugador VALUES (4,'Julia',19);
INSERT INTO jugador VALUES (5,'Marcos',19);
INSERT INTO jugador VALUES (6,'Maria',23);

INSERT INTO partida VALUES (1,'Partida1',1);
INSERT INTO partida VALUES (2,'Partida2',0);
INSERT INTO partida VALUES (3,'Partida3',1);

INSERT INTO partidas_jugadas VALUES (1,1,150,1);
INSERT INTO partidas_jugadas VALUES (1,2,20,0);
INSERT INTO partidas_jugadas VALUES (1,3,45,0);
INSERT INTO partidas_jugadas VALUES (1,4,19,0);
INSERT INTO partidas_jugadas VALUES (2,5,500,1);
INSERT INTO partidas_jugadas VALUES (3,2,300,0);
INSERT INTO partidas_jugadas VALUES (3,3,34,0);
INSERT INTO partidas_jugadas VALUES (3,4,20,0);
INSERT INTO partidas_jugadas VALUES (3,6,21,0);
INSERT INTO partidas_jugadas VALUES (3,1,23,1);