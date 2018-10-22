/*******************************************************************************
List the names of tracks and the state the purchased was billed to if the
purchase came from a state starting with a 'W'.(note that this is looking at
the Billing State attribute) SQLite is case-insensitive when comparing strings.
Your output columns should be listed as Name and Billing State in that order;
note that you will need to alias the columns to achieve this but I didn't
********************************************************************************/
SELECT Name, BillingState
  FROM Track NATURAL JOIN InvoiceLine NATURAL JOIN Invoice
  WHERE BillingState LIKE 'W%'
