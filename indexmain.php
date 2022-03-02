<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

<style>
  body{
  
  }
li{
  list-style:none;
}
.parallax {
    background: url(bgc2.jpg);
        background-position-x: 0%;
        background-position-y: 0%;
        background-attachment: scroll;
        background-size: auto;
    height: 775px;
    width: 100%;
    background-attachment: fixed;
    background-position: center;
    background-size: cover;
}
#header{
  position:absolute;
  z-index:10;
  width:100%;
}
.navbar{
  padding:50px 0;

}
.navbar-brand{
  font-weight:600;
  font-size:1.5em;
}
.navbar-dark .navbar-brand{
  color:#dcdde1;

}
.nav-item{
  font-weight:600px;
  text-transform:uppercase;
  padding-left:10px;
}
.navbar-dark .navbar-nav .nav-item .nav-link:hover{
  background:#dcdde1;
  color:#262626;
}
.main{
  position:relative;
  background:url(e-leaning.jpg);
  min-height:100vh;
  background-size:cover;
  background-position:center;
  padding:220px  0 200px;

}
</style>
    
<link rel="stylesheet" href="dist/css/bootstrap.css">


<script src="jquery-3.1.1.js"></script>
    <script src="dist/js/bootstrap.js"></script>


</head>
<body>

<br>




<section id="header">
  <div class="container-fluid">

  <nav class="navbar-expand-lg navbar-dark">

  <div class="container">

  <a href="" class="navbar-brand"> Company Logo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
  aria-controls="navbarSupportedContent" aria-expand="false" aria-label="toggle navigation"
  >
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav ml-auto">
<li class="nav-item active">
<a href="" class="nav-link">Home</a>

</li>

<li class="nav-item ">
<a href="" class="nav-link">About</a>

</li>

<li class="nav-item ">
<a href="" class="nav-link">Contact Us</a>

</li>

<li class="nav-item ">
<a href="" class="nav-link">Home</a>

</li>

<li class="nav-item ">
<a href="" class="nav-link">Home</a>

</li>


</ul>

</div>
  </div>
  </nav>
  </div>
</section>
<section class="main">
  <div class="container">
    <div class="row">
      <div class="col-sm-6">
       
      </div>
    </div>
  </div>
</section>



<script src="jquery-3.1.1.js"></script>
    <script src="dist/js/bootstrap.js"></script>
<h4 class="text-center">Popular Course</h4>

<img src="e-leaning.jpg" alt="" srcset="" height="500px" width="1500px" >
<div class="row">
  <div class="col-3 pt-5">
  <h5>
    
100+ Quiz 
</h5>
</div>
<h4></h4>
<div class="col-3 pt-5">

 <h5 class="card-text">50+ course By best instructor </h5>
</div>

<div class="col-3 pt-5">

<h5> <i class="fas fa-video text-success" style="font-size:15px" ></i>   300+ Course Videos </h5>
</div>
<div class="col-3 pt-5">
<h5>100+ Assignment based on course </h5>
</div>

</div>

<div class="card-deck mt-4">
<?php


include "connection.php";
$sql="SELECT * from skill limit 3";
$result = mysqli_query($conn, $sql);
while($row = mysqli_fetch_assoc($result)){
$course_id=$row['id'];
echo '


<a href="#" class="btn" style="text-align:left;padding:0px;margin:0px">
<div class="card">
<img src="image/'.$row['picture'].'" class="card-img-top" height="300px" width="300px">
<div class="card-body">
<h5 class="text-center">'.$row['course_name'].'</h5>
<p class="card-text">'.$row['course_desc'].'</p>
<div class="star mt-3 align-items-center text-danger">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
</div>
</div>
<div class="card-footer">
<p class="card-text d-inline"><span class="font-weight-bolder">Price:'.$row['Price'].'<span> </p>
<a class="btn btn-primary text-white font-weight-bolder float-right">Enroll</a>

</div>
</div>
</a>


';

}

?>

</div>
</div>


<div class="card-deck mt-4">
<?php


