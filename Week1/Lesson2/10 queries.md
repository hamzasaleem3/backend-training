**PostgreSQL Practice: 10 Queries**

**1\. Toyotas from 2020 onwards, cheapest first**

**SELECT id, make, model, year, price, mileage\_km**  
**FROM cars**  
**WHERE make \= 'Toyota'**  
  **AND year \>= 2020**  
**ORDER BY price ASC;**

 **id  \|  make  \|  model  \| year \|   price    \| mileage\_km**   
**\-----+--------+---------+------+------------+------------**

 **213 \| Toyota \| Corolla \| 2023 \| 1025000.00 \|     170827**  
 **144 \| Toyota \| Yaris   \| 2021 \| 1054000.00 \|      64410**  
  **37 \| Toyota \| Corolla \| 2023 \| 1660000.00 \|     140898**  
  **34 \| Toyota \| Corolla \| 2026 \| 1819000.00 \|     127402**  
 **193 \| Toyota \| Corolla \| 2021 \| 2759000.00 \|      35557**  
  **26 \| Toyota \| Yaris   \| 2024 \| 2897000.00 \|     103616**  
 **113 \| Toyota \| Corolla \| 2023 \| 3587000.00 \|      39254**  
 **206 \| Toyota \| Yaris   \| 2025 \| 3619000.00 \|     164243**  
  **16 \| Toyota \| Corolla \| 2022 \| 3815000.00 \|      24612**  
 **111 \| Toyota \| Corolla \| 2024 \| 4232000.00 \|      66651**  
  **81 \| Toyota \| Yaris   \| 2024 \| 5268000.00 \|      52982**  
 **128 \| Toyota \| Yaris   \| 2022 \| 6047000.00 \|      41032**  
 **135 \| Toyota \| Yaris   \| 2024 \| 6778000.00 \|      57383**  
 **170 \| Toyota \| Corolla \| 2025 \| 7008000.00 \|      54529**  
  **59 \| Toyota \| Corolla \| 2024 \| 7212000.00 \|      32096**  
 **152 \| Toyota \| Corolla \| 2024 \| 7426000.00 \|      39558**  
  **12 \| Toyota \| Corolla \| 2023 \| 7583000.00 \|      84307**  
 **226 \| Toyota \| Corolla \| 2023 \| 7735000.00 \|     174332**  
 **149 \| Toyota \| Yaris   \| 2024 \| 7762000.00 \|        465**  
  **64 \| Toyota \| Yaris   \| 2025 \| 7914000.00 \|     160703**  
  **98 \| Toyota \| Corolla \| 2025 \| 7965000.00 \|     113199**  
  **46 \| Toyota \| Corolla \| 2024 \| 8214000.00 \|       8704**  
 **244 \| Toyota \| Corolla \| 2023 \| 8540000.00 \|     161274**  
   **9 \| Toyota \| Yaris   \| 2021 \| 8671000.00 \|      46114**  
  **65 \| Toyota \| Yaris   \| 2020 \| 8693000.00 \|     131050**  
 **205 \| Toyota \| Corolla \| 2021 \| 8892000.00 \|     179185**  
  **83 \| Toyota \| Corolla \| 2023 \| 8902000.00 \|     121984**  
 **237 \| Toyota \| Yaris   \| 2025 \| 9059000.00 \|     177896**  
 **266 \| Toyota \| Yaris   \| 2025 \| 9331000.00 \|      64526**  
 **211 \| Toyota \| Yaris   \| 2022 \| 9508000.00 \|     111166**  
**(30 rows)**

**2\. Honda and Suzuki models starting with C**

**SELECT id, make, model, year, price**

**FROM cars**  
**WHERE make IN ('Honda', 'Suzuki')**  
  **AND model LIKE 'C%'**  
**ORDER BY make, model, price;**  
 **id  \|  make  \| model  \| year \|   price**      
