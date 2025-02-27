USE azienda_1;

-- es a
SELECT * FROM impiegato WHERE eta > 29

-- es b
SELECT * FROM impiegato WHERE reddito_mensile >= 800

-- es c
SELECT * FROM impiegato WHERE detrazione_fiscale = 1;

-- es d
SELECT * FROM impiegato WHERE detrazione_fiscale = 0;

-- es e
SELECT * FROM impiegato WHERE cognome LIKE 'G%' ORDER BY cognome;

-- es f
SELECT COUNT(*) AS numero_totale_impiegati FROM impiegato;

-- es g
SELECT SUM(reddito_mensile) AS totale_redditi FROM impiegato;

-- es h
SELECT AVG(reddito_mensile) AS media_redditi FROM impiegato;

-- es i 
SELECT MAX(reddito_mensile) AS reddito_massimo FROM impiegato;

-- es j
SELECT MIN(reddito_mensile) AS reddito_minimo FROM impiegato;

-- es k
SELECT I.* FROM impiegato I JOIN impiego IM ON I.id_impiegato = IM.id_impiegato WHERE Assunzione BETWEEN '2007-01-01' AND '2008-01-01';

-- es l
DECLARE @tipo_impiego NVARCHAR(50) = 'Tecnico';
SELECT I.* FROM impiegato I JOIN impiego IM ON I.id_impiegato = IM.id_impiegato WHERE IM.tipo_impiego = @tipo_impiego;

--es m
SELECT AVG(eta) AS eta_media FROM impiegato;

