<?php
include "connection.php";
echo $uploadfile=$_FILES['uploadfile']['tmp_name'];
require 'PHPExcel_1.8.0_doc/Classes/PHPExcel.php';
require_once 'PHPExcel_1.8.0_doc/Classes/PHPExcel/IOFactory.php';
$objExcel=PHPExcel_IOFactory::load($uploadfile);
foreach($objExcel->getWorksheetIterator() as $worksheet)
{
$highestrow=$worksheet->getHighestRow();
for($row=2;$row<=$highestrow;$row++){
	//id	teacherid	studentID	courseID	assignmentID	marks

    echo $id=$worksheet->getCellByColumnAndRow(0,$row)->getValue();
    echo $teacherid=$worksheet->getCellByColumnAndRow(1,$row)->getValue();
    echo $studentID=$worksheet->getCellByColumnAndRow(2,$row)->getValue();
    echo $courseID=$worksheet->getCellByColumnAndRow(3,$row)->getValue();
    echo $assignmentID=$worksheet->getCellByColumnAndRow(4,$row)->getValue();
    echo $marks=$worksheet->getCellByColumnAndRow(5,$row)->getValue();
    echo $assign_name=$worksheet->getCellByColumnAndRow(6,$row)->getValue();
  

   // echo $name=$worksheet->getCellByColumnAndRow(1,$row)->getValue();
  //  echo $status=$worksheet->getCellByColumnAndRow(12,$row)->getValue();
   // echo $resultid=$worksheet->getCellByColumnAndRow(13,$row)->getValue();
    echo '<br>';

  $insertion= "INSERT INTO `assign_result` (`id`, `teacherid`, `studentID`, `courseID`, `assignmentID`, `marks`,`assign_name`) VALUES ('$id', '$teacherid', '$studentID', '$courseID', '$assignmentID', '$marks','$assign_name')";
      
  $inser=mysqli_query($conn,$insertion);


        //$insert="insert into resultmain(resultid,studentid,name,credit,course_name,course,attendance,classtest,sessional,mid,final,total,grade,status) values('$resultid',$studentid','$name','$credit','$course_name','$course','$attendance','$classtest','$sessional','$midterm','$final','$total','$grade','$status')";
       // $inser=mysqli_query($conn,$insert);
        if($inser){
            echo "uploaded";
            echo $inser;
        }
        else{
            echo "failed";
            echo $inser;
        }
        
    }
}
?>