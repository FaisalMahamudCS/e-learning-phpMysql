
                                               
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<?php
include "navadmin.php";
?>
<div id="main-wrapper">
        <!-- header header  -->
        <div class="header">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- Logo -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->
             
                        <!--End Logo icon -->
                        <!-- Logo text -->
                      
                    </a>
                </div>
                <!-- End Logo -->
                <div class="navbar-collapse">
                    <!-- toggle and nav items -->
                    <ul class="navbar-nav mr-auto mt-md-0">
                        
                        <!-- End Messages -->
                    </ul>
                    <!-- User profile and search -->
                    <ul class="navbar-nav my-lg-0">

                        
                        <!-- Messages -->
                        
                        <!-- Profile -->
                     
                    </ul>
                </div>
            </nav>
        </div>
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-dark">Add New Catagory</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active"><a href="teacher_details.php">Teacher Details</a></li>
                        <li class="breadcrumb-item active"><a href="add_teacher.php">Add New Teacher</a></li>
                    </ol>
                </div>
            </div>






            <!DOCTYPE html>
  <html lang="en">
  <head>
    <title>Contact V17</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="contact/images/icons/favicon.ico"/>
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="contact/vendor/bootstrap/css/bootstrap.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="contact/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="contact/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="contact/vendor/animate/animate.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="contact/vendor/css-hamburgers/hamburgers.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="contact/vendor/animsition/css/animsition.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="contact/vendor/select2/select2.min.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="contact/vendor/daterangepicker/daterangepicker.css">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="contact/css/util.css">
    <link rel="stylesheet" type="text/css" href="contact/css/main.css">
  <!--===============================================================================================-->
  </head>
  <body>
  
  
    <div class="container-contact100">
      <div class="wrap-contact100">
        <form class="contact100-form validate-form" method="post" action=""  enctype="multipart/form-data">
          <span class="contact100-form-title">
        Submit Assignment
          </span>
  
          <label class="label-input100" for="email">Enter Your ID   </label>
          <div class="wrap-input100 validate-input" >
            
            <input id="email" class="input100" type="text" name="stud_id" >
            <span class="focus-input100"></span>
          </div>
  
          <label class="label-input100" for="phone">Enter Assignment File</label>
          <div class="wrap-input100">
          <input class="input100" type="file" name="teacher_image">
            <span class="focus-input100"></span>
          </div>
          <label class="label-input100" for="email">Enter Course  ID</label>
          <div class="wrap-input100 validate-input" >
            <input id="email" class="input100" type="text" name="course_id" >
            <span class="focus-input100"></span>
          </div>
  
          <label class="label-input100" for="email">Enter Teacher  ID</label>
          <div class="wrap-input100 validate-input" >
            <input id="email" class="input100" type="text" name="teacher_id" >
            <span class="focus-input100"></span>
          </div>
        
        
  
         
            <input type="submit"  class='contact100-form-btn'  style="margin-left:110px;margin-top:80px" name='add'>

            <span class="focus-input100"></span>
          
        </form>
 
 
        <div class="contact100-more flex-col-c-m" style="background-image: url('contact/images/bg-01.jpg');">
          <div class="flex-w size1 p-b-47">
            <div class="txt1 p-r-25">
              <span class="lnr lnr-map-marker"></span>
            </div>
          
            <div class="flex-col size2">
              <span class="txt1 p-b-20">
                Catagory
              </span>
  
              <span class="txt2">
       <a href="catagoryadmin.php">View Catagory</a>
              </span>
            </div>
          </div>
  
          <div class="dis-flex size1 p-b-47">
            <div class="txt1 p-r-25">
              <span class="lnr lnr-phone-handset"></span>
            </div>
  
            <div class="flex-col size2">
              <span class="txt1 p-b-20">
             Forgot Password?
              </span>
  
              <span class="txt3">
              Recover Password
              </span>
            </div>
          </div>
  
          <div class="dis-flex size1 p-b-47">
            <div class="txt1 p-r-25">
              <span class="lnr lnr-envelope"></span>
            </div>
  
            <div class="flex-col size2">
              <span class="txt1 p-b-20">
                General Support
              </span>
  
              <span class="txt3">
                fmfahim1202@gmail.com
                newaz@gmail.com
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  
  
  
    <div id="dropDownSelect1"></div>
  
  <!--===============================================================================================-->
    <script src="contact/vendor/jquery/jquery-3.2.1.min.js"></script>
  <!--===============================================================================================-->
    <script src="contact/vendor/animsition/js/animsition.min.js"></script>
  <!--===============================================================================================-->
    <script src="contact/vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
  <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <script>
      $(".selection-2").select2({
        minimumResultsForSearch: 20,
        dropdownParent: $('#dropDownSelect1')
      });
    </script>
  <!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
  <!--===============================================================================================-->
    <script src="vendor/countdowntime/countdowntime.js"></script>
  <!--===============================================================================================-->
    <script src="js/main.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
  
      gtag('config', 'UA-23581568-13');
    </script>
  </body>
  </html>
  






                

<?php 
include "connection.php";

      if(isset($_POST['add']))
      {
$course_id=$_POST['course_id'];
$stud_id=$_POST['stud_id'];
$date=date('Y-m-d H:i:s');

$teacher_id=$_POST['teacher_id'];

       if($_FILES['teacher_image']['name'] == '')
       {
           $teacher_image = '';
       }
       else{
            
        $teacher_image = $_POST['teacher_image'];
            $teacher_image = $_FILES['teacher_image']['name'];
            $teacher_image = preg_replace("/\s+/","_",$teacher_image);
            $image_tmp = $_FILES['teacher_image']['tmp_name'];
            $teacher_image_ext = pathinfo($teacher_image,PATHINFO_EXTENSION);
      $teacher_image = pathinfo($teacher_image,PATHINFO_FILENAME);
      
      $teacher_image = $teacher_image."_".date("mjYHis").".".$teacher_image_ext;
      
            move_uploaded_file($image_tmp,"$teacher_image");
       }

       
        $insert_teacher = "insert into assignment_student(course_id,stud_id,file,date,teacher_id) values('$course_id','$stud_id','$teacher_image','$date','$teacher_id')";
        if($run_insert_teacher = mysqli_query($conn,$insert_teacher)){
            echo "<script>
                alert('teacher Inserted Successfully !!');
                window.open('adminprocess.php','_self')
            </script>";
        

        }
        else{
           echo "<script>alert('Teacher is already in database !!');</script>";
        }
      }

 ?>
</body>
</html>