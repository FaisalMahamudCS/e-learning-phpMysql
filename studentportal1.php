<?php
session_start();


// Create connection

include "connection.php";

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}


if(isset($_POST['submit'])){
    $id=$_POST['id'];
    $password=$_POST['password'];
    $_SESSION['id']=$id;
    $_SESSION['islogin']=true;
   // echo $password;
    //echo $id;

$query="SELECT * from profile where id='$id' && password='$password'";
$connected=mysqli_query($conn,$query);
$row_count=mysqli_num_rows($connected);



}


?>



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

</style>
    
<link rel="stylesheet" href="dist/css/bootstrap.css">


<script src="jquery-3.1.1.js"></script>
    <script src="dist/js/bootstrap.js"></script>


</head>
<body>

<br>


<!DOCTYPE html>
<html lang="en">
<head>

    <style>
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

header {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding: 30px 10%;
  background-color: #24252a;
}

.logo {
  margin-right: auto;
}

.nav__links {
  list-style: none;
  display: flex;
}

.nav__links a,
.cta,
.overlay__content a {
  font-family: "Montserrat", sans-serif;
  font-weight: 500;
  color: #edf0f1;
  text-decoration: none;
}

.nav__links li {
  padding: 0px 20px;
}

.nav__links li a {
  transition: all 0.3s ease 0s;
}

.nav__links li a:hover {
  color: #0088a9;
}

.cta {
  margin-left: 20px;
  padding: 9px 25px;
  background-color: rgba(0, 136, 169, 1);
  border: none;
  border-radius: 50px;
  cursor: pointer;
  transition: all 0.3s ease 0s;
}

.cta:hover {
  background-color: rgba(0, 136, 169, 0.8);
}

/* Mobile Nav */

.menu {
  display: none;
}

.overlay {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  background-color: #24252a;
  overflow-x: hidden;
  transition: all 0.5s ease 0s;
}

.overlay--active {
  width: 100%;
}

.overlay__content {
  display: flex;
  height: 100%;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.overlay a {
  padding: 15px;
  font-size: 36px;
  display: block;
  transition: all 0.3s ease 0s;
}

.overlay a:hover,
.overlay a:focus {
  color: #0088a9;
}
.overlay .close {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
  color: #edf0f1;
  cursor: pointer;
}

@media screen and (max-height: 450px) {
  .overlay a {
    font-size: 20px;
  }
  .overlay .close {
    font-size: 40px;
    top: 15px;
    right: 35px;
  }
}

@media only screen and (max-width: 800px) {
  .nav__links,
  .cta {
    display: none;
  }
  .menu {
    display: initial;
  }
}



    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Navbar</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="styles.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:500&display=swap" rel="stylesheet">
    </head>
    <body>
        <?php
        include "navstudent.php";
        ?>
<section class="main">
  <div class="container">
    <div class="row">
      <div class="col-sm-6">
       
      </div>
    </div>
  </div>
</section>
</body>
</html>

  
<head>

  <style>
  
  @import url('https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap');
  
  *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    list-style: none;
   
  }
  
  body{
     background-color: #f3f3f3;
  }
  
  .wrapper{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 900px;
    display: flex;
    box-shadow: 0 1px 20px 0 rgba(69,90,100,.08);
  }
  
  .wrapper .left{
    width: 35%;
    background: linear-gradient(to right,#01a9ac,#01dbdf);

    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
    text-align: center;
    color: #fff;
  }
  
  .wrapper .left img{
    border-radius: 5px;
    margin-bottom: 10px;
  }
  
  .wrapper .left h4{
    margin-bottom: 10px;
  }
  
  .wrapper .left p{
    font-size: 12px;
  }
  
  .wrapper .right{
    width: 65%;
    background: #fff;
    padding: 30px 25px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
  }
  
  .wrapper .right .info,
  .wrapper .right .projects{
    margin-bottom: 25px;
  }
  
  .wrapper .right .info h3,
  .wrapper .right .projects h3{
      margin-bottom: 15px;
      padding-bottom: 5px;
      border-bottom: 1px solid #e0e0e0;
      color: #353c4e;
    text-transform: uppercase;
    letter-spacing: 5px;
  }
  
  .wrapper .right .info_data,
  .wrapper .right .projects_data{
    display: flex;
    justify-content: space-between;
  }
  
  .wrapper .right .info_data .data,
  .wrapper .right .projects_data .data{
    width: 45%;
  }
  
  .wrapper .right .info_data .data h4,
  .wrapper .right .projects_data .data h4{
      color: #353c4e;
      margin-bottom: 5px;
  }
  
  .wrapper .right .info_data .data p,
  .wrapper .right .projects_data .data p{
    font-size: 13px;
    margin-bottom: 10px;
    color: #160d06;
  }
  
  .wrapper .social_media ul{
    display: flex;
  }
  
  .wrapper .social_media ul li{
    width: 45px;
    height: 45px;
    background: linear-gradient(to right,#01a9ac,#01dbdf);
    margin-right: 10px;
    border-radius: 5px;
    text-align: center;
    line-height: 45px;
  }
  
  .wrapper .social_media ul li a{
    color :#fff;
    display: block;
    font-size: 18px;
  }
  
  </style>
    
  </head>
  

      
<?php

                        
//for MySQLi OOP
$conn = new mysqli('127.0.0.1', 'root', '', 'bgc');
if($conn->connect_error){
   die("Connection failed: " . $conn->connect_error);
}
// $id=$_POST['id'];
$id=$_SESSION['id'];
$_SESSION['id']=$id;
$sql = "SELECT * FROM profile where id='$id'";

//use for MySQLi-OOP
    $query = $conn->query($sql);
  
while($row = $query->fetch_assoc()){
?>
  <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
  
  <div class="wrapper" style="margin-top: 100px;">
      <div class="left">
          <img src="<?php echo $row['picture']?>" alt="user" width="350">
          <h4><?php echo $row['name']?></h4>
           <p>Web  Developer</p>
      </div>
      <div class="right">
          <div class="info">
              <h3 class="" style="margin-left: 150px;">Profile</h3>
              <div class="info_data">
                   <div class="data">
                      <h4>Email</h4>
                      <p><?php echo $row['email']?></p>
                   </div>
                   <div class="data">
                     <h4>Phone</h4>
                      <p><?php echo $row['telephone']?></p>
                </div>
              </div>

              <div class="info_data">
                <div class="data">
                   <h4>Student ID</h4>
                   <p>180231006</p>
                </div>
                <div class="data">
                  <h4>Enrolled Course</h4>
                   <p><?php echo $row['enrolled']?></p>
             </div>
           </div>
          </div>
        
        <div class="projects">
              <h3 style="margin-left: 150px;">Projects</h3>
              <div class="projects_data">
                   <div class="data">
                      <h4>Recent</h4>
                      <p><?php echo $row['project']?></p>
                   </div>
                   <div class="data">
                     <h4>Most Viewed</h4>
                      <p>PHP</p>
                </div>
              </div>
          </div>
        
          <div class="social_media">
              <ul>
                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
            </ul>
        </div>
      </div>
  </div>
  
  
<?php
}?>
  
  </nav><div style="padding-left:16px">
    
  
  <script>
  function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
      x.className += " responsive";
    } else {
      x.className = "topnav";
    }
  }
  </script>

<div style="padding-left:16px">
  

