/*SELECT BillingCountry, Title, count(*)
    FROM (Invoice NATURAL JOIN InvoiceLine NATURAL JOIN Track NATURAL JOIN Album) 
    GROUP BY BillingCountry, Title*/
    
/*SELECT Title, count(*)
    FROM (Invoice NATURAL JOIN InvoiceLine NATURAL JOIN Track NATURAL JOIN Album) 
    GROUP BY Title*/
    
/*SELECT Title, count(*)
    FROM (Invoice NATURAL JOIN InvoiceLine NATURAL JOIN Track NATURAL JOIN Album) 
    GROUP BY Title
    ORDER BY count(*) DESC
    LIMIT 1*/
    
/*SELECT Title, count(*)
    FROM (Invoice NATURAL JOIN InvoiceLine NATURAL JOIN Track NATURAL JOIN Album) 
    GROUP BY Title
    HAVING count(*) = (SELECT count(*)
                            FROM (Invoice NATURAL JOIN InvoiceLine NATURAL JOIN Track NATURAL JOIN Album) 
                            GROUP BY Title
                            ORDER BY count(*) DESC
                            LIMIT 1)*/
                            
/*SELECT BillingCountry, Title, count(*)
    FROM (Invoice NATURAL JOIN InvoiceLine NATURAL JOIN Track NATURAL JOIN Album) 
    GROUP BY BillingCountry, Title*/
    
/*SELECT BillingCountry, Title, count(*)
    FROM (Invoice NATURAL JOIN InvoiceLine NATURAL JOIN Track NATURAL JOIN Album) 
    GROUP BY BillingCountry, Title
    ORDER BY BillingCountry, count(*) DESC*/
 
/*SELECT BillingCountry, max(TitleCount)
    FROM (SELECT BillingCountry, count(*) AS TitleCount
            FROM (Invoice NATURAL JOIN InvoiceLine NATURAL JOIN Track NATURAL JOIN Album) 
            GROUP BY BillingCountry, Title
            ORDER BY BillingCountry, count(*) DESC) AS CACount
    GROUP BY BillingCountry*/
    
SELECT BillingCountry, Title, TitleCount
    FROM (SELECT BillingCountry, max(TitleCount) AS TitleCount
            FROM (SELECT BillingCountry, count(*) AS TitleCount
                    FROM (Invoice NATURAL JOIN InvoiceLine NATURAL JOIN Track NATURAL JOIN Album) 
                    GROUP BY BillingCountry, Title
                    ORDER BY BillingCountry, count(*) DESC) AS CACount
            GROUP BY BillingCountry) AS MaxCountryCount
        NATURAL JOIN 
        (SELECT BillingCountry, Title, count(*) AS TitleCount
            FROM (Invoice NATURAL JOIN InvoiceLine NATURAL JOIN Track NATURAL JOIN Album) 
            GROUP BY BillingCountry, Title)
    
