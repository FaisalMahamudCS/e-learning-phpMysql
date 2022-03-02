<?php
session_start();

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div class="" style="">
    <?php

    include "connection.php";
    include "navstudent.php";
    if(isset($_GET['lesson_id'])){
    $lesson_id=$_GET['lesson_id'];

    $sql="select * from lesson where lesson_id='$lesson_id'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $lesson_link=$row['lesson_link'];
    $lesson_desc=$row['lesson_desc'];
   
    }
    ?>
</body>
</html>
</div>

<!DOCTYPE html> 
<html> 
<body> 

<video width="1200" height="1200" controls style="margin-left:10">
  <source src="<?php echo $lesson_link;?>" type="video/mp4">


</video>

<p>
  <h5 class="text-center"><?php
  echo $lesson_desc;
  ?></h5>

</p>

</body> 

<!-- Mirrored from www.w3schools.com/html/tryit.asp?filename=tryhtml5_video by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 30 Apr 2019 03:38:06 GMT -->
</html>
