<?php
if(isset($_GET['id'])) {
     $id  = $_GET['id'];
   } else {
     $id = null;
   }

$servername = "10.1.1.22";
$username = "peer";
$password = "abCd@1234";
$dbname = "0002_Lab_Exam";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

//if($id>0) {
 //$sql = "SELECT h.Hero_id,h.Name Name_Actor,h.Detail,h.Picture_link,m.* FROM hero h,hero_in_movie hm,movie m WHERE h.Hero_id=hm.Hero_id and m.Movie_id=hm.Movie_id and h.Hero_id=$id";
//} else {
 $sql = "SELECT h.Hero_id,h.Name Name_Actor,h.Detail,h.Picture_link,m.* FROM hero h,hero_in_movie hm,movie m WHERE h.Hero_id=hm.Hero_id and m.Movie_id=hm.Movie_id and h.Hero_id=$id";
//}
 $result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  echo'<!DOCTYPE html><html lang="en-US"><head><title>CT519 Lab2</title></head><body>';
  

  $count = 0;

  while($row = mysqli_fetch_assoc($result)) {

     
      if ($count < 1) {	

  	echo'Title รายละเอียดของ '.$row['Name_Actor'].' โดย นาย พีรสุต อันมหาพงษ์ รหัส 645162010002<br>';
  	echo'+-------------------------------------------------------------------------------------------------------+<br><br>';
        
    	echo '<img src="'.$row['Picture_link'].'" style="width:200px;height:140px;">';  
    	echo '  ชื่อ: '.$row['Name_Actor'].'<br><br>';    
    	echo 'Detail: '.$row['Detail'].'<br><br><br>';
        echo'ปรากฎในภาพยนตร์<br><br>';
      }
		

    	echo ' - <a href="'.$row['Trailer_link'].'" target="_blank">'.$row['Name'].'<br><br><br>';
	
	$count = $count + 1;
    	

  }
  
  echo '<a href="index.php" target="_bank">Home</a><br><br>'; 
 	
  echo '</body></html>';



} else {
  echo "0 results";
}



//Free result set
mysqli_free_result($result);
mysqli_close($conn);
?>
