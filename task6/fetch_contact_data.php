<?php

$conn= mysqli_connect("localhost","root","","chpl");

$sql= "SELECT * FROM contact_data where id =2";
$result= mysqli_query($conn,$sql);

$contact=[];

if(mysqli_num_rows($result)>0){
    
    while($row=mysqli_fetch_array($result)){
        $contact[]=$row;
    }
    echo json_encode($contact);

}else{
    echo "No Data Found.";
}


?>