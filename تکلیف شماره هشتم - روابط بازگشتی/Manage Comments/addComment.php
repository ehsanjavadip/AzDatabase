<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add a Comment</title>
</head>
<body>
    <?php
       $chargeid = $_SESSION["charge_id"];
       include './product/id=$chargeid';
    ?>
    <h6>کامنت شما به ....</h6>
    <hr />
    <form action="" method="post"  enctype="multipart/form-data">
       <label for="txtcommentdes">متن کامنت شما</label>
       <input type="text" name="txtcommentdes" id="txtcommentdes">
       <input type="submit" value="پست" name="btnpostcomment">
    </form>
    

    <?php 
       $txtcommentdes = $_POST["txtcommentdes"];
       $user_reply_id = $_SESSION["user_id"];
       $sql = "INSERT INTO `comments` (`user_reply_id`, `description`, `status`, `charge_id`)
       VALUES ($user_reply_id,$txtcommentdes,'true',$chargeid)";
       $result = mysqli_query($conn, $sql);

       if($result) 
        echo " کامنت اضافه شد";
       else 
        echo "کامنت اضافه نشد";
    ?>
</body>
</html>