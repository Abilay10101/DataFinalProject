USE name;

-- 3тье задание 

-- Create TABLE Movie (
--     title VARCHAR(255),
--     year INTEGER,
--     length INTEGER,
--     genre Varchar(255),
--     studioName CHAR(50),
--     producerC INTEGER,
--     PRIMARY KEY (title, year)
-- );

-- CREATE TABLE StarsIn (
--     movieTitle VARCHAR(255),
--     movieYear INTEGER,
--     starName CHAR(30)
-- )

-- CREATE TABLE MovieExec (
--     name CHAR(30),
--     address VARCHAR(255),
--     cert INTEGER PRIMARY KEY,
--     netWorth INTEGER
-- );

-- CREATE INDEX studioName_index
-- ON Movie(studioName);

-- Insert into Movie Values('IronMan', 2008, 120, 'Fantastic', 'M', 123);
-- Insert into Movie Values('SpiderMan', 2001, 120, 'Fantastic', 'M', 124);
-- Insert into Movie Values('BatMan', 2008, 120, 'Fantastic', 'D', 125);
-- Insert into Movie Values('Ludwig', 2014, 130, 'Documentary', 'C', 127);
-- Insert into Movie Values('Theador', 2015, 180, 'Documentary', 'G', 128);

-- Select studioName From Movie USE INDEX(studioName_index);

-- CREATE INDEX comb_index
-- ON Movie(genre , length );

-- Select  genre, length From Movie USE INDEX(comb_index);

-- Insert into MovieExec Values('B', 'Ludwig123', 112, 210000);
-- Insert into MovieExec Values('C', 'Cudwig124', 113, 310000);
-- Insert into MovieExec Values('D', 'Dudwig125', 114, 410000);
-- Insert into MovieExec Values('E', 'Tudwig126', 115, 510000);

-- CREATE INDEX address_index
-- ON MovieExec(address);

--  Select address From MovieExec USE index(address_index);
--  Select address From MovieExec

-- 1 вое задание 

-- CREATE TABLE Product (maker     VARCHAR(30),
--                       model     INT PRIMARY KEY,
--                       category  VARCHAR(20)
-- )

-- CREATE TABLE PC1 (model  INT PRIMARY KEY,
--                  speed  VARCHAR(20),
--                  ram    VARCHAR(20),
--                  hd     VARCHAR(20),
--                  price  Decimal(10,2),
--                  FOREIGN KEY (model) REFERENCES Product(model) 
-- )


-- INSERT INTO Product  VALUES ('B', 1121, 'PC');
-- INSERT INTO Product  VALUES ('B', 1123, 'PC');
-- INSERT INTO Product VALUES ('A', 1232, 'PC');
-- INSERT INTO Product  VALUES ('A', 1233, 'PC');
-- INSERT INTO Product  VALUES ('E', 1260, 'PC');


-- INSERT INTO PC1  VALUES (1121, '750', '128', '14', 850.00);
-- INSERT INTO PC1  VALUES (1123, '750', '128', '14', 850.00);
-- INSERT INTO PC1  VALUES (1233, '500', '64', '5', 600.00);

-- 1
-- Start Transaction;
-- Insert INto Product Values('H', 1241, 'PC');
--   INSERT INTO PC1
--   VALUES (1241, '750', '64', '14', 500.00);
-- Select model, price 
-- From PC1
-- Where model = 1241;
-- Commit;

-- 2
-- start Transaction;
-- delete from PC1
-- where model = 1123;
-- delete from product
-- where model = 1123;
-- commit;
-- select * from pc1

-- 3
-- start transaction; 
-- update PC1
-- SET pc1.price = pc1.price + 100.0 where pc1.model = 1121;
-- commit;

-- 4



