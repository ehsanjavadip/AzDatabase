<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product (Bulding Charge)</title>
</head>
<body>
    <h1>اضافه کردن محصول (شارژ ماهینه)</h1>
    <hr />

    <form action="" method="post" enctype="multipart/form-data">

        <label for="txtSubject">موضوع :</label>
          <input type="text" name="txtSubject" id="txtSubject" />
        <label for="txtDate">تاریخ :</label>
          <input type="Date" name="txtDate" id="txtDate" />
        <label for="txtMonthName">نام ماه :</label>
          <input type="text" name="txtMonthName" id="txtMonthName" />
        <label for="txtuserid">شماره عضو ساختمان :</label>
          <input type="number" name="txtuserid" id="txtuserid" />
        <label for="txtmanagerId">شماره مدیر ساختمان :</label>
          <input type="number" name="txtmanagerId" id="txtmanagerId" />
        <label for="txtAmonth">مبلغ :</label>
          <input type="text" name="txtAmonth" id="txtAmonth" />
        <label for="txtExtraAmonth">مبلغ اضافی (بدهی) :</label>
          <input type="text" name="txtExtraAmonth" id="txtExtraAmonth" />

        <button type="submit" id="btnAdd">اضافه کن</button>
    </form>
    <?php 
      $txtSubject = $_POST["txtSubject"];
      $txtDate = $_POST["txtDate"];
      $txtMonthName = $_POST["txtMonthName"];
      $txtuserid = $_POST["txtuserid"];
      $txtmanagerId = $_POST["txtmanagerId"];
      $txtAmonth = $_POST["txtAmonth"];
      $txtExtraAmonth = $_POST["txtExtraAmonth"];
      
      $sql = "INSERT INTO `bcharge` (`Subject`, `DateAdded`, `MonthName`, `user_id`, `manager_id`, `Amonth`, `ExtraAmonth`, `Satus`)
      VALUES ($txtSubject, $txtDate, $txtMonthName, $txtuserid, $txtmanagerId , $txtAmonth , $txtExtraAmonth , 'true');";
      $result = mysqli_query($conn, $sql);

      if($result) 
        echo "اضافه شد";
      else 
        echo "اضافه نشد";
    ?>
</body>
</html>