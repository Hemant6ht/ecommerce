<?php
 session_start();
 if(isset($_SESSION['email']))
 {
 include("connect.php");
 $q="select * from orders where username='$_SESSION[email]'";
 $res=mysqli_query($con, $q);
 $num= mysqli_num_rows($res);
 }
 else
 {
  header('location:./index.php');
 }
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./static/header.css">

    <title>Shopify</title>
    <style>
      body{
        margin: 0px;
      }
    </style>
  </head>
  <body>
    <div class="container-fluid">
        <?php include('./header.php')?>
        <h2 style="background-color: lightyellow"><center>Your Order Details</center></h2>
        <div class="row" style="min-height: 300px;background-color: lightyellow">
          <div class="col-sm-12">
                   <?php
                   if($num>0)
                   {
                    ?>
                     <table border="5px" class="table" >
                     <tr>
                      <th>Order Id</th>
                      <th>Product Name</th>
                      <th>Total Price</th>
                      <th>Billing Addres</th>
                     </tr>
                    <?php
                       for($i=0;$i<$num;$i++)
                       {
                           $row= mysqli_fetch_array($res);
                          echo "<tr>";
                          
                          echo"<td>".$row['order_id']."</td>";
                          echo"<td>".$row['pname']."</td>";
                          echo"<td>".$row['price']."</td>";
                          echo"<td>".$row['address']."</td>";
                          echo "<tr>";
                           
                       }
                   }
                   echo "</table>";
                   
                   ?>
                    
                    
                </div>
            </div>
        
        <?php include("footer.php"); ?>
        </div>
        <script type="text/javascript">
         var pos=()=>{
          var quant=document.getElementById('quant');
          var x=parseInt(quant.value)
          if(x<5)
          quant.value=x+1;
        }
        var neg=()=>{
          var quant=document.getElementById('quant');
          var x=parseInt(quant.value)
          if(x>0)
           quant.value=x-1;

        }
        </script>
        <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
