BUSINESS PROBLEM
DB is too big to be IMPORTED into Power BI.
SOLUTION 
IMPORT only HOT DATA, the rest remains as DIRECT QUERY
OPTIMISATION
Aggregated Tables for most common/probable queries/visuals


PRE-REQUISITI
1. Connect to Data Warehouse (1 Fact + 4 DIM)
2. Split FACT into 2 (HOT + COLD)
   - based on DATE << getdate() -120 >>
3. Add Relations with DIM Tables
4. Create Calculated Column for DATE (because DB doesn't have DATE)

= 2 FACT TABLES (COLD + HOT) and 4 DIM Tables (All in DIRECT QUERY)

+ (optional) 1 Table for storing MEASURES (for queries that take data from both Fact Tables HOT + COLD)


VOGLIAMO VISUALIZZARE 
1. somma dei costi e recavi
2. a quanti progetti è assegnato ogni project manager?
3. 


TEST PROCESS
Create visualisation on original DB, take screenshots
Create visualisation on our new structure, take screenshots
Compare screenshots






SUM
1. somma dei costi (tutti i tempi)
2. somma dei costi (periodo recente "HOT")
3. somma dei costi (periodo meno recente "COLD)

1. somma dei ricavi (tutti i tempi)
2. somma dei ricavi (periodo recente "HOT")
3. somma dei ricavi (periodo meno recente "COLD)

GROUP BY
1. somma dei costi per Project (tutti i tempi)
2. somma dei costi per Project (periodo recente "HOT")
3. somma dei costi per Project (periodo meno recente "COLD)

1. somma dei ricavi per Project (tutti i tempi)
2. somma dei ricavi per Project (periodo recente "HOT")
3. somma dei ricavi per Project (periodo meno recente "COLD)


DRILL THROUGH
