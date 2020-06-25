<?php
session_start();
if(isset($_GET['buy'])and isset($_SESSION['email']))
{
   $pid=$_GET['pid'];
   $quant=$_GET['quant'];
  header("location:buy.php?pid=$pid&category=mensclothing&quantity=$quant"); 
    
    
    
}
elseif(!isset($_SESSION['email'])and isset($_GET['buy'])){
    $pid=$_GET['pid'];
    header("location:mensclothingnuy.php?pid=$pid&msg3=please login first to Buy");
    
}
?>
<?php include('./regsiter.php')?>
<?php include('./login.php')?>
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
      <?php echo $msg; ?>
      <!-- Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Login  to Your Account</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST">
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword1">
          </div>
          <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
          </div>
            <input type="submit" name="btn_lgn" class="btn btn-primary" value="LOGIN">
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- login modal ends here -->
<!-- register modal -->
      <div class="modal fade" id="registerModal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Register in Shopify</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                <form method="POST" action="">
                  <div class="form-group">
                    <label for="fullname">Your Name</label>
                    <input type="text" name="fullname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  </div>
                  <div class="form-group">
                    <label for="mobile">Mobile Number</label>
                    <input type="text" name="mobile" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" name="password" class="form-control" id="exampleInputPassword1">
                  </div>
                  <div class="form-group">
                    <label for="address">Address</label>
                    <textarea height="50" width="100%" class="form-control" name="Add"></textarea>
                  </div>
                  <input type="submit" class="btn btn-primary" value="REGISTER" name="btn_reg">
                </form>
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>
<!-- register modal ends here -->
        <div class="row">
                <div class="col-sm-12" style="margin-left: 15px; margin-right: 15px">
                   
                  <?php 
              
                      $pid=$_GET['pid'];
                      include("connect.php");
                      $q="select * from mensclothing where pid='$pid'";
                      $res= mysqli_query($con,$q);
                      echo mysqli_error($con);
                      $rowarr= mysqli_fetch_assoc($res);    
                  
                  ?>
                  <div class="row">
                    <div class="col-sm-4 bg-info" style="margin-left:1vw;padding: 5vh 5vw;">
                        <div class="row">
                            <div class="col-sm-12" style="margin-bottom: 10px">
                                <?php if(isset($_GET['msg3']))
                                    echo $_GET['msg3'];
                                    ?>
                                <img src="./images/mensclothing/<?php echo $pid ?>.jpg" class="img-responsive">
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-sm-12">
                                <?php
                                  echo "<font color=blue size=6px >".$rowarr['name']."</font>  <br><br> ";
                          echo "<font color=brown size=4px >".$rowarr['company']."</font>  <br> ";
                          echo "<font color=brown size=4px >".$rowarr['type']."</font>  <br> ";
                          echo "<font color=brown size=4px >".$rowarr['material']."</font>  <br> ";
                           echo "<font color=brown size=4px >".$rowarr['fit']."</font>  <br> ";
                          echo "<font color=brown size=4px >".$rowarr['quality']."</font>  <br><br> ";
                          echo "<font color=black size=5px >Rs".$rowarr['price']."</font>  <br> ";
                          ?>
                            </div>
                        </div>
                        
                    </div>

                    <div class="col-sm-7" style="padding: 5vh;display: flex;flex-direction: column;">
                              <a href="cartmensclothing.php?pid=<?php echo $pid; ?>&category=mensclothing" style="margin-bottom: 10vh;width: 30%" class="btn btn-primary"><?php
                        if(isset($_GET['msg']))
                        {
                            echo $_GET['msg'];
                        }
                        else{
                            echo "ADD TO CART";
                        }
                        
                        ?></a>
                        <form name="f1" style="display: flex;flex-direction: column;margin-bottom: 10vh">
                             <INPUT TYPE="submit" class="btn btn-danger" name="buy" VALUE="BUY NOW" style="width: 25%">
                                &nbsp;&nbsp;
                        <div>
                        <label>QUANTITY:</label>
                       </div>
                        <div>
                        <input type="button" value="+" id="plus"  onclick="pos()" class="btn" style="border:1px solid teal;">
                        <input type="text" style="width:5%;padding-left: 5px" value="1" name="quant" id="quant" readonly>
                        <input type="button" value="-" id="minus" onclick="neg()" class="btn" style="border:1px solid teal;">
                        </div>
                        <input type="hidden" name="pid" value="<?php echo $pid; ?>">
                        </form>
                
                    
                        
                            <h3 class="">PRODUCT DESCRIPTION:</h3><br>
                           <?php
                                 
                          echo "<font color=brown size=4px >".$rowarr['company']."</font>  <br> ";
                          echo "<font color=brown size=4px >".$rowarr['type']."</font>  <br> ";
                          echo "<font color=brown size=4px >".$rowarr['material']."</font>  <br> ";
                           echo "<font color=brown size=4px >".$rowarr['fit']."</font>  <br> ";
                          echo "<font color=brown size=4px >".$rowarr['quality']."</font>  <br><br> ";
                          
                          ?>
                        </div>
                    </div>
               
                    
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