**\-----+--------+--------+------+------------**

  **95 \| Honda  \| City   \| 2011 \| 1060000.00**  
  **15 \| Honda  \| City   \| 2026 \| 1192000.00**  
 **133 \| Honda  \| City   \| 2016 \| 1337000.00**  
  **36 \| Honda  \| City   \| 2018 \| 1614000.00**  
 **250 \| Honda  \| City   \| 2017 \| 2008000.00**  
 **161 \| Honda  \| City   \| 2014 \| 2196000.00**  
 **102 \| Honda  \| City   \| 2020 \| 3032000.00**  
  **76 \| Honda  \| City   \| 2014 \| 3176000.00**  
 **202 \| Honda  \| City   \| 2019 \| 3922000.00**  
  **78 \| Honda  \| City   \| 2013 \| 3944000.00**  
 **186 \| Honda  \| City   \| 2022 \| 4377000.00**  
 **177 \| Honda  \| City   \| 2025 \| 4863000.00**  
 **214 \| Honda  \| City   \| 2014 \| 4994000.00**  
  **20 \| Honda  \| City   \| 2023 \| 5162000.00**  
 **109 \| Honda  \| City   \| 2026 \| 5508000.00**  
  **82 \| Honda  \| City   \| 2011 \| 7225000.00**  
  **73 \| Honda  \| City   \| 2021 \| 7831000.00**  
  **89 \| Honda  \| City   \| 2016 \| 8170000.00**  
 **242 \| Honda  \| City   \| 2013 \| 8351000.00**  
  **14 \| Honda  \| City   \| 2017 \| 8533000.00**  
 **245 \| Honda  \| City   \| 2021 \| 8588000.00**  
  **17 \| Honda  \| City   \| 2025 \| 8625000.00**  
   **5 \| Honda  \| City   \| 2020 \| 8826000.00**  
 **228 \| Honda  \| City   \| 2016 \| 8896000.00**  
 **216 \| Honda  \| City   \| 2025 \| 9017000.00**  
 **148 \| Honda  \| City   \| 2022 \| 9289000.00**  
 **272 \| Honda  \| City   \| 2019 \| 9838000.00**  
  **84 \| Honda  \| Civic  \| 2016 \| 1551000.00**  
  **50 \| Honda  \| Civic  \| 2015 \| 1593000.00**  
 **218 \| Honda  \| Civic  \| 2011 \| 1913000.00**  
 **276 \| Honda  \| Civic  \| 2020 \| 2050000.00**  
 **100 \| Honda  \| Civic  \| 2013 \| 2123000.00**  
 **232 \| Honda  \| Civic  \| 2016 \| 2444000.00**  
 **285 \| Honda  \| Civic  \| 2020 \| 2455000.00**  
 **150 \| Honda  \| Civic  \| 2022 \| 2841000.00**  
 **185 \| Honda  \| Civic  \| 2014 \| 2864000.00**  
  **80 \| Honda  \| Civic  \| 2013 \| 2931000.00**  
 **194 \| Honda  \| Civic  \| 2018 \| 3065000.00**  
  **24 \| Honda  \| Civic  \| 2025 \| 3090000.00**  
 **104 \| Honda  \| Civic  \| 2021 \| 3272000.00**  
  **51 \| Honda  \| Civic  \| 2021 \| 3380000.00**  
 **200 \| Honda  \| Civic  \| 2022 \| 3906000.00**  
 **127 \| Honda  \| Civic  \| 2013 \| 4118000.00**  
  **11 \| Honda  \| Civic  \| 2018 \| 4631000.00**  
 **292 \| Honda  \| Civic  \| 2026 \| 4751000.00**  
 **240 \| Honda  \| Civic  \| 2014 \| 5256000.00**  
 **153 \| Honda  \| Civic  \| 2016 \| 5401000.00**  
 **282 \| Honda  \| Civic  \| 2019 \| 5635000.00**  
 **299 \| Honda  \| Civic  \| 2024 \| 5734000.00**  
 **171 \| Honda  \| Civic  \| 2017 \| 6396000.00**  
  **23 \| Honda  \| Civic  \| 2025 \| 7146000.00**  
  **71 \| Honda  \| Civic  \| 2023 \| 8191000.00**  
  **61 \| Honda  \| Civic  \| 2011 \| 8522000.00**  
 **247 \| Honda  \| Civic  \| 2021 \| 8546000.00**  
 **115 \| Honda  \| Civic  \| 2018 \| 8875000.00**  
 **182 \| Honda  \| Civic  \| 2014 \| 8922000.00**  
 **264 \| Suzuki \| Cultus \| 2012 \| 1811000.00**  
  **28 \| Suzuki \| Cultus \| 2013 \| 2313000.00**  
  **94 \| Suzuki \| Cultus \| 2026 \| 2784000.00**  
 **241 \| Suzuki \| Cultus \| 2023 \| 3129000.00**  
 **190 \| Suzuki \| Cultus \| 2011 \| 3298000.00**  
 **300 \| Suzuki \| Cultus \| 2011 \| 3631000.00**  
 **141 \| Suzuki \| Cultus \| 2023 \| 3639000.00**

