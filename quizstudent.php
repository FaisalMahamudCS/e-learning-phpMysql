
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
        <header>
           
            <nav>
                <ul class="nav__links">
                  <li><a href="indexmain.html">E-learning</a></li>
                    <li><a href="course.html">Course</a></li>
                    <li><a href="enrollist.html">Enrolled Subjects</a></li>
                    <li><a href="quizstud.html">Quiz</a></li>
                    <li><a href="assignstud.html">Assignment</a></li>
                    <li><a href="indexmain.html">Logout</a></li>
                    <li><a href="#">Result</a></li>
                   
                </ul>

                
            </nav>

            </header>











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
              
    background: linear-gradient(to right,#01a9ac,#01dbdf);
         
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

        
a:hover { text-decoration: none; 
}
            
                </style>
            </head>
            <body>
                
            </body>
            </html>
            
            
            
            
            <h3 class="text-center p-4" style="  text-shadow: 2px 2px 8px #0e0c0c;font-weight: bold;font-size: 30px; ">Quiz</h3>
            







            <?php

include "connection.php";
$sql="SELECT * from quiz";
$result = mysqli_query($conn, $sql);
while($row = mysqli_fetch_assoc($result)){
$quiz_id=$row['quiz_id'];
?>


<li class="cards_item">
      <div class="cardc">
        <a class="card_image" a href="quiz_home.php?quiz_id=<?php echo $quiz_id;?>"><img src="<?php echo $row['photo'] ?>"  style="height: 300px;">
        <div class="card_content">


          
          <h2 class="card_title ml-5"><?php echo $row['name'];?></h2>
          <p class="card_text pl-5 pt-4"><strong>Quiz Details:</strong><?php echo $row['details']?></p>
          <p class="card_text pl-5 pt-2"><strong>Deadline </strong><?php echo $row['deadline'];?></p>
          <p class="card_text pl-5 pt-2"><strong>Price:</strong> 4000 tk</p>
          <p class="card_text pl-5">   <strong>Rating </strong> 4.5k 
<i class="fa fa???-star fa-5x"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>

          </p>
          <div class="row">
                      <a href="quiz_home.html"><button class="btn1 card_btn col-4 "  style="margin-left:100px;font-weight: bold;">View </button></a>
                    
                    </div>
        </div>
      </div>
    </li>
    <?php
}
    ?>



</a>












</body>
</html>