<?php session_start() ?>
<?php
if(!isset($_SESSION['email']))
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
      .modify{display:none;}
    </style>
  </head>
  <body>
    <div class="container-fluid">
      <?php include('./header.php')?>
      <div class="row">
                <div class="col-sm-12" style="margin-left: 15px; margin-right: 15px;margin-bottom: 10vh">
                    <h2 style="font-family: monospace;">Shopify Partner Program</h2>
                    <p style="font-family: monospace;">Now you can list your your own product on shopify website and earn by this .All the revenue
                        genrated by selling your product will be distributed in 3:7 ration where 3 will by shopify 
                        and remaining 7 part will be your .It is a golden chance to enhance your buisness and sell 
                        your product to entire india rather than commiting to your locality.</p>
                    <p style="font-family: monospace;"> Please read the <a href="#">term and condition</a> before becoming a part</p><br><br>
                  <font face="monospace">
                    <form id="f0" name="f" align="center" style="display: flex;justify-content: space-around;">
                    <label>SELECT YOUR PRODUCT CATEGORY</label>
                    <select name="s1" class="form-control" style="width: 20%">
                        
                        <option>Select your product category</option>
                        <option>Mobile</option>
                        <option>Laptop</option>
            
                    </select>
                    <input type="button" onclick="sm1()" value="select" class="btn btn-danger">
                    </form>
                    <div style="margin-top: 10vh">
                    <!-- mobile update -->
                    
                      <table class="modify mr-3" id="f1" style="background-color: lightgray;padding: 5vh 25vw;border:2px solid red">
                        <center>
                        <form action="./productupdate/mobileupdate.php" method="post" enctype="multipart/form-data" style="">
                          <tr>
                            <th colspan="2"><h3>Mobile form</h3><hr></th>
                          </tr>
                          <tr>
                            <td><label>ENTER PRODUCT ID</label></td>
                            <td><input type="text" name="pid" placeholder=" Start with M011" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER PRODUCT NAME</label></td>
                            <td><input type="text" name="name"placeholder="Name of product" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER RAM ROM SIZE</label></td>
                            <td><input type="text" name="ram_rom" placeholder="*GB | *GB format" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER BATTERY CAPACITY</label></td>
                            <td><input type="text" name="battery" placeholder="1000mAH format" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER CAMERA QUALITY</label></td>
                            <td><input type="text" name="camera" placeholder="*MP + *MP format" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER NAME OF PROCESSOR</label></td>
                            <td><input type="text" name="processor" placeholder="Snapdragon 660 format" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER PRICE OF PRODUCT</label></td>
                            <td> <input type="text" name="price" placeholder="10000 format" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td colspan="2"><input type="file" name="myfile" style="margin-top: 5px" accept="image/*"></td>
                          </tr>
                          <tr>
                            <td colspan="2"><input type="submit" name="mbtn" class="btn btn-success" style="margin-top: 5px"></td>
                          </tr>
                        </form>
                      </center>
                      </table>
            
                    <!-- laptop form -->
                   
                      <table class="modify mr-3" id="f2" style="background-color: lightgray;padding: 5vh 25vw;border:2px solid red"> 
                        <form action="./productupdate/laptopupdate.php" method="post" enctype="multipart/form-data">
                          <tr>
                            <TH colspan="2"><h3>Laptop form</h3><hr></th>
                          </tr>
                          <tr>
                            <td><label>ENTER PRODUCT ID</label></td>
                            <td><input type="text" name="pid" placeholder=" Start with L011" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER PRODUCT NAME</label></td>
                            <td><input type="text" name="name" placeholder="Name of product" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER RAM ROM SIZE</label></td>
                            <td><input type="text" name="ram_rom" placeholder="*GB | *GB format" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER SOFTWARE</label></td>
                            <td><input type="text" name="software" placeholder="Windows 10 Home format" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER SIZE</label></td>
                            <td><input type="text" name="size" placeholder="16 inch format" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER NAME OF PROCESSOR</label></td>
                            <td><input type="text" name="processor" placeholder="Intel I3 4th genearation Format" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td><label>ENTER PRICE OF PRODUCT</label></td>
                            <td> <input type="text" name="price" placeholder="10000 format" style="margin-top: 5px"></td>
                          </tr>
                          <tr>
                            <td colspan="2"><input type="file" name="myfile2" style="margin-top: 5px" accept="image/*"></td>
                          </tr>
                          <tr>
                            <td colspan="2"><input type="submit" name="lbtn" class="btn btn-success" style="margin-top: 5px"></td>
                          </tr>
                        </form>
                      </table>

                    </div>
                  </font>
                    
                    
                    
                </div>
            </div>


      <?php include('./footer.php')?>
      
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script type="text/javascript">
      function sm1(){
        if(f.s1.value=='Mobile')
        {
           document.getElementById('f1').style.display="block";
           document.getElementById('f2').style.display="none";
        } 
        else if(f.s1.value=='Laptop')
        {
           document.getElementById('f2').style.display="block";
           document.getElementById('f1').style.display="none";
        }

      }
    </script>
  </body>
</html>