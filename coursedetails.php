<?php

session_start();
include "navindex.php";
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
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <title>Document</title>
</head>
<body>
  
    <div class="container" style="margin-top:70px">
    <?php


    $con = mysqli_connect('127.0.0.1','root','','bgc');

    if(isset($_GET['course_id'])){

        $course_id=$_GET['course_id'];
        $_SESSION['course_id']=$course_id;
        
        $sql="select * from skill where id='$course_id'";
        $result = mysqli_query($con, $sql);
        $row = mysqli_fetch_assoc($result);
        $picture=$row['picture'];
        $_SESSION['course_name']=$row['course_name'];
       $_SESSION['course_desc']=$row['course_desc'];
    
 $_SESSION['course_duration']=$row['course_duration'];
        }

    
    ?>
    <div class="row">
    <div class="col-md-6 mb-6" >
    <img src="<?php echo $row['picture']?>" class="card-img-top" height="500px" width="500px">
    </div>
    <div class="col-md-6">
    
    
<div class="card-body">
<h5 class="card-title"><?php echo $row['course_name']?></h5>
<p class="card-text">Course Duration:<?php echo $row['course_desc']?></p>
<p class="card-text">Course Duration:<?php echo $row['course_duration']?></p>
</div>

<p class="card-text d-inline"><span class="font-weight-bolder">Price:<?php echo $row['Price']?><span> </p>
<a class="btn btn-success" href='loginnew.php?course_id=<?php echo $course_id; ?>'><span class='label label-danger'>BUY</span></a>



    </div>


</div>
</div>
<h2 class="text-center pt-5">What you'll learn
</h2>









<div class="container pt-5">
<div class="row">
<table class='table table-bordered thead-dark'>
<thead class="thead-dark">
<tr>
<th scope="col" class="text-center">
No
</th>
<th scope="col" class="text-center">What You will Learn From the course</th>
</tr>
</thead>

<?php
    $con = new mysqli('127.0.0.1','root','','bgc');
$sql="select * from whatlearn";
$result=$con->query($sql);

if($result->num_rows >0){
$num  = 0;
while($row = $result->fetch_assoc()){

if($course_id==$row['course_id']){
    $num++;
    echo '<tr>

<th scope="row" class="text-center">'.$num.'</th>
<td class=""><i class="fas fa-check p-4" ></i>'.$row['learn'].'</td>
';
}
}
}
?>
</table>
</div>
</div>

















<div class="container pt-5">
<div class="row">
<table class='table table-bordered thead-dark'>
<thead class="thead-dark">
<tr>
<th scope="col">
Lesson No
</th>
<th scope="col">Lesson Name</th>
</tr>
</thead>

<?php
    $con = new mysqli('127.0.0.1','root','','bgc');
$sql="select * from lesson";
$result=$con->query($sql);

if($result->num_rows >0){
$num  = 0;
while($row = $result->fetch_assoc()){

if($course_id==$row['course_id']){
    $num++;
    echo '<tr>

<th scope="row">'.$num.'</th>
<td>'.$row['lesson_name'].'</td>
';
}
}
}
?>
</table>
</div>
</div>
</body>
</html>

<html>

<?php
include "connection.php";

// create SQL
$sql = "SELECT  AVG(rating) FROM courserating ";

// execute SQL query and get result
$sql_result = mysqli_query($conn,$sql) or die ("Couldn't execute query.");

while ($row = mysqli_fetch_array($sql_result)) {

$total =$row['AVG(rating)'];
$avg=round($total,2);
}


echo "<h3 class='text-center'>Average Rating is     $avg / 5 <i class='fas fa-star'></i></h3>";

?>




<?php
include "connection.php";
$sql="select * from courserating";
$sql_result = mysqli_query($conn,$sql) or die ("Couldn't execute query.");

while ($row = mysqli_fetch_array($sql_result)) {
    $rating=$row['rating'];
    



?>
<div class="card">
	    <div class="card-body">
	        <div class="row">
        	    <div class="col-md-2">
        	        <img src="<?php echo $row['photo']?>" style="height:150px;width:150px; border-radius: 50%;" class="img img-rounded img-fluid"/>
        	        <p class="text-secondary text-center">15 Minutes Ago</p>
        	    </div>
        	    <div class="col-md-10">
        	        <p>
                        <a class="float-left" href="https://maniruzzaman-akash.blogspot.com/p/contact.html"><strong> <?php
                        echo $row['name'];
                        
                        ?></strong></a>
                       
        	           
                       <?php echo "<h5 class='float-right' >   $rating </h5>";?> <span class="float-right">
                       
                       <i class="text-warning fa fa-star"></i></span>
                      

        	       </p>
        	       <div class="clearfix"></div>
        	        <p><?php echo $row['comment']?></p>
        	        <p>
        	            <a class="float-right btn btn-outline-primary ml-2"> <i class="fa fa-reply"></i> Reply</a>
        	            <a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Like</a>
        	       </p>
        	    </div>
	        </div>
            </div>
      <?php
}
      ?>    
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css" integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
</head>
<body>

 
<div>
        <h3 class="text-center">Course  Rating</h3>
    </div>
 
<form action="" method="post">
<div class="container">
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Comment</label>
    <input type="text" class="form-control" name="comment" id="exampleInputPassword1">
  </div>



 
    <div class="row">
        
    </div> 
         <div class="rateyo" id= "rating"
         data-rateyo-rating="4"
         data-rateyo-num-stars="5"
         data-rateyo-score="3">
         </div>
 
    <span class='result'>0</span>
    <input type="hidden" name="rating">
 
    </div>
 
    <button type="submit" name="add" class="btn btn-primary">Submit</button>
  </div>
</form>

</div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
 
<script>
 
 
    $(function () {
        $(".rateyo").rateYo().on("rateyo.change", function (e, data) {
            var rating = data.rating;
            $(this).parent().find('.score').text('score :'+ $(this).attr('data-rateyo-score'));
            $(this).parent().find('.result').text('rating :'+ rating);
            $(this).parent().find('input[name=rating]').val(rating); //add rating value to input field
        });
    });
 
</script>
</body>
 
</html>
<?php
require 'connection.php';
if (!isset($_SESSION['id'])){
       
            echo "<script>
            alert('You must logged in !!');
            window.open('studentlogin.php','_self')
        </script>";
            }


else{
      
    if(isset($_POST['add'])){

        $id=$_SESSION['id'];
        $sql1="select * from profile where id='$id'";
        $resulting=mysqli_query($conn, $sql1);
        
        while ($row = mysqli_fetch_array($resulting)) {
            $picture=$row['picture'];
        $email=$row['email'];
        $name=$row['name'];
        } 
    $courseid=$_GET['course_id'];
   // $name = $_POST["name"];
    $rating = $_POST["rating"];
   // $email=$_POST['email'];
 $comment=$_POST['comment'];
    $sql = "INSERT INTO courserating(id,email,name,comment,rating,courseid,photo) VALUES (NULL,'$email','$name','$comment','$rating','$courseid','$picture')";
    if (mysqli_query($conn, $sql))
    {
        echo "<script>
        alert('Rating Inserted Successfully !!');
        
    </script>";
}

   
    else
    {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    mysqli_close($conn);
}
}
?>