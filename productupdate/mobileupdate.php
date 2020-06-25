
<?php
if(isset($_POST['mbtn']))
{
    $pid=$_POST['pid'];
    $name=$_POST['name'];
    $ram_rom=$_POST['ram_rom'];
    $battery=$_POST['battery'];
    $camera=$_POST['camera'];
    $processor=$_POST['processor'];
    $price=$_POST['price'];
    $f=$_FILES['myfile'];
    move_uploaded_file($f['tmp_name'],"../images/mobile/$pid.jpg");
    include("../connect.php");
    $q="insert into mobile values('$pid','$name','$ram_rom','$battery','$camera','$processor',$price)";
    mysqli_query($con, $q);
    if(mysqli_affected_rows($con)>0)
    {
        echo"done";
        
    }
    else{
        
        echo "wrong input data";
       echo mysqli_error($con);
    }
        
    
    
    
    
}
    
    
    
    
    
    ?>