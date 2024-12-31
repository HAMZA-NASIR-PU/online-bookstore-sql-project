-- Retrieve a list of book titles along with their authors.
SELECT b.*, a.* 
FROM Authors a JOIN Books b ON a.AuthorID = b.AuthorID;

-- List all orders along with customer names and their emails.
SELECT o.*, c.CustomerName, c.EMail 
FROM Customers c 
JOIN Orders o ON c.CustomerID = o.CustomerID;

-- Find all authors and list their books even if they haven't written any.
SELECT * 
FROM Authors a 
LEFT JOIN Books b ON a.AuthorID = b.AuthorID;

-- Show a summary of total books sold per genre using INNER JOIN and GROUP BY.
SELECT b.Genre, COUNT(*) 
FROM Books b 
JOIN OrderDetails od ON b.BookID = od.BookID 
GROUP BY b.Genre;

-- Determine which customers haven't placed any orders yet using a LEFT JOIN.
SELECT c.CustomerName, c.Email 
FROM Customers c 
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID 
WHERE o.OrderID IS NULL;

-- Generate a report of order details including each book's author and the total amount spent on that book per order.
SELECT 
    a.Name AS "Author Name", 
    b.Title AS "Book Title", 
    b.Price AS "Book Price", 
    od.Quantity AS "Quantity", 
    b.Price * od.Quantity AS "Total Amount Spent",
    o.OrderID AS "Order ID",
    o.OrderDate AS "Order Date"
FROM Authors a 
JOIN Books b ON a.AuthorID = b.AuthorID
JOIN OrderDetails od ON b.BookID = od.BookID
JOIN Orders o ON od.OrderID = o.OrderID;
