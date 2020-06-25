<?php session_start() ?>
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
      *{
        margin: 0px;
      }
    </style>
  </head>
  <body>
    <div class="container-fluid">
      <?php include('./header.php')?>
      <?php echo $msg; ?>
      <!-- login modal -->

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
      <!-- corousel -->
      <div id="carouselExampleIndicators" class="carousel slide mb-2" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="./images/colo1.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="./images/colo2.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="./images/colo3.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="./images/colo4.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="./images/colo5.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="./images/colo6.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      <!-- corousel ends here -->
      <!-- cards -->
      <h2>Deals Of the Day</h2>
      <div class="row my-4 homeprod" style="display: grid;grid-template-columns: repeat(auto-fit,minmax(250px,1fr));grid-gap: 1rem">
        <div class="card" style="width: 100%;">
          <img src="./images/television/T002.jpg" class="card-img-top" alt="..." height="220vh" width="40vw">
          <div class="card-body text-center">
            <h5 class="text-primary">MarQ by <br>Shopify LED Smart <br>Android Tv</h5>
            <div class="my-4" style="display: flex;justify-content: space-around;">
              <h6 class="text-danger">Rs <del>30000</del></h6><h4 class="text-success"><strong><u>Rs 28999</u></strong></h4>
            </div>
            <hr>
            <div style="display: flex;justify-content: space-around;">
              <a href="televisionbuy.php?pid=T002" class="btn btn-lg btn-block btn-primary">Explore</a>
            </div>
          </div>
        </div>
        <div class="card" style="width: 100%;">
          <img src="./images/ac/ac005.jpg" class="card-img-top" alt="..." height="220vh" width="40vw">
          <div class="card-body text-center">
            <h5 class="text-primary">Samsung 1 Ton<br> 3 Star Split <br>Inverter AC</h5>
            <div class="my-4" style="display: flex;justify-content: space-around;">
              <h6 class="text-danger">Rs <del>42000</del></h6><h4 class="text-success"><strong><u>Rs 41390</u></strong></h4>
            </div>
            <hr>
            <div style="display: flex;justify-content: space-around;">
              <a href="acbuy.php?pid=ac005" class="btn btn-lg btn-block btn-primary">Explore</a>
            </div>
          </div>
        </div>
        <div class="card" style="width: 100%;">
          <img src="./images/television/T009.jpg" class="card-img-top" alt="..." height="220vh" width="40vw">
          <div class="card-body text-center">
            <h5 class="text-primary">Sony Full <br>HD LED Smart <br>TV</h5>
            <div class="my-4" style="display: flex;justify-content: space-around;">
              <h6 class="text-danger">Rs <del>51000</del></h6><h4 class="text-success"><strong><u>Rs 49990</u></strong></h4>
            </div>
            <hr>
            <div style="display: flex;justify-content: space-around;">
              <a href="televisionbuy.php?pid=T009" class="btn btn-lg btn-block btn-primary">Explore</a>
            </div>
          </div>
        </div>
        <div class="card" style="width: 100%;">
          <img src="./images/laptop/L004.jpg" class="card-img-top" alt="..." height="220vh" width="40vw">
          <div class="card-body text-center">
            <h5 class="text-primary">Lenevo Yoga<br> 730 Core i7<br> 8th Gen</h5>
            <div class="my-4" style="display: flex;justify-content: space-around;">
              <h6 class="text-danger">Rs <del>110000</del></h6><h4 class="text-success"><strong><u>Rs 109990</u></strong></h4>
            </div>
            <hr>
            <div style="display: flex;justify-content: space-around;">
              <a href="laptopbuy.php?pid=L004" class="btn btn-lg btn-block btn-primary">Explore</a>
            </div>
          </div>
        </div>
        <div class="card" style="width: 100%;">
          <img src="./images/laptop/L006.jpg" class="card-img-top" alt="..." height="220vh" width="40vw">
          <div class="card-body text-center">
            <h5 class="text-primary">Asus X <br>Series Core i3<br> 7th Gen</h5>
            <div class="my-4" style="display: flex;justify-content: space-around;">
              <h6 class="text-danger">Rs <del>60000</del></h6><h4 class="text-success"><strong><u>Rs 58990</u></strong></h4>
            </div>
            <hr>
            <div style="display: flex;justify-content: space-around;">
              <a href="laptopbuy.php?pid=L006" class="btn btn-lg btn-block btn-primary">Explore</a>
            </div>
          </div>
        </div>
        <div class="card" style="width: 100%;">
          <img src="./images/tablet/Tab_1002.jpg" class="card-img-top" alt="..." height="220vh" width="40vw">
          <div class="card-body text-center">
            <h5 class="text-primary">Apple<br> ipad<br>(Space Grey)</h5>
            <div class="my-4" style="display: flex;justify-content: space-around;">
              <h6 class="text-danger">Rs <del>28000</del></h6><h4 class="text-success"><strong><u>Rs 26999</u></strong></h4>
            </div>
            <hr>
            <div style="display: flex;justify-content: space-around;">
              <a href="tabletbuy.php?pid=Tab_1002" class="btn btn-lg btn-block btn-primary">Explore</a>
            </div>
          </div>
        </div>
        <div class="card" style="width: 100%;">
          <img src="./images/mensclothing/mc007.jpg" class="card-img-top" alt="..." height="220vh" width="40vw">
          <div class="card-body text-center">
            <h5 class="text-primary">Slim Men<br> Dark Blue <br>Jeans</h5>
            <div class="my-4" style="display: flex;justify-content: space-around;">
              <h6 class="text-danger">Rs <del>1100</del></h6><h4 class="text-success"><strong><u>Rs 1039</u></strong></h4>
            </div>
            <hr>
            <div style="display: flex;justify-content: space-around;">
              <a href="mensclothingbuy.php?pid=mc007" class="btn btn-lg btn-block btn-primary">Explore</a>
            </div>
          </div>
        </div>
        <div class="card" style="width: 100%;">
          <img src="./images/womenclothing/wc003.jpg" class="card-img-top" alt="..." height="220vh" width="40vw">
          <div class="card-body text-center">
            <h5 class="text-primary">ANTS Womens<br> Round Neck Sleeveless<br> Frill Top</h5>
            <div class="my-4" style="display: flex;justify-content: space-around;">
              <h6 class="text-danger">Rs <del>3100</del></h6><h4 class="text-success"><strong><u>Rs 2999</u></strong></h4>
            </div>
            <hr>
            <div style="display: flex;justify-content: space-around;">
              <a href="womenclothingbuy.php?pid=wc003" class="btn btn-lg btn-block btn-primary">Explore</a>
            </div>
          </div>
        </div>
        <div class="card" style="width: 100%;">
          <img src="./images/womenclothing/mc004.jpg" class="card-img-top" alt="..." height="220vh" width="40vw">
          <div class="card-body text-center">
            <h5 class="text-primary">Mitra Creations<br>  Summer Letter Print<br> Jeans for Women</h5>
            <div class="my-4" style="display: flex;justify-content: space-around;">
              <h6 class="text-danger">Rs <del>1700</del></h6><h4 class="text-success"><strong><u>Rs 1590</u></strong></h4>
            </div>
            <hr>
            <div style="display: flex;justify-content: space-around;">
              <a href="womenclothingbuy.php?pid=mc004" class="btn btn-lg btn-block btn-primary">Explore</a>
            </div>
          </div>
        </div>
        <div class="card" style="width: 100%;">
          <img src="./images/womenclothing/mc005.jpg" class="card-img-top" alt="..." height="220vh" width="40vw">
          <div class="card-body text-center">
            <h5 class="text-primary">Miss Chase<br> Women's Skinny Fit<br> Jeans</h5>
            <div class="my-4" style="display: flex;justify-content: space-around;">
              <h6 class="text-danger">Rs <del>2000</del></h6><h4 class="text-success"><strong><u>Rs 1990</u></strong></h4>
            </div>
            <hr>
            <div style="display: flex;justify-content: space-around;">
              <a href="womenclothingbuy.php?pid=mc005" class="btn btn-lg btn-block btn-primary">Explore</a>
            </div>
          </div>
        </div>
      </div>
      <!-- ards ends here -->
      <?php include('./footer.php')?>
      
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>