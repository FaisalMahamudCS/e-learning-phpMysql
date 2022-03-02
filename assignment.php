<?php
session_start();


?>

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
<div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Edit Assignment Details</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active"><a href="admin_teacher_details.php">Teacher Details</a></li>
                        <li class="breadcrumb-item active"><a href="#">Edit Teacher</a></li>
                    </ol>
                </div>
            </div>
<div class="container-fluid">
                

                <div class="row">
                    
                     <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                            <?php
                            include "connection.php";
                           // $conn = mysqli_connect('127.0.0.1:3325','root','','bgc');



?>
                                
                                <form method="post" action="" enctype="multipart/form-data">
                                    
                                <p>Course ID</p>
                                    <input class="input form-control" placeholder="Enter Course Name" type="text" name="course"  required><br>
                                 

                                    <p>Assignment Name</p>
                                    <input class="input form-control" placeholder="Enter Assignment Name" type="text" name="assignment"  required><br>
                                   

                                    <p>Assignment Details</p>
                                    <input class="input form-control" placeholder="Enter Assignment Details" type="text" name="assignment_det"  required><br>
                                   

                                    <p>Assignment Date</p>
                                    <input class="input form-control" placeholder="Enter Assignment date" type="date" name="assignment_date"  required><br>
                                   
                                    <p>Select Assignment File</p>
                                    <input class="input form-control" type="file" name="teacher_image">
                                    <br>



                                 
                                    
                                    <input class="btn btn-block btn-success" type="submit" name="add" value="Add Notice">

                                </form>
                            </div>
                    
                </div>
</div>

                

<?php 
$conn = mysqli_connect('127.0.0.1','root','','bgc');
echo $_SESSION['teacher_id'];


      if(isset($_POST['add']))
      {
      $course=$_POST['course'];
      $assignment=$_POST['assignment'];
      $assignment_det=$_POST['assignment_det'];
      $assignment_date=$_POST['assignment_date'];
      $assignment_det=$_POST['assignment_det'];
      $id=$_SESSION['teacher_id'];
echo $course;
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
            alert('Notice Added Successfully !!');
            window.open('admin_notice.php','_self');
       </script>

      ";
        }else{
            
        }
      
      
    }


 ?>
</body>
</html>