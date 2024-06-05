CREATE TABLE topmovies(
   Rank        INTEGER,
   Title       TEXT,
   Studio      TEXT,
   Worldwide   REAL,
   Domestic    REAL,
   DomesticPct REAL,
   Overseas    REAL,
   OverseasPct REAL,
   Year        INTEGER
);

INSERT INTO topmovies(Rank,Title,Studio,Worldwide,Domestic,DomesticPct,Overseas,OverseasPct,Year) VALUES (1,'Avatar','Fox',2788.00,760.50,0.27,2027.50,0.73,2009);
INSERT INTO topmovies(Rank,Title,Studio,Worldwide,Domestic,DomesticPct,Overseas,OverseasPct,Year) VALUES (2,'Titanic','Par.',2186.80,658.70,0.30,1528.10,0.70,1997);
INSERT INTO topmovies(Rank,Title,Studio,Worldwide,Domestic,DomesticPct,Overseas,OverseasPct,Year) VALUES (3,'Marvel''s The Avengers','BV',1518.60,623.40,0.41,895.20,0.59,2012);
INSERT INTO topmovies(Rank,Title,Studio,Worldwide,Domestic,DomesticPct,Overseas,OverseasPct,Year) VALUES (4,'Harry Potter and the Deathly Hallows Part 2','WB',1341.50,381.00,0.28,960.50,0.72,2011);
INSERT INTO topmovies(Rank,Title,Studio,Worldwide,Domestic,DomesticPct,Overseas,OverseasPct,Year) VALUES (5,'Furious 7','Uni.',1322.20,321.20,0.24,1001.00,0.76,2015);
INSERT INTO topmovies(Rank,Title,Studio,Worldwide,Domestic,DomesticPct,Overseas,OverseasPct,Year) VALUES (6,'Frozen','BV',1274.20,400.70,0.31,873.50,0.69,2013);
INSERT INTO topmovies(Rank,Title,Studio,Worldwide,Domestic,DomesticPct,Overseas,OverseasPct,Year) VALUES (7,'Iron Man 3','BV',1215.40,409.00,0.34,806.40,0.66,2013);
INSERT INTO topmovies(Rank,Title,Studio,Worldwide,Domestic,DomesticPct,Overseas,OverseasPct,Year) VALUES (8,'Transformers: Dark of the Moon','P/DW',1123.80,352.40,0.31,771.40,0.69,2011);

/* Rozwiązanie */
SELECT * FROM topmovies;
/* Jakie są wartości maksymalne w danych? */
SELECT MAX(worldwide) FROM topmovies;
/* Jakie są wartości minimalne w danych? */
SELECT MIN(worldwide) FROM topmovies;
/* Jakie są wartości średnie w danych? */
SELECT AVG(worldwide) FROM topmovies;
/* Co z tymi liczbami na kategorię (używając HAVING)? */

SELECT SUM(worldwide) AS total_price FROM topmovies
    GROUP BY rank
    HAVING total_price > 2000
        ;

/*Jakie są sposoby grupowania wartości danych, które jeszcze nie istnieją (używając CASE)?*/

SELECT Title, Worldwide,
    CASE 
        WHEN Worldwide > 2000 THEN "Premium"
        WHEN Worldwide < 1500 THEN "Good"
        ELSE "Not Bad"
    END as "result"
FROM topmovies;

/* Jakie są ciekawe sposoby filtrowania danych (za pomocą AND/OR)?
 */
 
SELECT COUNT(*) FROM topmovies 
    WHERE
    Overseas > 1500 
    AND  Domestic > 300
    OR Year > 2009;
