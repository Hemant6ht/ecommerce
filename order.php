<?php
 if(isset($_GET['order']))
 {
   session_start();
   $userid=$_SESSION['email'];
   $pname=$_GET['pname'];
   $quant=$_GET['quantity'];
   $price=$_GET['tprice'];
   $mobile=$_GET['mobile'];
   $address=$_GET['address'];
   $name=$_GET['uname'];
   include("connect.php");
   $q="insert into orders(username,pname,quantity,price,mobile,address) values('$userid','$pname','$quant',$price,$mobile,'$address');";
   mysqli_query($con, $q);
   if(mysqli_affected_rows($con))
   {
         include("connect2.php");
         $q2="select * from orders where username='$userid' and pname='$pname'";
         $res2= mysqli_query($con2, $q2);
         $row2= mysqli_fetch_array($res2);
     echo "HELLO $name <br>"; 
     echo "Order placed<br>";
     echo "Order id:$row2[order_id]";
     mysqli_close($con2);
     

   }
   mysqli_close($con);  
   echo "<a href=index.php>Continue Shoping</a>";
 }
?>
