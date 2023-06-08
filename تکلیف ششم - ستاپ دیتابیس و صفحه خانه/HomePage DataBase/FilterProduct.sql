/*Taklif 6 : Ehsan Javadi
Ostad : Imani 
Date Time : -
SQL Code
*/

/*Show Cheapest Charges in this Month*/
SELECT id, Subject, DateAdded, user_id, manager_id, Amonth , ExtraAmonth
FROM bcharge
WHERE Amonth <= 45000 AND DateAdded >= 2022