include "connection.php";
$sql="SELECT * from skill limit 3,3";
$result = mysqli_query($conn, $sql);
while($row = mysqli_fetch_assoc($result)){
$course_id=$row['id'];
echo '


<a href="#" class="btn" style="text-align:left;padding:0px;margin:0px">
<div class="card">
<img src="image/'.$row['picture'].'" class="card-img-top" height="300px" width="300px">
<div class="card-body">
<h5 class="text-center">'.$row['course_name'].'</h5>
<p class="card-text">'.$row['course_desc'].'</p>
</div>
<div class="card-footer">
<p class="card-text d-inline"><span class="font-weight-bolder">'.$row['Price'].'<span> </p>
<div class="star mt-3 align-items-center text-danger">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
</div>
<a class="btn btn-primary text-white font-weight-bolder float-right">Enroll</a>

</div>
</div>
</a>


';

}

?>

</div>
<a href="course.php" class="btn btn-danger mt-4" style="margin-left:500px" >All Course</a>

    

    <div class="container">
    <h3 class="text-center">Contact Us</h3>
    <form action="">
      <input type="email" class="form-control" id="email" placeholder="Enter Your Name"><br>
      <input type="email" class="form-control" id="email" placeholder="Enter your Email"><br>
        <input type="text" class="form-control" id="email" placeholder="Enter your Phone No"><br>
        <input type="textarea" class="form-control" id="textarea" placeholder="Enter Your Comment">
<input type="submit" value="submit" class="btn btn-success">

    </form>
    </div>
    <div class="container" style="margin-left:500px">

    <div class="card" style="width:800px">
   
      <div class="card-body">
        <h4 class="card-title"><i class="fas fa-address-card"></i><b>Address: </b> Biddyanagar,Chandanaish Chottogram,Bangladesh</h4>
  
        <p class="card-text"><Address><i class="fas fa-envelope-open-text"></i><b>Email</b>:info@bgctub.ac.bd</Address></p>
        <p class="card-text"><Address><i class="fas fa-envelope-open-text"></i><b>Email</b>:info@bgctub.ac.bd</Address></p>
        <p class="card-text"><Address><i class="fas fa-mobile-alt"></i><b>Phone</b>0303356139</Address></p>      <p class="card-text"><Address><i class="fa fa-phone";style="font-size:40px"></i><b>Phone</b>01755588627,01755588619</Address></p>
        <p class="card-text"><Address><i class="fa fa-fax"></i><b>Fax</b>+880-31-255-0224</Address></p>  
     
      </div>
    </div>
  </div>

</div>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
 
</head>

<?php
include "team.html";

?>
<section id="team">
<div class="container my-3 py-5 text-center">
<div class="row mb-5">
<div class="col">
<h1>Our team</h1>
<p class="mt-3">It is a long established fact that reader will be distract readable conte</p>
</div>
</div>
<div class="row">
<div class="col-lg-6 col-md-6">
<div class="card">
<div class="card-body">
<img src="fahim.jpeg" alt="" style=" border-radius: 50%;height:200px;width:200px" >
<h3>Faisal Mahamud</h3>
<h5>Web developer</h5>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure velit deserunt facilis minus repudiandae eos, quos blanditiis? Praesentium, numquam enim. Possimus facere fuga sit quidem minima laboriosam ratione, quam facilis.</p>
<div class="d-flex flex-row justify-content-center">
<div class="p-4">
<a href="">
<i class="fa fa-facebook "></i>
</a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-twitter"></i></a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-instagram"></i>
</a>
</div>
</div>
</div>
</div>
</div>



<div class="col-lg-6 col-md-6">
<div class="card">
<div class="card-body">
<img src="fahim.jpeg" alt="" style=" border-radius: 50%;height:200px;width:200px" >
<h3>Newaz Sharif</h3>
<h5>Web developer</h5>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure velit deserunt facilis minus repudiandae eos, quos blanditiis? Praesentium, numquam enim. Possimus facere fuga sit quidem minima laboriosam ratione, quam facilis.</p>
<div class="d-flex flex-row justify-content-center">
<div class="p-4">
<a href="">
<i class="fa fa-facebook "></i>
</a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-twitter"></i></a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-instagram"></i>
</a>
</div>
</div>
</div>
</div>
</div>








</div>
</div></section>











