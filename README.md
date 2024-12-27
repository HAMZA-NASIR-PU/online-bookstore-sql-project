# Project: Online Bookstore Database

#### **Database Schema:**
1. **Authors Table**
   - `AuthorID` (Primary Key)
   - `AuthorName`
   - `Country`

2. **Books Table**
   - `BookID` (Primary Key)
   - `Title`
   - `Genre`
   - `Price`
   - `AuthorID` (Foreign Key)

3. **Customers Table**
   - `CustomerID` (Primary Key)
   - `CustomerName`
   - `Email`
   - `JoinDate`

4. **Orders Table**
   - `OrderID` (Primary Key)
   - `OrderDate`
   - `CustomerID` (Foreign Key)

5. **OrderDetails Table**
   - `OrderDetailID` (Primary Key)
   - `OrderID` (Foreign Key)
   - `BookID` (Foreign Key)
   - `Quantity`


### Explanation:

- **`Authors` Table:** Contains author details, including a unique ID, name, and country.
- **`Books` Table:** Stores book information, linking each book to an author and a genre.
- **`Customers` Table:** Records customer information such as name and email.
- **`Orders` Table:** Represents customer orders with order dates and links to customers.
- **`OrderDetails` Table:** Details individual book quantities in orders, linking to both books and orders.
