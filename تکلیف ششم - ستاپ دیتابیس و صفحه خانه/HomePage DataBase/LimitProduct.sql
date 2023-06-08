/*Taklif 6 : Ehsan Javadi
Ostad : Imani 
Date Time : -
SQL Code
*/

/*Show the 5 of News Charges*/
SELECT id, Subject, DateAdded, MonthName, Amonth
FROM bcharge
WHERE DateAdded >= 2022 AND status = 'false'
LIMIT 5;