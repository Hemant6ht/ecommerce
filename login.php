<?php
   $msg="";
  if(isset($_POST['btn_lgn']))
  {
      $email=$_POST['email'];
      $password=$_POST['password'];
      include("connect.php");
      $q="select * from userinfo where email='$email' and password='$password'";
      $res= mysqli_query($con, $q);
      $num= mysqli_num_rows($res);
      if($num==1){
      session_start();
      $row= mysqli_fetch_array($res);
      $_SESSION['email']=$row['email'];
      $_SESSION['name']=$row['name'];
      mysqli_close($con);
      header('location:./index.php');
      }
      else
      {
       $msg="<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Holy God!</strong>Wrong login details please correct it.<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";   
      }

  }

?>