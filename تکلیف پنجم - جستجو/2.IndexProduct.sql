/*Taklif 5 : Ehsan Javadi
Ostad : Imani 
Date Time : -
SQL Code
*/


/*Fileds that Should be Index in Table of Products*/
/*MonthName , Amonth*/

CREATE UNIQUE INDEX MONTH_NAME ON bcharge (MonthName);

CREATE UNIQUE INDEX AMOUNT_MONEY ON bcharge (Amount, ExtraAmonth)