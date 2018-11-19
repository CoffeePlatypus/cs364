
--USE Compendium;

-- Create new Tables -- Drop if exists

-- Create Item Table
/*CREATE TABLE Item (
    ItemID INT PRIMARY KEY NOT NULL,
    ItemName NVARCHAR(20) NOT NULL,
    ItemClass NVARCHAR(20) NOT NULL,
    ItemDescription NVARCHAR(200) NOT NULL,
    hp Decimal(2,2) NOT NULL,
    ItemEffect NVARCHAR(20),
    SellPrice INT NOT NULL,
    DyeColor NVARCHAR(10)
);*/

-- Create User table
/*CREATE TABLE User(
    Username NVARCHAR(20) PRIMARY KEY NOT NULL,
    Password NVARCHAR(20) NOT NULL,
    FirstName NVARCHAR(20) NOT NULL,
    LastName NVARCHAR(20) NOT NULL
);*/
--INSERT INTO User(Username, Password, FirstName, LastName) values("jf", "123", "Julia", "Froegel");

-- CREATE Inventory table
/*CREATE TABLE Inventory(
    InventoryID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Username NVARCHAR(20) NOT NULL,
    ItemID INT NOT NULL,
    Amount INT NOT NULL,
        
    FOREIGN KEY (Username) REFERENCES User (Username),
    FOREIGN KEY (ItemID) REFERENCES Item (ItemID)
);*/
--INSERT INTO Inventory(Username, ItemID, Amount) values("jf", 5, 5);
--INSERT INTO Inventory(Username, ItemID, Amount) values("jf", 1, 20);
--INSERT INTO Inventory(Username, ItemID, Amount) values("jf", 13, 16);
--SELECT InventoryID, Amount FROM Inventory WHERE Username = 'jf' AND ItemID = 1;

/*UPDATE Inventory
SET Amount = 15
WHERE InventoryID = 2;*/

--  Create goal table
/*DROP TABLE Goal*/


/*CREATE TABLE Goal(
    GoalID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Username NVARCHAR(20) NOT NULL,
    ItemID INT NOT NULL,
    TargetAmount INT NOT NULL,
    
    FOREIGN KEY (Username) REFERENCES User (Username),
    FOREIGN KEY (ItemID) REFERENCES Item (ItemID)
)*/;

--INSERT INTO Goal(Username, ItemID, TargetAmount) values("jf", 7, 6);
SELECT GoalID, ItemID, ItemName, TargetAmount, (TargetAmount - Amount) AS Status FROM ((SELECT * From Goal WHERE Username = 'jf') NATURAL JOIN (SELECT ItemID, ItemName FROM Item)) LEFT NATURAL JOIN Inventory;







--SELECT * FROM User WHERE Username = 'jf' LIMIT 1;

--SELECT * FROM Item WHERE ItemID = 2;



-- Insert Data

--INSERT INTO Item(ItemID, ItemName, SellPrice, HeartsHealed, CookingEffect) values(1,'', 0, 0, '');