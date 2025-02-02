--Questions
1. SELECT NAME FROM PIECES;
2. SELECT * from PROVIDERS;
3. SELECT piece, avg(Price) from PROVIDES group by piece;
4. SELECT Name FROM PROVIDERS WHERE Code in(Select Provider from Provides where Piece =1);

	--Using joins
	SELECT Providers.Name from Providers join Provides on Providers.code = Provides.Provider where Provides.piece=1;
	SELECT Providers.Name from Providers INNER JOIN provides ON Providers.code = Provides.Provider and provides.piece=1;

	--With sub query

	Select Name from providers where code in ( select provider from provides where piece = 1);

5. SELECT NAME FROM PIECES WHERE CODE IN ( SELECT PIECE FROM PROVIDES WHERE PROVIDER = 'HAL');

	Select pieces.name from pieces join PROVIDES ON (Pieces.code= Provides.piece) where provides.provider = 'HAL';

	--using exixts clause
	Select name from pieces where exists( SELECT *FROM PROVIDES WHERE PROVIDER ='HAL' AND PIECE = PIECES.CODE);

	-- -- For each piece, find the most expensive offering of that piece and include the piece name, provider name, and price 
	-- (note that there could be two providers who supply the same piece at the most expensive price).
6.	SELECT Pieces.Name, Providers.Name, PRICE FROM PIECES INNER JOIN PROVIDES ON PIECES.CODE = PIECE INNER JOIN PROVIDERS ON PROVIDERS.CODE=PROVIDER WHERE PRICE =( SELECT MAX(PRICE) FROM PROVIDES WHERE PIECE = PIECES.CODE);

7.	INSERT INTO PROVIDES(PIECE,PROVIDER, PRICE) VALUES(1, 'TNBC', 7);
select * from provides;
select * from pieces;
select * from providers;


Update provides SET price = price +1; 
DELETE FROM PROVIDES WHERE PROVIDER = 'RBT' AND PIECE = 4;

DELETE FROM PROVIDES WHERE Provider = 'RBT';