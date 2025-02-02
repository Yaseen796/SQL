CREATE TABLE Pieces(
Code INTEGER PRIMARY KEY NOT NULL,
NaMe TEXT NOT NULL
);

CREATE TABLE Providers(
Code VARCHAR(40) PRIMARY KEY NOT NULL,
Name TEXT NOT NULL
);

CREATE TABLE Provides(
Piece INTEGER,
FOREIGN KEY (Piece) REFERENCES Pieces(Code),
Provider VARCHAR(40),
FOREIGN KEY (Provider) REFERENCES Providers(Code),
Price INTEGER NOT NULL,
PRIMARY KEY(Piece, Provider)
);


INSERT INTO Providers(Code, Name) VALUES('HAL', 'Clarke Enterprises');
INSERT INTO Providers(Code,Name) VALUES('RBT', 'Susan Calvin Corp');
INSERT INTO Providers(Code, Name) VALUES('TNBC', 'Skellington Supplies');

SELECT * FROM PROVIDERS;

INSERT INTO Pieces(Code,Name) VALUES(1,'Sprocket');
INSERT INTO Pieces(Code, Name) VALUES(2, 'Screw');
INSERT INTO Pieces(Code,Name) VALUES(3, 'Nut');
INSERT INTO Pieces(Code, Name) VALUES(4, 'Bolt');

Select * from pieces;

INSERT INTO Provides(Piece, Provider, Price) 
VALUES 
	(1, 'HAL', 10),
	(1, 'RBT', 15),
	(2, 'HAL', 20),
	(2, 'RBT', 15),
	(2, 'TNBC', 14),
	(3, 'RBT', 50),
	(3, 'TNBC', 45),
	(4, 'HAL', 5),
	(4, 'RBT', 7);