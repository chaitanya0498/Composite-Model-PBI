Fact_HOT = 
FILTER
(L2_Alten_F_HR, 
    (RELATED 
        (date
            (year
                (L2_Alten_D_Tempo[Anno])
                
                
                (MONTH(L2_Alten_D_Tempo[Mese])),1) > DATE(YEAR(TODAY()),MONTH(TODAY())-3,1))