<?php
if(isset($_POST['lbtn']))
{
    $pid=$_POST['pid'];
    $name=$_POST['name'];
    $ram_rom=$_POST['ram_rom'];
    $software=$_POST['software'];
    $size=$_POST['size'];
    $processor=$_POST['processor'];
    $price=$_POST['price'];
    $f=$_FILES['myfile2'];
    move_uploaded_file($f['tmp_name'],"../images/laptop/$pid.jpg");
    include("../connect.php");
    $q="insert into laptop values('$pid','$name','$ram_rom','$software','$size','$price','$processor')";
    mysqli_query($con, $q);
    if(mysqli_affected_rows($con)>0)
    {
        echo"done";
        
    }
    else
    {
        
       echo "wrong input data";
       echo mysqli_error($con);
    }
 }
 ?>