/*******************************************************************************
   Select all the attributes of tracks written by a composer named 'Frank Zappa'
********************************************************************************/
SELECT *
  FROM Track
  WHERE Composer = 'Frank Zappa';

/* Results
351|Debra Kadabra|31|1|1|Frank Zappa|234553|7649679|0.99
352|Carolina Hard-Core Ecstasy|31|1|1|Frank Zappa|359680|11731061|0.99
354|Poofter's Froth Wyoming Plans Ahead|31|1|1|Frank Zappa|183902|6007019|0.99
355|200 Years Old|31|1|1|Frank Zappa|272561|8912465|0.99
356|Cucamonga|31|1|1|Frank Zappa|144483|4728586|0.99
357|Advance Romance|31|1|1|Frank Zappa|677694|22080051|0.99
359|Muffin Man|31|1|1|Frank Zappa|332878|10891682|0.99
*/
