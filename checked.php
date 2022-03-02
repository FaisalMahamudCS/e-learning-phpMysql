<?php
session_start();
include  "navstudent.php";

   $con = mysqli_connect('localhost','root');
   	// if($con){
   	// 	echo"connection";
   	// }
	   mysqli_select_db($con,'bgc');
	   
	   if(isset($_POST['submit'])){
		if(!empty($_POST['quizcheck'])) {
		// Counting number of checked checkboxes.
		$checked_count = count($_POST['quizcheck']);
		// print_r($_POST);
		//echo "Out OF 5 you selected".$checked_count."Option";
		$result=0;
		$i=1;
$selected=$_POST['quizcheck'];
//print_r($selected);

$q="select * from questions";
$query=mysqli_query($con,$q);
while($rows=mysqli_fetch_array($query)){
	$quizid=$rows['quizid'];
	//print_r($rows['ans_id']);
	$checked=$rows['ans_id'] == $selected[$i];
if($checked){
	$result++;
	
}
$i++;
}

		}
	}

	
$quizing="select * from quiz where quiz_id='$quizid'";
$query=mysqli_query($con,$quizing);
while($rows=mysqli_fetch_array($query)){
$name=$rows['name'];
}
include "connection.php";
	$id=$_SESSION['id'];
	$sql="insert into  student_quiz(quiz_ansid,std_id,totalques,correct_ans,quizid,name) values('NULL','$id','$checked_count','$result','$quizid','$name')";
	$query=mysqli_query($conn,$sql);
	?>
 <div class="container text-center" >
     	<br><br>
    	
    	<br><br><br><br>
      <table class="table text-center table-bordered table-hover thead-dark">
	  <thead class="thead-dark">
<th>
Attemped

</th>

<th>
Result
</th>
</thead>
      	<tr>
      		<td>
			  <?php
        
            echo "Out of 5, You have attempt ".$checked_count." option.";




			
			?>
			  </td>
			  <td>
			  <?php
			 echo $result;
			 ?> 
			  </td>

      		
      	</tr>
      
 