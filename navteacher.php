
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
            
        
            
/* Style The Dropdown Button */
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
  background-color: #3e8e41;
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
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <header>
           
          <nav>
            <ul class="nav__links">
              <li><a href="indexmain.html">E-learning</a></li>
                <li><a href="course.html">Course</a></li>
                <li><a href="enrollist.html">Enrolled Subjects</a></li>
                <li><a href="quiz_home.html">Quiz</a></li>
                <li><a href="asslist">Assignment</a></li>
                <li><a href="indexmain.html">Logout</a></li>
            
                                              
<li class="dropdown">
  <a class="text-light" style="color:#fffff" >Result</a>
  <div class="dropdown-content">
  <a href="assignment_result.php">Assignment Result</a>
  <a href="quiz_result.php">Quiz Result</a>
  
  </div>
</li>
            </ul>
        </nav>
          </header>
          </body>

          </html>