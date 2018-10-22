/*******************************************************************************
List track names that have not been par to fan invoice.Your output column
should be listed as Name
********************************************************************************/
SELECT Name
    FROM Track LEFT NATURAL JOIN InvoiceLine
    WHERE InvoiceID is NULL;
