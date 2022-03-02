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

<div class="container-fluid">
                

                <div class="row">
                    
                     <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                            <?php
                          
include "connection.php";

$teacher_id = $_GET['catagory_id'];
$get_teachers_data = "select * from catagory where cat_id = '$teacher_id'";
$run_teachers_data = mysqli_query($conn,$get_teachers_data);
$row_teachers_data = mysqli_fetch_array($run_teachers_data);


?>


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
         Admin Login
          </span>
  
          <label class="label-input100" for="email">Enter Catagory Name</label>
          <div class="wrap-input100 validate-input" >
            
            <input id="email" class="input100" type="text" name="cat_name"  value="<?php echo $row_teachers_data['cat_name']; ?>" >
            <span class="focus-input100"></span>
          </div>
  
          <label class="label-input100" for="phone">Enter Photo</label>
          <div class="wrap-input100">
          <input class="input100" type="file" name="teacher_image">
            <span class="focus-input100"></span>
          </div>
          <label class="label-input100" for="email">Enter Total Course</label>
          <div class="wrap-input100 validate-input" >
            <input id="email" class="input100" type="text" name="course"  value="<?php echo $row_teachers_data['course']; ?>" >
            <span class="focus-input100"></span>
          </div>
  
          <label class="label-input100" for="email">Catagory Details</label>
          <div class="wrap-input100 validate-input" >
            <input id="email" class="input100" type="text" name="cat_details"  value="<?php echo $row_teachers_data['cat_details']; ?>" >
            <span class="focus-input100"></span>
          </div>
  
         
            <input type="submit"  class='contact100-form-btn'  style="margin-left:110px;margin-top:80px" name='update'>

            <span class="focus-input100"></span>
          
        </form>
 
      
        <div class="contact100-more flex-col-c-m" style="background-image: url('contact/images/bg-01.jpg');">
          <div class="flex-w size1 p-b-47">
            <div class="txt1 p-r-25">
              <span class="lnr lnr-map-marker"></span>
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


      if(isset($_POST['update']))
      {

        $cat_name=$_POST['cat_name'];
        $course=$_POST['course'];
        $cat_details=$_POST['cat_details'];
        

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

       

      $update_teachers = "update catagory set cat_name = '$cat_name' ,course='$course',cat_details='$cat_details'  where cat_id= '$teacher_id'";
      if($run_update_teachers = mysqli_query($conn,$update_teachers)){
          echo "<script>
              alert('Catagory Edited Successfully !!');
              window.open('adminprocess.php','_self')
          </script>";
      }
    }



 ?>
</body>
</html>