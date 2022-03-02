
<!doctype html>
<html lang="en">
  <head>
  	<title>Teacher Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Teacher Login </h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
							<div class="text w-100">
								<h2>Welcome to Register</h2>
								<p>Alrady have an account?</p>
								<a href="teacherlogin" class="btn btn-white btn-outline-white">Log Up</a>
							</div>
			      </div>
						<div class="login-wrap p-4 p-lg-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Sign In</h3>
			      		</div>
								
			      	</div>
                      <form method="post" action="" enctype="multipart/form-data">
                                
                      <p>ID</p>
                                    <input class="input form-control" placeholder="Enter  ID" type="text" name="id" required><br>
                                  
                                <p>Name</p>
                                    <input class="input form-control" placeholder="Enter  Name" type="text" name="name" required><br>
                                  
                                    <p>Mail</p>
                                    <input class="input form-control" placeholder="Enter  Mail" type="mail" name="email" required><br>
                                  
                                    <p>Qualification</p>
                                    <input class="input form-control" placeholder="Enter  Qyalification" type="text" name="qualification" required><br>
                                    <p>Choose a subject Catagory</p>                      
<input type="checkbox" name="check_list[]" value="web" id="">Web 
<input type="checkbox" name="check_list[]" value="mobile" id="">Mobile
<input type="checkbox" name="check_list[]" value="graphics" id="">Graphics

                                    
                                    <p>Telephone No</p>
                                    <input class="input form-control" placeholder="Enter Phone no" type="text" name="telephone" required><br>
                                    
                                    <p>Select  Image</p>
                                    <input class="input form-control" type="file" name="teacher_image">
                                    <br>
                                    <p>Semester</p>
                                    <input class="input form-control" placeholder="Enter Semester Name" type="text" name="semester" required>
                                    <br>





                                  
                                    <p>Password</p>
                                    <input class="input form-control" placeholder="Enter  Password" type="password" name="password" required>
                                    <br>
                                    <input class="btn btn-block btn-success" type="submit" name="add" value="Add">

                                </form>
                            </div>
                    
                </div>
</div>

		            </div>
		          </form>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>



<?php 
include "connection.php";

      if(isset($_POST['add']))
      {
        $id=$_POST['id'];
          $qualifiacation=$_POST['qualification'];
          $name=$_POST['name'];
         // $email=$_POST['email'];
        $teacher_email = $_POST['teacher_email'];
        $teacher_pass = $_POST['teacher_pass'];
        $teacher_name = $_POST['teacher_name'];
        

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

        $check_previous = "select * from teach where gmail = '$teacher_email'";
        $run_check_previous = mysqli_query($con,$check_previous);
        $row_check = mysqli_num_rows($run_check_previous);
        if($row_check==0)
        {
        $insert_teacher = "insert into teach(name,photo,qualification,password,gmail,catagory) values('$name','$teacher_image','$qualification','$teacher_pass','$teacher_email','$catagory')";
        if($run_insert_teacher = mysqli_query($conn,$insert_teacher)){
            echo "<script>
                alert('teacher Inserted Successfully !!');
                window.open('teacherlogin.php','_self')
            </script>";
        }

        }
        else{
           echo "<script>alert('Teacher is already in database !!');</script>";
        }
      }

 ?>
</body>





<?php 

include "connection.php"; 


      if(isset($_POST['add']))
      {
          $email=$_POST['email'];
          $id=$_POST['id'];
        $name=$_POST['name'];
$qualification=$_POST['qualification'];
        $telephone=$_POST['telephone'];
     
        $password=$_POST['password'];
         $catagory=$_POST['check_list'];
     
       $insert_teacher = "insert into teach(id,name,qualification,password,email,catagory) values('$id','$name','$qualification','$password','$email','$catagory')";
        if($run_insert_teacher = mysqli_query($conn,$insert_teacher)){
            echo "<script>
                alert('You are registered Successfully !!');
                window.open('studentlogin.php','_self')
            </script>";
        }

        
        else{
           echo "<script>alert('Student is already in database !!');</script>";
        }
      }

 ?>
</body>
</html>