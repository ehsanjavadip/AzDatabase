/*Taklif 5 : Ehsan Javadi
Ostad : Imani 
Date Time : -
SQL Code
*/


/*Found a Product with Name by User :*/
/*MonthName Field*/
SELECT id, Subject, DateAdded, MonthName , Amonth, ExtraAmonth
FROM bcharge
WHERE MonthName LIKE "%بهمن %";

/*Subject Field*/
SELECT id, Subject, DateAdded, Amonth, ExtraAmonth
FROM bcharge
WHERE Subject LIKE "%140%";