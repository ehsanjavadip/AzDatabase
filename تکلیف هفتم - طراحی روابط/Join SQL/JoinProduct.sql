/*Taklif 7 : Ehsan Javadi
Ostad : Imani 
Date Time : -
SQL Code
*/


/*SQL Code is Here*/
SELECT bcharge.id , bcharge.Subject, bcharge.DateAdded, bcharge.MonthName, bcharge.user_id, bcharge.Amonth, users.name AS username , users.family
FROM bcharge
INNER JOIN users ON users.id = bcharge.id
WHERE username LIKE "%علی%"
ORDER BY DateAdded DESC;