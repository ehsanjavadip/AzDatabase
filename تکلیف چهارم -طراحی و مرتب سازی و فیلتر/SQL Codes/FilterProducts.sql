/*Taklif 4 : Ehsan Javadi
Ostad : Imani 
Date Time : -
SQL Code
*/

/*Filter on Month*/
SELECT * FROM bcharge WHERE MonthName = "بهمن"
/*Filter on Date*/
SELECT * FROM bcharge WHERE DateAdded > 2022
/*Filter on user_id*/
SELECT * FROM bcharge WHERE user_id BETWEEN 10 AND 20
/*Filter on Manager_id*/
SELECT * FROM bcharge WHERE manager_id = 25
/*Filter on Amonth*/
SELECT * FROM bcharge WHERE Amonth >= 52000
/*Filter on ExtraMonth*/
SELECT * FROM bcharge WHERE ExtraMonth != 25000