**3\. Overall stats for the cars table**

**SELECT COUNT(\*)**   
       **AS total\_cars,**  
       **ROUND(AVG(price), 0\) AS avg\_price,**

       **MIN(price)               AS cheapest,**  
       **MAX(price)               AS most\_expensive,**  
       **ROUND(AVG(mileage\_km))   AS avg\_mileage\_km**

**FROM cars;**  
 **total\_cars \| avg\_price \|  cheapest  \| most\_expensive \| avg\_mileage\_km**   
**\------------+-----------+------------+----------------+----------------**

        **300 \|   5591627 \| 1025000.00 \|     9997000.00 \|         103646**  
**(1 row)**

**4\. Number of cars and average price per make (GROUP BY)**

**SELECT make,**  
       **COUNT(\*)             AS cars,**  
       **ROUND(AVG(price), 0\) AS avg\_price**

**FROM cars**  
**GROUP BY make**  
**ORDER BY cars DESC;**

**Output:**

  **make   \| cars \| avg\_price**  
**\---------+------+-----------**

 **Toyota  \|   68 \|   5794971**  
 **Suzuki  \|   59 \|   5516508**  
 **Honda   \|   56 \|   5056714**  
 **MG      \|   33 \|   5781788**  
 **Hyundai \|   29 \|   6240586**  
 **Changan \|   28 \|   5413036**  
 **Kia     \|   27 \|   5608852**  
**(7 rows)**

**5\. Cities with at least 7 dealers (HAVING)**

**SELECT city, COUNT(\*) AS dealers**  
**FROM dealers**  
**GROUP BY city**  
**HAVING COUNT(\*) \>= 7**  
**ORDER BY dealers DESC;**

**Output:**

    **city    \| dealers**  
**\------------+---------**

 **Rawalpindi \|      10**  
 **Lahore     \|       9**  
 **Karachi    \|       8**  
 **Peshawar   \|       8**  
 **Islamabad  \|       7**  
**(5 rows)**

**\---**

**6\. Most expensive cars in Lahore with their dealer (JOIN)**

**SELECT c.id   AS car\_id,**  
       **c.make,**

       **c.model,**

       **c.price,**

       **d.name AS dealer,**

       **d.city**

**FROM cars c**  
**JOIN dealers d ON d.id \= c.dealer\_id**  
**WHERE d.city \= 'Lahore'**  
**ORDER BY c.price DESC**  
**LIMIT 10;**

**Output:**

 **car\_id \|  make   \|  model  \|   price    \|  dealer   \|  city**  
**\--------+---------+---------+------------+-----------+--------**

    **157 \| Suzuki  \| Alto    \| 9343000.00 \| Dealer 40 \| Lahore**  
     **90 \| Hyundai \| Tucson  \| 9327000.00 \| Dealer 47 \| Lahore**  
    **119 \| Hyundai \| Tucson  \| 9231000.00 \| Dealer 30 \| Lahore**  
     **13 \| Toyota  \| Corolla \| 8863000.00 \| Dealer 40 \| Lahore**  
    **114 \| Toyota  \| Corolla \| 8833000.00 \| Dealer 23 \| Lahore**  
    **125 \| Toyota  \| Corolla \| 8746000.00 \| Dealer 23 \| Lahore**  
     **65 \| Toyota  \| Yaris   \| 8693000.00 \| Dealer 10 \| Lahore**  
     **17 \| Honda   \| City    \| 8625000.00 \| Dealer 23 \| Lahore**  
     **14 \| Honda   \| City    \| 8533000.00 \| Dealer 23 \| Lahore**  
     **49 \| Changan \| Alsvin  \| 8425000.00 \| Dealer 30 \| Lahore**  
**(10 rows)**

**7\. Top 5 dealers by average inspection score (3-table JOIN \+ GROUP BY)**

**SELECT d.name                AS dealer,**  
       **d.city,**

       **COUNT(i.id)           AS inspections,**  
       **ROUND(AVG(i.score),1) AS avg\_score,**

       **SUM(CASE WHEN i.status \= 'passed' THEN 1 ELSE 0 END) AS passed**  
**FROM dealers d**  
**JOIN cars c        ON c.dealer\_id \= d.id**  
**JOIN inspections i ON i.car\_id    \= c.id**  
**GROUP BY d.id, d.name, d.city**  
**ORDER BY avg\_score DESC**  
**LIMIT 5;**

**Output:**

  **dealer   \|    city    \| inspections \| avg\_score \| passed**  
