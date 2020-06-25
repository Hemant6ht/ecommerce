<?php
$msg="";
if(isset($_POST['btn_reg']))
{
    $name=$_POST['fullname'];
    $email=$_POST['email'];
    $password=$_POST['password'];
    $address=$_POST['Add'];
    $mobile=$_POST['mobile'];
    include("./connect.php");
    $qry="insert into userinfo values('$name','$email',$mobile,'$password','$address')";
    mysqli_query($con,$qry);
    if(mysqli_affected_rows($con)>0)
    {
     $msg="<div class='alert alert-success alert-dismissible fade show' role='alert'><strong>Holy guacamole!</strong> Registraction Successful.<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";  
       
    }
    else
      {
        $msg="<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Holy guacamole!</strong>Some Error Occured.<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>"; 
      }
       mysqli_close($con);
    
}