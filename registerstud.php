<?php
session_start();
?>


  <!DOCTYPE html>
  <html lang="en">
  <head>
    <title>Register </title>
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
     
        <form class="contact100-form validate-form" method="post" action="registerprocess.php" enctype="multipart/form-data">
          <span class="contact100-form-title">
        Register
          </span>
  
          <label class="label-input100" for="first-name">Enter your name *</label>
          <div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Type first name">
            <input id="first-name" class="input100" type="text" name="first_name" placeholder="First name">
            <span class="focus-input100"></span>
          </div>
          <div class="wrap-input100 rs2-wrap-input100 validate-input" data-validate="Type last name">
            <input class="input100" type="text" name="last-name" placeholder="Last name">
            <span class="focus-input100"></span>
          </div>
  
          <label class="label-input100" for="email">Enter your email *</label>
          <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
            <input id="email" class="input100" type="text" name="email" placeholder="Eg. example@email.com">
            <span class="focus-input100"></span>
          </div>
  
          <label class="label-input100" for="phone">Enter phone number</label>
          <div class="wrap-input100">
            <input id="phone" class="input100" type="text" name="phone" placeholder="Ex. +8801927549653">
            <span class="focus-input100"></span>
          </div>
  
          <label class="label-input100" for="phone">Enter Photo</label>
          <div class="wrap-input100">
          <input class="input form-control input100" type="file" name="teacher_image">
            <input id="phone" class="input100" type="file" name="teacher_image" >
            <span class="focus-input100"></span>
          </div>
  
  
          <div class="container-contact100-form-btn">
              
       
          
                <input type="submit" value="register" class="contact100-form-btn" >
             
          
          </div>
        </form>
 
      
        <div class="contact100-more flex-col-c-m" style="background-image: url('contact/images/bg-01.jpg');">
          <div class="flex-w size1 p-b-47">
            <div class="txt1 p-r-25">
              <span class="lnr lnr-map-marker"></span>
            </div>
          
            <div class="flex-col size2">
              <span class="txt1 p-b-20">
                Address
              </span>
  
              <span class="txt2">
                Chandhanaish,Chottogram
              </span>
            </div>
          </div>
  
          <div class="dis-flex size1 p-b-47">
            <div class="txt1 p-r-25">
              <span class="lnr lnr-phone-handset"></span>
            </div>
  
            <div class="flex-col size2">
              <span class="txt1 p-b-20">
              Contact
              </span>
  
              <span class="txt3">
              01811013898
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
$conn = mysqli_connect('127.0.0.1','root','','bgc');



      if(isset($_POST['register']))
      {
          $first_name=$_POST['first_name'];
          $last_name=$_POST['last-name'];
          $email=$_POST['email'];
          $phone=$_POST['phone'];
          $file=$_POST['teacher_image'];

echo $first_name;
   //     $image = $_FILES['image']['name'];
        // Get text
      
  
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

  
  
        // image file directory
      //  $target =basename($image);
       // $target="C:/xampp/htdocs/dashboard/working_file/".basename($image);
        //$target=basename($image);
      
 //  $sql = "INSERT INTO assignment(assignment_id) VALUES ('1')";
        
        
        
     $sql = "INSERT INTO `assignment` (`assignment_id`, `teacher_id`, `course_id`, `assign_name`,`assign_details`, `assignment_date`, `file`) VALUES (NULL, '$id', '$course', '$assignment', '$assignment_dets','$assignment_date', '$teacher_image')";
        
        
        
        
        
        
        // execute query
        $result=mysqli_query($conn, $sql);
echo $result;  
        if($result) {
    
            
            echo "<script>
            alert('You are registered successfully!!');
            window.open('admin_notice.php','_self');
       </script>

      ";
        }else{
            
        }
      
      
    }


 ?>
</body>
</html>
