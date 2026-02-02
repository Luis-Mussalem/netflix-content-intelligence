sqlite> SELECT
    type,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY type;
Movie|6131
TV Show|2676
sqlite> SELECT
    year_added,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE year_added IS NOT NULL
GROUP BY year_added
ORDER BY year_added;
2008|2
2009|2
2010|1
2011|13
2012|3
2013|10
2014|23
2015|73
2016|418
2017|1164
2018|1625
2019|1999
2020|1878
2021|1498
|98
sqlite> SELECT
    year_added,
    type,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE year_added IS NOT NULL
GROUP BY year_added, type
ORDER BY year_added, type;
2008|Movie|1
2008|TV Show|1
2009|Movie|2
2010|Movie|1
2011|Movie|13
2012|Movie|3
2013|Movie|6
2013|TV Show|4
2014|Movie|19
2014|TV Show|4
2015|Movie|56
2015|TV Show|17
2016|Movie|253
2016|TV Show|165
2017|Movie|839
2017|TV Show|325
2018|Movie|1237
2018|TV Show|388
2019|Movie|1424
2019|TV Show|575
2020|Movie|1284
2020|TV Show|594
2021|Movie|993
2021|TV Show|505
|TV Show|98
sqlite> SELECT
    country,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;
United States|2818
India|972
|831
United Kingdom|419
Japan|245
South Korea|199
Canada|181
Spain|145
France|124
Mexico|110
sqlite> SELECT
    listed_in,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY listed_in
ORDER BY total_titles DESC
LIMIT 10;
Dramas, International Movies|362
Documentaries|359
Stand-Up Comedy|334
Comedies, Dramas, International Movies|274
Dramas, Independent Movies, International Movies|252
Kids' TV|220
Children & Family Movies|215
Children & Family Movies, Comedies|201
Documentaries, International Movies|186
Dramas, International Movies, Romantic Movies|180

