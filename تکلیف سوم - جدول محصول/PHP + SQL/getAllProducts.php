<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get All Products</title>
</head>
<body>
    <?php 
        // Get All products From DataBase :
        $sql = "SELECT * FROM bcharge WHERE status='true'";
        $result = mysqli_query($conn, $sql);
        //  Use While Loop Here ....
        if ($result->num_rows > 0){
          while($row = $result->fetch_assoc()){  
            $id = $row['id'];
            $Subject = $row['Subject'];
            $DateAdded = $row['DateAdded'];
            $MonthName = $row['MonthName'];
            $user_id = $row['user_id'];
            $manager_id = $row['manager_id'];
            $Amonth = $row['Amonth'];
            $ExtraAmonth = $row['ExtraAmonth'];
            $staus = $row['staus'];
            // Load All products
            
            print "<tr> <td>";
            echo $id; 
            print "</td> <td>";
            echo $Subject; 
            print "</td> <td>";
            echo $DateAdded; 
            print "</td> <td>";
            echo $MonthName; 
            print "</td> <td>";
            echo $user_id;
            print "</td> <td>";
            echo $manager_id;
            print "</td> <td>";
            echo $Amonth;
            print "</td> <td>";
            echo $ExtraAmonth;
            print "</td> <td>";
            echo $staus;
            print "</td> </tr>";
            
          }
        }
        else {
            echo '<h2>هیچ شارژی  متاسفانه در دیتابیس موجود نمی باشد.....</h2>';
        }
    ?>
</body>
</html>