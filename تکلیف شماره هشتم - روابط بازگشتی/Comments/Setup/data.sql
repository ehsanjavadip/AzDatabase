/*Taklif 8 : Ehsan Javadi
Ostad : Imani 
Date Time : -
SQL Code
*/

USE 'building_manage';
/*Add 2 Row in bcharge*/
INSERT INTO 'bcharge'('Subject', 'DateAdded', 'MonthName', 'user_id', 'manager_id', 'Amonth', 'ExtraAmonth', 'Satus')
VALUES ('شارژ ماه اسفند','Satarday-june 20-2023','اسفند','2','4','450000','2500','true')

INSERT INTO 'bcharge'('Subject', 'DateAdded', 'MonthName', 'user_id', 'manager_id', 'Amonth', 'ExtraAmonth', 'Satus')
VALUES ('شارژ ماه خرداد','Satarday-March 30-2023','خرداد','23','1','4870000','2800','true')

/*Add 1 Row in contactus*/
INSERT INTO 'contactus'('name', 'familyname', 'email', 'phonenumber' , 'subject', 'description', 'attach' , 'emailpre')
VALUES ('احسان', 'جوادی', 'ehsanjavadip@gmail.com' , '09130845536', 'مشکل در برنامه' , 'پیام تست', 'YES' , '1')

/*Add 1 Row in users*/
INSERT INTO 'users'('name' , 'family', 'phone' ,'username', 'password', 'age', 'status', 'job', 'Deleted')
VALUES ('Ehsan', 'Javadi', '09130845536', 'ehsanjavadip', '12345678', '21', 'Active', 'Web Developer', 'No')

/*Add 1 Row in Comments*/
INSERT INTO `comments` (`user_reply_id`, `description`, `status`, `charge_id`)
VALUES (1,'این یک کامنت تست است','true',14)