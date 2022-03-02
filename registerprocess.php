
             

  <?php 
$conn = mysqli_connect('127.0.0.1','root','','bgc');



     // if(isset($_POST['register']))
      //{
          $first_name=$_POST['first_name'];
          $last_name=$_POST['last-name'];
          $email=$_POST['email'];
          $phone=$_POST['phone'];
    

echo $first_name;
   //     $image = $_FILES['image']['name'];
        // Get text
      
  
        //if($_FILES['teacher_image']['name'] == '')
       //{
        //   $teacher_image = '';
      // }
       //else{
            
       // $teacher_image = $_POST['teacher_image'];
            $teacher_image = $_FILES['teacher_image']['name'];
            $teacher_image = preg_replace("/\s+/","_",$teacher_image);
            $image_tmp = $_FILES['teacher_image']['tmp_name'];
            $teacher_image_ext = pathinfo($teacher_image,PATHINFO_EXTENSION);
      $teacher_image = pathinfo($teacher_image,PATHINFO_FILENAME);
      
      $teacher_image = $teacher_image."_".date("mjYHis").".".$teacher_image_ext;
      
            move_uploaded_file($image_tmp,"$teacher_image");
       //}

  
  
        // image file directory
      //  $target =basename($image);
       // $target="C:/xampp/htdocs/dashboard/working_file/".basename($image);
        //$target=basename($image);
      
 //  $sql = "INSERT INTO assignment(assignment_id) VALUES ('1')";
        
        
        
     $sql = "INSERT INTO `profile` (`id`, `name`, `phone`, `picture`,`email`) VALUES (NULL, '$first_name', '$phone', '$teacher_image', '$email')";
        
        
        
        
        
        
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
      
      
    //}


 ?>
</body>
</html>
