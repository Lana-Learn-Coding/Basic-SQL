INSERT INTO Categories(catId, catName)
VALUES (100, 'Beaches'),
       (200, 'Family Travel'),
       (300, 'Food and Drink'),
       (400, 'Skiing')

INSERT INTO Travels(trId, name, price, days, catId)
VALUES (10, 'Hawaii', 200, 4, 100),
       (11, 'Hilton', 250, 4, 200),
       (12, 'Florida', 300, 7, 300),
       (13, 'Sandwich', 180, 2, 300),
       (14, 'New Jeysey', 380, 4, 100)