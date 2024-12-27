-- Authors
INSERT INTO Authors (Name, Country) VALUES 
('J.K. Rowling', 'United Kingdom'),
('George R.R. Martin', 'United States'),
('J.R.R. Tolkien', 'United Kingdom'),
('Haruki Murakami', 'Japan');

-- Books
INSERT INTO Books (Title, Price, AuthorID, Genre) VALUES 
('Harry Potter and the Philosopher\'s Stone', 19.99, 1, 'Fantasy'),
('A Game of Thrones', 24.99, 2, 'Fantasy'),
('The Hobbit', 14.99, 3, 'Fantasy'),
('Norwegian Wood', 18.99, 4, 'Fiction');

-- Customers
INSERT INTO Customers (Name, Email, Country) VALUES 
('Alice Johnson', 'alice.johnson@example.com', 'United States'),
('Bob Brown', 'bob.brown@example.com', 'Canada'),
('Charlie Smith', 'charlie.smith@example.com', 'United Kingdom');

-- Orders
INSERT INTO Orders (OrderDate, CustomerID) VALUES 
('2023-09-15', 1),
('2023-09-16', 2),
('2023-09-17', 3);

-- OrderDetails
INSERT INTO OrderDetails (OrderID, BookID, Quantity) VALUES 
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(2, 4, 1),
(3, 1, 3);