**\-----------+------------+-------------+-----------+--------**

 **Dealer 44 \| Faisalabad \|           1 \|      78.0 \|      1**  
 **Dealer 10 \| Lahore     \|           4 \|      74.0 \|      3**  
 **Dealer 13 \| Islamabad  \|           4 \|      73.8 \|      3**  
 **Dealer 40 \| Lahore     \|          10 \|      68.6 \|      7**  
 **Dealer 37 \| Karachi    \|           8 \|      68.6 \|      6**  
**(5 rows)**

**8\. Cars that were never inspected (LEFT JOIN)**

**SELECT c.id, c.make, c.model, c.year**  
**FROM cars c**  
**LEFT JOIN inspections i ON i.car\_id \= c.id**  
**WHERE i.id IS NULL**  
**ORDER BY c.id;**

**Output (57 rows, first 8 shown):**

 **id  \|  make   \|  model   \| year**  
**\-----+---------+----------+------**

  **15 \| Honda   \| City     \| 2026**  
  **17 \| Honda   \| City     \| 2025**  
  **21 \| Suzuki  \| Cultus   \| 2024**  
  **25 \| Suzuki  \| Cultus   \| 2025**  
  **27 \| Kia     \| Sportage \| 2019**  
  **45 \| MG      \| HS       \| 2025**  
  **55 \| MG      \| HS       \| 2012**  
  **59 \| Toyota  \| Corolla  \| 2024**  
 **...**  
**(57 rows)**

**9\. Newer cars priced above the average (subquery)**

**SELECT id, make, model, year, price**  
**FROM cars**  
**WHERE price \> (SELECT AVG(price) FROM cars)**  
  **AND year \>= 2024**  
**ORDER BY price DESC**  
**LIMIT 10;**

**Output (36 cars matched, top 10 shown):**

 **id  \|  make   \|  model   \| year \|   price**  
**\-----+---------+----------+------+------------**

  **70 \| Kia     \| Sportage \| 2024 \| 9997000.00**  
  **30 \| MG      \| HS       \| 2025 \| 9795000.00**  
  **25 \| Suzuki  \| Cultus   \| 2025 \| 9734000.00**  
 **184 \| MG      \| HS       \| 2024 \| 9615000.00**  
 **266 \| Toyota  \| Yaris    \| 2025 \| 9331000.00**  
  **90 \| Hyundai \| Tucson   \| 2024 \| 9327000.00**  
 **235 \| Changan \| Alsvin   \| 2026 \| 9258000.00**  
 **119 \| Hyundai \| Tucson   \| 2026 \| 9231000.00**  
 **237 \| Toyota  \| Yaris    \| 2025 \| 9059000.00**  
 **216 \| Honda   \| City     \| 2025 \| 9017000.00**  
**(10 rows)**

**10\. Two most expensive cars of each make (window function)**

**SELECT \***  
**FROM (**  
  **SELECT make, model, year, price,**  
         **RANK() OVER (PARTITION BY make ORDER BY price DESC) AS price\_rank**  
  **FROM cars**  
**) ranked**

**WHERE price\_rank \<= 2**  
**ORDER BY make, price\_rank;**

**Output:**

  **make   \|  model   \| year \|   price    \| price\_rank**  
**\---------+----------+------+------------+------------**

 **Changan \| Alsvin   \| 2011 \| 9798000.00 \|          1**  
 **Changan \| Alsvin   \| 2026 \| 9258000.00 \|          2**  
 **Honda   \| City     \| 2019 \| 9838000.00 \|          1**  
 **Honda   \| City     \| 2022 \| 9289000.00 \|          2**  
 **Hyundai \| Tucson   \| 2023 \| 9965000.00 \|          1**  
 **Hyundai \| Tucson   \| 2012 \| 9745000.00 \|          2**  
 **Kia     \| Sportage \| 2024 \| 9997000.00 \|          1**  
 **Kia     \| Sportage \| 2011 \| 9776000.00 \|          2**  
 **MG      \| HS       \| 2025 \| 9795000.00 \|          1**  
 **MG      \| HS       \| 2024 \| 9615000.00 \|          2**  
 **Suzuki  \| Alto     \| 2011 \| 9921000.00 \|          1**  
 **Suzuki  \| Cultus   \| 2025 \| 9734000.00 \|          2**  
 **Toyota  \| Corolla  \| 2019 \| 9689000.00 \|          1**  
 **Toyota  \| Corolla  \| 2010 \| 9568000.00 \|          2**  
**(14 rows)**  
