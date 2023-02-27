BUSINESS PROBLEM
DB is too big to be IMPORTED into Power BI.
SOLUTION 
IMPORT only HOT DATA, the rest remains as DIRECT QUERY
OPTIMISATION
Aggregated Tables for most common/probable queries/visuals


PRE-REQUISITI
1. Connect to Data Warehouse (1 Fact + 4 DIM)
2. Split FACT into 2 (HOT + COLD)
   - dinamically based on DATE << getdate() -120 >>
3. Add Relations with DIM Tables
4. Create Calculated Column for DATE (because DB doesn't have DATE) in TIME DIM TABLE

= 2 FACT TABLES (COLD + HOT) and 4 DIM Tables (All in DIRECT QUERY)

+ (optional) 1 Table for storing MEASURES (for queries that take data from both Fact Tables HOT + COLD)

OPTIMISATION
Poi abbiamo pensato di creare delle tabelle aggregate sia sulla tabella dei dati caldi che sulla tabella dei dati freddi. 
Le tabelle aggregate li creiamo in funzione di ciò che vogliamo visualizzare nei report.
- HOT_AGG_1 ( 1:1 HOT - IMPORT)

PER LE MISURE PIù PROBABILI
- COLD_AGG_1( SK_PROJECT ? SK_DATA )
- COLD_AGG_2 


TEST PROCESS
Create visualisations on original DB, take screenshots
Create visualisations on our new structure, take screenshots
Compare screenshots (performance analyzer)

VISUALIZZAZIONI

# Dim Projet Column IQP

Pg 1
Totale per anno
Filtro (anno, mese)
Drill di un particolare anno, mese -> raggruppato per IQP, o Progetto 

dashboard 1 - all data from HOT IMport
2 - maximum detailed view

(sicuramente)
Guadagno per progetto (bisogna poterlo visualizzare in base a mese ed anno con filtri);
Ogni project manager a quanti progetti è associato (count), inserire drill-through per vedere nello specifico i progetti associati ad uno specifico project manager; 

(da valutare)
Contare il numero di risorse coinvolte in un progetto;Project manager ordinati in base al guadagno, da affiancare al count dei progetti x manager 
(misura/colonna calcolata: da aggiungere ad ogni tabella dei fatti (hot, cold ed aggregata sulla hot) -> ricavi - costi) ;
Data la divisione, visualizzare i costi totali in base a questa (e filtri per visualizzare i vari range di guadagno); 


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



