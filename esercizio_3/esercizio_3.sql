--es 1
SELECT COUNT(*) AS totale_ordini FROM Orders;

--es 2
SELECT COUNT(*) AS totale_clienti FROM Customers;

--es 3
SELECT COUNT(*) AS totalr_clenti_londra FROM Customers WHERE City = 'London';

--es 4
SELECT AVG(Freight) AS media_totale_costo_trasporto FROM Orders;

--es 5
SELECT AVG(Freight) AS media_singola_costo_trasporto FROM Orders WHERE CustomerID = 'BOTTM';

--es 6
SELECT CustomerId, SUM(Freight) AS totale_spese_per_id FROM Orders GROUP BY CustomerId;

--es 7
SELECT City, COUNT(*) AS totale_clienti_per_citta FROM Customers GROUP BY City;

--es 8
SELECT OrderId, SUM(UnitPrice * Quantity) AS totale_valore_ordine FROM [Order Details] GROUP BY OrderId;

--es 9
SELECT OrderId, SUM(UnitPrice * Quantity) AS totale_valore_ordine_cliente FROM [Order Details] WHERE OrderId= 10248 GROUP BY OrderId;

--es 10
SELECT CategoryId, COUNT(*) AS ordini_censiti FROM Products GROUP BY CategoryId;

--es 11
SELECT ShipCountry, COUNT(*) AS totale_ordini_per_paese FROM Orders GROUP BY ShipCountry;

--es 12
SELECT ShipCountry, AVG(Freight) AS media_costo_trasporto FROM Orders GROUP BY ShipCountry;