<?php
if(isset($_GET['movie_id'])) {
     $id  = $_GET['movie_id'];
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

if($id>0) {
 $sql = "SELECT h.Hero_id,h.Name Name_Actor,h.Picture_link FROM hero h,hero_in_movie hm,movie m WHERE h.Hero_id=hm.Hero_id and m.Movie_id=hm.Movie_id and Movie_id=.$id";
} else {
 $sql = "SELECT h.Hero_id,h.Name Name_Actor,h.Picture_link FROM hero h,hero_in_movie hm,movie m WHERE h.Hero_id=hm.Hero_id and m.Movie_id=hm.Movie_id order by h.Hero_id asc";
}
 $result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  echo'<!DOCTYPE html><html lang="en-US"><head><title>CT519 Lab2</title></head><body>';
  
  echo'Title การแสดงรายชื่อ Hero โดย นาย พีรสุต อันมหาพงษ์ รหัส 645162010002<br>';
  echo'+-------------------------------------------------------------------------------------------------------+<br><br>';

  $pre_id = 0;
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
    
   if ($pre_id != $row['Hero_id'])
   {   
     echo '<a href="hero.php?id='.$row['Hero_id'].'" target="_bank"><img src="'.$row['Picture_link'].'" style="width:200px;height:140px;"></a>';
  
     echo '  ชื่อ: <a href="hero.php?id='.$row['Hero_id'].'" target="_bank">'.$row['Name_Actor'].'</a><br><br>';  
   } 

    $pre_id = $row['Hero_id'];	 
  
  }

  echo '<br><br><br>Developed by <a href="http://'.$_SERVER['SERVER_NAME'].':9902" target="_bank">นาย พีรสุต อันมหาพงษ์</a><br>';

  echo '</body></html>';



} else {
  echo "0 results";
}



//Free result set
mysqli_free_result($result);
mysqli_close($conn);
?>
