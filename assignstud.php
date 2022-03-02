<?php
session_start();
include "navstudent.php"
?>



<script src="jquery-3.1.1.js"></script>
    <script src="dist/js/bootstrap.js"></script>



























<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
 
</head>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
    <link rel="stylesheet" href="css/style.css">
    <style>


h1{
    font-size: 36px;
    color: #555;
    font-weight: bold;
}
h3{
    font-size: 24px;
    color: #333;
    font-weight: bold;
}
#team img{
    margin-top:-50px;
}
team i{
    font-size: 26px;
    color:#555
}

team p{
    font-weight: bold;
}
#team .card{
    border-radius: 0;
    box-shadow: 5px 5px 15px #302d2d;
    transition: all 0.3 ease-in;
    -webkit-transition: all 0.3 ease-in;
}
#team .card:hover{
    background-color: #3f3332;
    color:#fff;
    border-radius: 5px;
    border:none;
    box-shadow: 5px 5px 10px #9E9E9E;
}
#team .card:hover h3,#team .card:hover i{
    color:#fff;
}

    </style>
<body>
    

</body>
</html>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
               
<link rel="stylesheet" href="dist/css/bootstrap.css">
    <style>




/* Font */
@import url('https://fonts.googleapis.com/css?family=Quicksand:400,700');

/* Design */
*,
*::before,
*::after {
  box-sizing: border-box;
}

html {
  background-color: #ecf9ff;
}

body {
  color: #272727;
  font-family: 'Quicksand', serif;
  font-style: normal;
 
}

.main{
  max-width: 1200px;
  margin: 0 auto;
}

h1 {
    font-size: 24px;
    font-weight: 400;
    text-align: center;
}

img {
  height: auto;
  max-width: 100%;
  vertical-align: middle;
}

.btn1 {
  color: #ffffff;
  padding: 0.8rem;
  font-size: 10px;
  text-transform: uppercase;
  border-radius: 4px;
  font-weight: 400;
  display: block;
  width: 100%;
  cursor: pointer;
  border: 1px solid rgba(255, 255, 255, 0.2);
  background: transparent;
}

.btn1:hover {
  background-color: rgba(255, 255, 255, 0.12);
}

.cards {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  margin: 0;
  padding: 0;
}

.cards_item {
  display: flex;
  padding: 1rem;
}

@media (min-width: 40rem) {
  .cards_item {
    width: 50%;
  }
}

@media (min-width: 56rem) {
  .cards_item {
    width: 33.3333%;
  }
}

.cardc {
  background-color: white;
  border-radius: 0.25rem;
  box-shadow: 0 20px 40px -14px rgba(0, 0, 0, 0.25);
  display: flex;
  flex-direction: column;
  overflow: hidden;
}

.card_content {
  padding: 1rem;
  background: linear-gradient(to bottom left, #5fbd7e 40%, #17aa1f 100%);
}



.card_content1 {
  padding: 1rem;
  background: linear-gradient(to bottom left, #cf6575 40%, #FFC39E 100%);
}
.card_title {
  color: #ffffff;
  font-size: 1.1rem;
  font-weight: 700;
  letter-spacing: 1px;
  text-transform: capitalize;
  margin: 0px;
}

.card_text {
  color: #ffffff;
  font-size: 0.875rem;
  line-height: 1.5;
  margin-bottom: 1.25rem;    
  font-weight: 400;
}
.made_by{
  font-weight: 400;
  font-size: 13px;
  margin-top: 35px;
  text-align: center;
}

    </style>
</head>
<body>
    
</body>
</html>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div class="container " style="margin-top:100px">
<div class="container">
<div class="row mt-4">
<?php

include "connection.php";

$id=$_SESSION['id'];
$sql="select * from assignment inner join coursestud on assignment.course_id =coursestud.course_id where id='$id';";
$result = mysqli_query($conn, $sql);
while($row = mysqli_fetch_assoc($result)){
$course_id=$row['course_id'];
$_SESSION['ass_course']=$course_id;
$assignment_id=$row['assignment_id'];
?>




<li class="cards_item">
      <div class="cardc">
        <a class="card_image"a href="assdetails.php?assignment_id=<?php echo $assignment_id;?>"><img src="<?php echo $row['photo'] ?>"  style="height: 300px;">
        <div class="card_content">


          
          <h2 class="card_title  text-center" style=""><?php echo $row['assign_name'];?></h2>
          <p class="card_text"><strong>Catagory:</strong><?php echo $row['assign_details']?></p>
          <p class="card_text "><strong>Deadline:</strong><?php echo $row['assignment_date'];?></p>
          <p class="card_text"><strong><b class="text-white">Download:</b></strong> <a id='downloadlink' style="color:white" href='<?php echo $row['file'] ?>' target='_blank' type='application/octet-stream' download='<?php echo $row['file'] ?>'>Click</a></p>
         
         <div class="row">
          <button class="btn1 card_btn col-4 pl-5">View</button>
          <button class="btn1 card_btn col-4">Enroll</button>
        </div>
        </div>
      </div>
    </li>
    <?php
}
    ?>



</a>



