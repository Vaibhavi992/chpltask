<?php

$conn= mysqli_connect("localhost","root","","chpl");

$sql= "SELECT description FROM about_data where id =2";
$result= mysqli_query($conn,$sql);

if(mysqli_num_rows($result)>0){
    
    while($row=mysqli_fetch_array($result)){
        $about=$row['description'];
    }
    echo json_encode($about);

}else{
    echo "No Data Found.";
}


?>