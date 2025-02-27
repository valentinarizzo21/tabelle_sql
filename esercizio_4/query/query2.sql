USE azienda_1;
GO

CREATE TABLE impiego (
id_impiego INT IDENTITY(1,1) PRIMARY KEY,
tipo_impiego NVARCHAR(50),
assunzione DATETIME2(7),
id_impiegato INT FOREIGN KEY REFERENCES IMPIEGATO(id_impiegato) ON DELETE CASCADE,
)