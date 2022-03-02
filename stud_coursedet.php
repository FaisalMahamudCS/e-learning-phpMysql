<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
li{
list-style-type:none;

}
</style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
       
<link rel="stylesheet" href="dist/css/bootstrap.css">
<script src="jquery-3.1.1.js"></script>
    <script src="dist/js/bootstrap.js"></script>



    <title>Document</title>
</head>
<body>
    <?php
    include "navstudent.php";
    ?>
    <div class="container" style="margin-top:70px">
    <?php
    $con = mysqli_connect('127.0.0.1','root','','bgc');
    if(isset($_GET['course_id'])){

        $course_id=$_GET['course_id'];
        $_SESSION['course_id']=$course_id;
        
        $sql="select * from skill where id='$course_id'";
        $result = mysqli_query($con, $sql);
        $row = mysqli_fetch_assoc($result);
        $_SESSION['course_name']=$row['course_name'];
       $_SESSION['course_desc']=$row['course_desc'];
    
     $_SESSION['course_duration']=$row['course_duration'];
        }

    
    ?>
    <div class="row">
    <div class="col-md-4 mb-4" >
    <img src="<?php echo $row['picture']?>" class="card-img-top" height="300px" width="300px">
    </div>
    <div class="col-md-8">
    
    
<div class="card-body">
<h5 class="card-title"><?php echo $row['course_name']?></h5>
<p class="card-text">Course Duration:<?php echo $row['course_desc']?></p>
<p class="card-text">Course Duration:<?php echo $row['course_duration']?></p>
</div>



    </div>


</div>
</div>

<div class="container">
<div class="row">
<table class='table table-bordered thead-dark'>
<thead class="thead-dark">
<tr>
<th scope="col">
Lesson No
</th>
<th scope="col">Lesson Name</th>
<th scope="col">View</th>
</tr>
</thead>

<?php
    $con = new mysqli('127.0.0.1','root','','bgc');
$sql="select * from lesson";
$result=$con->query($sql);


if($result->num_rows >0){
$num  = 0;
while($row = $result->fetch_assoc()){
    $lesson_id=$row['lesson_id'];
if($course_id==$row['course_id']){
    $num++;
    echo '<tr>

<th scope="row">'.$num.'</th>
<td>'.$row['lesson_name'].'</td>
<td><a href="lessonstud.php?lesson_id='.$lesson_id.'"  class="btn btn-dark text-white font-weight-bolder float-right">View</a></td>
';
}
}
}
?>
</table>
</div>
</div>
