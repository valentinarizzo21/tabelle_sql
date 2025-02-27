CREATE DATABASE azienda_1;
GO

CREATE TABLE impiegato (
id_impiegato INT IDENTITY(1,1) PRIMARY KEY,
cognome NVARCHAR(50),
nome NVARCHAR(50),
cf NVARCHAR(17),
)