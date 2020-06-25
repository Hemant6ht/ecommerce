<nav class="navbar navbar-expand-lg navbar-light top" style="background-color: #4c3c3c;z-index:;">
  <a class="navbar-brand text-success" href="#">Shopify</a>
  <button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent1">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link   text-white" href="./index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="./about.php">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="#contact">Contact Us</a>
      </li>
      
<?php
$str=<<<ABCD
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><button class="btn btn-outline-danger my-2 my-sm-0 text-white mr-4" data-toggle="modal" data-target="#registerModal">Sign Up</a></li>
        <li><button class="btn btn-outline-danger my-2 my-sm-0 text-white mr-4" data-toggle="modal" data-target="#loginModal">Login</a></li>
    </ul>
ABCD;
$str2=<<<ABCD
      <li class="nav-item">
        <a class="nav-link text-white" href="./partner.php">Sell Here</a>
      </li>
     </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="nav-link"><a href="./yourcart.php" class="my-2 my-sm-0 text-white mr-4">Your Cart</a></li>
        <li class="nav-link"><a href="./yourorder.php" class="my-2 my-sm-0 text-white mr-4">Your Orders</a></li>
        <li><a href="./logout.php" class="btn btn-outline-danger my-2 my-sm-0 text-white mr-4" >Logout</a></li>
      </ul>

ABCD;
if(isset($_SESSION['email']))
{
  echo $str2;
}
else
{
  echo $str;
}
?>
  </div>
</nav>

<nav class="navbar navbar-expand-lg navbar-light mb-1" style="background-color: #4c3c3c">
  <button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent2">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white mr-4" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Electronics
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="./mobile.php">Mobiles</a>
          <a class="dropdown-item" href="./laptop.php">Laptop</a>
          <a class="dropdown-item" href="./tablet.php">Tablets</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white mr-4" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Tv & Appliances
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="./tv.php">Television</a>
          <a class="dropdown-item" href="./refrigerator.php">Refrigerator</a>
          <a class="dropdown-item" href="./ac.php">Air Conditionor</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white mr-4" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Men
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="./mencloth.php">Clothing</a>
          <a class="dropdown-item" href="./mengroom.php">Grooming</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white mr-4" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Women
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="./womencloth.php">Clothing</a>
          <a class="dropdown-item" href="./womenmakeup.php">Beauty Products</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white mr-4" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Kid
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="./babycare.php">Babycare</a>
          <a class="dropdown-item" href="#">Baby Cloths</a>
        </div>
      </li>
     </ul>
     <?php
     if(isset($_SESSION['email']))
     {
      echo"<ul class='nav navbar-nav navbar-right'>
        <li class='my-2 my-sm-0 text-white mr-4'>Hello ";
        echo $_SESSION['name'];
        echo "</li>
             </ul>";
     }
     else
     {
      echo"<ul class='nav navbar-nav navbar-right'>
        <li class='my-2 my-sm-0 text-white mr-4'>Hello Guest</li>
        </ul>";
     }
     ?>
  </div>
</nav>