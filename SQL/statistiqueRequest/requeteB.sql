SELECT rank, Major_code, Major, Major_category, total
FROM recent_grads;

SELECT Major, Employed
FROM recent_grads
WHERE Employed > 10000;


SELECT Major, Major_category, Employed, Unemployment_rate
FROM recent_grads
WHERE ( Major_category = 'Business' OR  Major_category = 'Arts'  OR  Major_category = ' Health ' )
AND ( Employed > 20000   OR  Unemployment_rate < 0.051 );


SELECT Major
FROM recent_grads
ORDER BY Major DESC
LIMIT 10;

SELECT College_jobs, Median, Unemployed
FROM recent_grads
LIMIT 20;

SELECT Major, total, Median, Unemployment_rate, Major_category
FROM recent_grads
WHERE (Major_category != 'Engineering')  AND (Median <= 50000 OR Unemployed > 0.065) ;

SELECT Major
FROM recent_grads
WHERE Major_category != 'Engineering'
ORDER BY Major DESC
LIMIT 20 ;

SELECT Major_category, avg(ShareWomen )*100
FROM recent_grads
GROUP BY  Major_category;

SELECT Major_category, avg(ShareWomen )*100 as pourcentage_de_femme
FROM recent_grads
GROUP BY  Major_category;


SELECT Major_category, avg(ShareWomen )*100 as pourcentage_de_femme
FROM recent_grads
GROUP BY  Major_category;

SELECT Major_category, avg(ShareWomen ) *100 pourcentage_de_femme
FROM recent_grads
GROUP BY  Major_category
HAVING pourcentage_de_femme > 60 ;

SELECT Major_category, round( ShareWomen, 2 ) AS  rounded_share_women
FROM  recent_grads;

SELECT Major_category, round(avg(Full_time)/ avg(total),3) AS share_degree
FROM recent_grads
GROUP BY Major_category
HAVING share_degree < 0.7;
