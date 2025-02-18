<?php

$conn= mysqli_connect("localhost","root","","chpl");

$sql= "SELECT * FROM menu_item";
$result= mysqli_query($conn,$sql);

if(mysqli_num_rows($result)>0){
      $menu=[];
    while($row=mysqli_fetch_assoc($result)){
      
     $menu[]=$row;

    }
    echo json_encode($menu);

}else{
    echo "No Data Found.";
}


?>