<section id="team">
<div class="container my-3 py-5 text-center">
<div class="row mb-5">
<div class="col">
<h1>Our Instructors</h1>
<p class="mt-3">Join As a Instructor</p>
</div>
</div>
<div class="row">
<div class="col-lg-4 col-md-6">
<div class="card">
<div class="card-body">
<img src="fahim.jpeg" alt="" style=" border-radius: 50%;height:200px;width:200px" >
<h3>Sahah Uddin</h3>
<h5>Web developer</h5>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure velit deserunt facilis minus repudiandae eos, quos blanditiis? Praesentium, numquam enim. Possimus facere fuga sit quidem minima laboriosam ratione, quam facilis.</p>
<div class="d-flex flex-row justify-content-center">
<div class="p-4">
<a href="">
<i class="fa fa-facebook "></i>
</a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-twitter"></i></a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-instagram"></i>
</a>
</div>
</div>
</div>
</div>
</div>



<div class="col-lg-4 col-md-6">
<div class="card">
<div class="card-body">
<img src="fahim.jpeg" alt="" style=" border-radius: 50%;height:200px;width:200px" >
<h3>Nazmun Nahar</h3>
<h5>Web developer</h5>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure velit deserunt facilis minus repudiandae eos, quos blanditiis? Praesentium, numquam enim. Possimus facere fuga sit quidem minima laboriosam ratione, quam facilis.</p>
<div class="d-flex flex-row justify-content-center">
<div class="p-4">
<a href="">
<i class="fa fa-facebook "></i>
</a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-twitter"></i></a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-instagram"></i>
</a>
</div>
</div>
</div>
</div>
</div>






<div class="col-lg-4 col-md-6">
<div class="card">
<div class="card-body">
<img src="fahim.jpeg" alt="" style=" border-radius: 50%;height:200px;width:200px" >
<h3> Munmun Bishwas</h3>
<h5>Web developer</h5>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure velit deserunt facilis minus repudiandae eos, quos blanditiis? Praesentium, numquam enim. Possimus facere fuga sit quidem minima laboriosam ratione, quam facilis.</p>
<div class="d-flex flex-row justify-content-center">
<div class="p-4">
<a href="">
<i class="fa fa-facebook "></i>
</a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-twitter"></i></a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-instagram"></i>
</a>
</div>
</div>
</div>
</div>
</div>




</div>
</div></section>



<div class="col-lg-4 col-md-6">
<div class="card">
<img src="fahim.jpeg" alt=""class="card-img-top" >
<div class="card-body">

<h3> Munmun Bishwas</h3>
<h5>Web developer</h5>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure velit deserunt facilis minus repudiandae eos, quos blanditiis? Praesentium, numquam enim. Possimus facere fuga sit quidem minima laboriosam ratione, quam facilis.</p>
<div class="d-flex flex-row justify-content-center">
<div class="p-4">
<a href="">
<i class="fa fa-facebook "></i>
</a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-twitter"></i></a>
</div>
<div class="p-4">
<a href="">
<i class="fa fa-instagram"></i>
</a>
</div>
</div>
</div>
</div>
</div>



<?php
include "coursecard.html";
?>




<div class="jumbotron">

  <div class="row">
   
    <div class="col-lg-6">
      <h3 class="text-center">About Us</h3>
  <p></p>
</div>
<div class="col-lg-6 " >
  <h3 class="">  Catagory</h3>

  <a href="course.html" class="text-dark" >Web developement </a><br>
  <a href="course.html"  class="text-dark">Anroid App developement </a><br>  
  <a href="course.html" class="text-dark">Python </a> <br>
  <a href="course.html" class="text-dark">Macine Learning  </a> <br>
  <a href="course.html" class="text-dark">Competitive Programming </a><br> 

</div>
</div>
</div>
<footer class="container-fluid bg-dark text-center text-white  p2">
<small>Developed By Faisal <br>
<a href="admin.php">Admin Login</a>
</small>

</footer>
<script src="ajaxreq.js"></script>
<script>
function addstu(){
    var stuid=$('#idfor').val();
    var pass=$("#passfor").val();
    console.log(pass);
 
      $.ajax({
url:'signupajax.php',
method:'POST',
dataType:'json',
data:{
  stuid:stuid,
  pass:pass,
},
success:function(data){
  console.log(data);
  if(data=="ok"){
    $('#successmsg').html("<span> SignUp Success</span>");
    
  }
  else if(data=="failed"){
    $('#successmsg').html("<span> SignUp UnSuccess</span>");
  }
}

      })
}
</script>
<script src="vendor/jquery/jquery.js"></script>

</body>
</html>
