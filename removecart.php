<?php
session_start();
if(isset($_SESSION['email']))
{
    $pid=$_GET['pid'];
    include("connect.php");
    $q="delete from cart where user_id='$_SESSION[email]' and product_id='$pid'";
    mysqli_query($con, $q);
    if(mysqli_affected_rows($con)>0)
    {
       header("location:yourcart.php");
        
    }
 else {
     echo "error in query";       
 }
  
}
 else {
    header("location:index.php");   
 }
?>