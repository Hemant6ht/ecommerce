<?php
session_start();
if(!isset($_SESSION['email']))
{
    $msg="<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Holy God!</strong>Wrong login details please correct it.<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
    header("location:./index.php");
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
         <div class="row" style="margin-bottom: 50px">
                <div class="col-sm-12" style="margin-left: 15px; margin-right: 15px">
                    <?PHP
                    
                    $cate=$_GET['category'];
                    $pid=$_GET['pid'];
                    $quantity=$_GET['quantity'];
                    include("connect.php");
                    $q="select * from $cate where pid='$pid'";
                    $res= mysqli_query($con,$q);
                    $row= mysqli_fetch_array($res);
                    include("connect2.php");
                    $q2="select * from userinfo where email='$_SESSION[email]'";
                    $res2= mysqli_query($con2,$q2);
                    $row2= mysqli_fetch_array($res2);
                    ?>
                  
                  
                    <form action="order.php">
                        <table border="1" align="center" class="table">
                           <center> <cation><h3>ORDER THIS</h3></caption></center>
                        <tr>
                          <th><label>PRODUCT NAME:</label></th>
                          <td><textarea readonly style="width:100%" name="pname"><?php echo  $row['name'] ?></textarea></td>
                        </tr>
                        <tr>
                          <th><label>PRICE</label></th>
                          <td><input type='text' name="ppq" value="<?php echo $row['price'];?>" readonly style="width:100%"></td>
                        </tr>
                        <tr>
                          <th><label>QUANTITY</label></th>
                          <td><input type='number' name="quantity" value="<?php echo $quantity;?>" readonly style="width:100%"></td>
                        </tr>
                        <tr>
                          <th><label>TOTAL PRICE</label></th>
                          <td><input type='text' name="tprice" value="<?php echo $quantity*$row['price'];?>"readonly style="width:100%"></td>
                        </tr>
                         <tr>
                          <th> <label>ENTER YOUR NAME</label></th>
                          <td><input type='text' name="uname" placeholder="your name" style="width:100%"></td>
                        </tr>
                        <tr>
                          <th> <label>MOBILE</label></th>
                          <td><input type='text' name="mobile" value="<?php echo $row2['mobile'];?>" style="width:100%"></td>
                        </tr>
                          <tr>
                          <th><label>ADDRESS TO DELIVER</label></th>
                          <td><textarea style="width:100%" name="address"><?php echo  $row2['address'] ?></textarea></td>
                        </tr>
                        <tr>
                           <td colspan="2"><input type="submit" name="order" value="PLACE ORDER" style="width:100%"></td>
                        </tr>
                        
                    </table></form>
                    
                    <?php mysqli_close($con);
                    mysqli_close($con2);
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
