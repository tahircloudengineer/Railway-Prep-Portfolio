C:\Users\Tahir>.open ChinookPractice.db
'.open' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\Tahir>cd c:sqlite
The system cannot find the path specified.

C:\Users\Tahir>C:

C:\Users\Tahir>cd \sqlite

C:\sqlite>sqlite3.exe
SQLite version 3.50.4 2025-07-30 19:33:53
Enter ".help" for usage hints.
Connected to a transient in-memory database.
Use ".open FILENAME" to reopen on a persistent database.
sqlite> .open chinook_practice.db
sqlite> CREATE TABLE Customer (
(x1...>     CustomerId INTEGER PRIMARY KEY,
(x1...>     FirstName TEXT NOT NULL,
(x1...>     LastName TEXT NOT NULL,
(x1...>     Company TEXT,
(x1...>     Address TEXT,
(x1...>     City TEXT,
(x1...>     State TEXT,
(x1...>     Country TEXT,
(x1...>     PostalCode TEXT,
(x1...>     Phone TEXT,
(x1...>     Fax TEXT,
(x1...>     Email TEXT NOT NULL,
(x1...>     SupportRepId INTEGER
(x1...> );
sqlite> INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId)
   ...> VALUES (1, 'Luís', 'Gonçalves', 'Embraer - Empresa Brasileira de Aeronáutica S.A.', 'Av. Brigadeiro Faria Lima, 2170', 'São José dos Campos', 'SP', 'Brazil', '12227-000', '+55 (12) 3923-5555', '+55 (12) 3923-5566', 'luisg@embraer.com.br', 3);
sqlite>
sqlite> INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId)
   ...> VALUES (2, 'Eduardo', 'Martins', 'Woodstock Discos', 'Rua Dr. Falcão Filho, 155', 'São Paulo', 'SP', 'Brazil', '01007-010', '+55 (11) 3033-5446', '+55 (11) 3033-4564', 'eduardo@woodstock.com.br', 4);
sqlite>
sqlite> INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId)
   ...> VALUES (3, 'Alexandre', 'Rocha', 'Banco do Brasil S.A.', 'Av. Paulista, 2022', 'São Paulo', 'SP', 'Brazil', '01310-200', '+55 (11) 3055-3278', '+55 (11) 3055-8131', 'alero@uol.com.br', 5);
sqlite>
sqlite> INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId)
   ...> VALUES (4, 'Roberto', 'Almeida', 'Riotur', 'Praça Pio X, 119', 'Rio de Janeiro', 'RJ', 'Brazil', '20040-020', '+55 (21) 2271-7000', '+55 (21) 2271-7070', 'roberto.almeida@riotur.gov.br', 3);
sqlite>
sqlite> INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId)
   ...> VALUES (5, 'Mark', 'Philips', 'Telus', '8210 111 ST NW', 'Edmonton', 'AB', 'Canada', 'T6G 2C7', '+1 (780) 434-4554', '+1 (780) 434-5565', 'mphilips12@shaw.ca', 5);
sqlite>
sqlite> INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId)
   ...> VALUES (6, 'Jennifer', 'Peterson', 'Rogers Canada', '700 W Pender Street', 'Vancouver', 'BC', 'Canada', 'V6C 1G8', '+1 (604) 688-2255', '+1 (604) 688-8756', 'jenniferp@rogers.ca', 3);
sqlite> SELECT DISTINCT Country
   ...> FROM Customer
   ...> ORDER BY Country;
Brazil
Canada
sqlite> SELECT DISTINCT FirstName, Country
   ...> FROM Customer
   ...> ORDER BY Country, FirstName;
Alexandre|Brazil
Eduardo|Brazil
Luís|Brazil
Roberto|Brazil
Jennifer|Canada
Mark|Canada
sqlite> SELECT COUNT (DISTINCT Country) AS UniqueCountries
   ...> FROM Customer;
2
sqlite> SELECT DISTINCT FirstName, Country
   ...> FROM Customer
   ...> WHERE Country = 'Canada'
   ...> ORDER BY FirstName;
Jennifer|Canada
Mark|Canada
sqlite>