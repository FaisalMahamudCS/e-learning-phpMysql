<?php
session_start();
?>

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
<?php
include "navstudent.php";
?>
<h1 class="bold" style="text-shadow: 2px 2px 8px black;font-weight: bold;padding:20px">All Enrolled Course</h1>




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
  background: linear-gradient(to bottom left, #5e91b39d 40%, #19d6e4 100%);
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







<div class="main">
 
  <ul class="cards">
  


    <?php
  $id=$_SESSION['id'];
    include "connection.php";
    $sql="select * from coursestud where id='$id'";
    $result = mysqli_query($conn, $sql);
    while($row = mysqli_fetch_assoc($result)){
    $course_id=$row['course_id'];
    ?>
    
    
    <li class="cards_item">
          <div class="cardc">
            <a href="stud_coursedet.php?course_id=<?php echo $course_id?>" ><img src="image/<?php echo $row['picture'] ?>"  style="height: 300px;">
            <div class="card_content">
    
    
              
              <h2 class="card_title ml-5"><?php echo $row['course_name'];?></h2>
              <p class="card_text pl-5 pt-4"><strong>Catagory:</strong><?php echo $row['catagory']?></p>
              <p class="card_text pl-5 pt-2"><?php echo $row['course_desc'];?></p>
              <p class="card_text pl-5 pt-2"><strong>Price:</strong> 4000 tk</p>
              <p class="card_text pl-5">   <strong>Rating </strong> 4.5k 
    <i class="fa fa???-star fa-5x"></i>
    <i class="fa fa-star"></i>
    <i class="fa fa-star"></i>
    <i class="fa fa-star"></i>
    <i class="fa fa-star"></i>
    
              </p>
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
    
    


    <li class="cards_item">
      <div class="cardc">
        <div class="card_image"><img src="php.jpg" style="height: 300px;"></div>
        <div class="card_content">
          <h2 class="card_title ml-5">Programming With php</h2>
          <p class="card_text pl-5 pt-4"><strong>Catagory:</strong>Web Development</p>
          <p class="card_text pl-5 pt-2">Learn programming  with php within 4 month.Here you will be a developer</p>
          <p class="card_text pl-5 pt-2"><strong>Price:</strong> 4000 tk</p>
          <p class="card_text pl-5">   <strong>Rating </strong> 4.5k 
<i class="fa fa???-star fa-5x"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>

          </p>
         <div class="row">
          <button class="btn1 card_btn col-4 pl-5">View</button>
          <button class="btn1 card_btn col-4">Enroll</button>
        </div>
        </div>
      </div>
    </li>

    <li class="cards_item">
      <div class="cardc">
        <div class="card_image"><img src="javascript.jpg"  style="height: 300px;"></div>
        <div class="card_content">
          <h2 class="card_title ml-5">Programming With javascript</h2>
          <p class="card_text pl-5 pt-4"><strong>Catagory:</strong>Web Development</p>
          <p class="card_text pl-5 pt-2">Here you can learn JS.After the course you will be a full stack web developer</p>
          <p class="card_text pl-5 pt-2"><strong>Price:</strong> 4000 tk</p>
          <p class="card_text pl-5">   <strong>Rating </strong> 4.5k 
<i class="fa fa???-star fa-5x"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>

          </p>
         <div class="row">
          <button class="btn1 card_btn col-4 pl-5">View</button>
          <button class="btn1 card_btn col-4">Enroll</button>
        </div>
        </div>
      </div>
    </li>
    <li class="cards_item">
      <div class="cardc">
        <div class="card_image"><img src="python1.jpg" style="height: 300px;width: 400px;"></div>
        <div class="card_content">
          <h2 class="card_title ml-5">Programming With Pyhton </h2>
          <p class="card_text pl-5 pt-4"><strong>Catagory:</strong>Web Development</p>
          <p class="card_text pl-5 pt-2">Learn programming with python within 4 month.Here You will  a full stack python developer</p>
          <p class="card_text pl-5 pt-2"><strong>Price:</strong> 4000 tk</p>
          <p class="card_text pl-5">   <strong>Rating </strong> 4.5k 
<i class="fa fa???-star fa-5x"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>

          </p>
         <div class="row">
          <button class="btn1 card_btn col-4 pl-5">View</button>
          <button class="btn1 card_btn col-4">Enroll</button>
        </div>
        </div>
      </div>
    </li>
  </ul>
</div>


















<div class="main">

  <ul class="cards">
  



    <li class="cards_item">
      <div class="cardc">
        <div class="card_image"><img src="laravel.jpg" style="height: 300px;"></div>
        <div class="card_content">
          <h2 class="card_title ml-5">Programming With Laravel</h2>
          <p class="card_text pl-5 pt-4"><strong>Catagory:</strong>Web Development</p>
          <p class="card_text pl-5 pt-2">Learn programming  with laravel  within 4 month.Here you will be a full stack laravel developer</p>
          <p class="card_text pl-5 pt-2"><strong>Price:</strong> 4000 tk</p>
          <p class="card_text pl-5">   <strong>Rating </strong> 4.5k 
<i class="fa fa???-star fa-5x"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>

          </p>
         <div class="row">
          <button class="btn1 card_btn col-4 pl-5">View</button>
          <button class="btn1 card_btn col-4">Enroll</button>
        </div>
        </div>
      </div>
    </li>

    <li class="cards_item">
      <div class="cardc">
        <div class="card_image"><img src="django.jpg"  style="height: 300px;"></div>
        <div class="card_content">
          <h2 class="card_title ml-5">Programming With Django a Python Frameework</h2>
          <p class="card_text pl-5 pt-4"><strong>Catagory:</strong>Web Development</p>
          <p class="card_text pl-5 pt-2">Here you can learn Django framework practically.After the course you will be a full stack Django Developer/p>
          <p class="card_text pl-5 pt-2"><strong>Price:</strong> 4000 tk</p>
          <p class="card_text pl-5">   <strong>Rating </strong> 4.5k 
<i class="fa fa???-star fa-5x"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>

          </p>
         <div class="row">
          <button class="btn1 card_btn col-4 pl-5">View</button>
          <button class="btn1 card_btn col-4">Enroll</button>
        </div>
        </div>
      </div>
    </li>

  </ul>
</div>








  
  
  
  
  
  
  
  
  
  




        <script type="text/javascript" src="mobile.js"></script>
    </body>
</html>
</body>
</html>