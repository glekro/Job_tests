#Server Version: 8.0.13 MySQL Community Server

SELECT ROUND(AVG(r.average_in_month), 2) 'any_age',
       ROUND(AVG(CASE WHEN r.age BETWEEN 18 AND 25 THEN r.average_in_month END), 2) '18-25',
       ROUND(AVG(CASE WHEN r.age BETWEEN 26 AND 35 THEN r.average_in_month END), 2) '26-35'
FROM (SELECT p.userid, 
             p.age,
             ROUND(SUM(p.price) / PERIOD_DIFF(YEAR(CURDATE())*100+MONTH(CURDATE()), YEAR(MIN(p.date))*100+MONTH(MIN(p.date))), 2) AS average_in_month
      FROM (SELECT users.userid, 
                   purchases.purchaseid, 
                   purchases.date, 
                   items.price, 
                   users.age
            FROM 
            users LEFT OUTER JOIN purchases ON users.userid = purchases.userid 
            LEFT OUTER JOIN items ON items.itemid = purchases.itemid 
            ORDER BY users.userid, month(purchases.date)) p
            WHERE p.date < SUBDATE(CURDATE(), INTERVAL DAY(CURDATE())-1 DAY)
            GROUP BY p.userid
            ORDER BY p.userid) r