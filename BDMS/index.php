<!---->
<?php
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blood Donation Management System</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/modern-business.css" rel="stylesheet">
    <style>
    .navbar-toggler {
        z-index: 1;
    }
    
    @media (max-width: 576px) {
        nav > .container {
            width: 100%;
        }
    }
    .carousel-item.active,
    .carousel-item-next,
    .carousel-item-prev {
        display: block;
    }
    </style>

</head>

<body>

    <!-- Navigation -->
<?php include('includes/header.php');?>
<?php include('includes/slider.php');?>
   
    <!-- Page Content -->
    <div class="container">

        <h1 class="my-4">Welcome to Blood Donation Management System</h1>

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <h4 class="card-header">The need for blood</h4>
                   
                        <p class="card-text" style="padding-left:2%; margin: 20px">Many people lose blood daily through accidents or sickness. Donated blood is freely given to any patient who is in need, or used in hospitals for other purposes like being given to mothers after giving birth or any other patients. </p>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <h4 class="card-header">Blood Tips</h4>
                   
                        <p class="card-text" style="padding-left:2%; margin: 20px"> Eating a lot of fruits daily and drinking at least 2 litres of water daily increases your blood levels. Donating blood does not make one ill or unhealthy. A healthy person can donate  as much as 3 litres of blood every month. </p>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <h4 class="card-header" style="color: red">Notifications</h4>
                   
                        <p class="card-text" style="padding-left:2%; margin: 20px">Alert! Alert! <br> There is a new deadly disease in town. <B>COROVA VIRUS (COVID-19)</B> characterized by <b>Coughing, Sneezing, General tiredness and breathing difficulties</b> </p>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <div style="background-color: rgba(255,18,7,0.06)!important;">
        <h2>Some of the Donors</h2>

        <div class="row">
                   <?php 
$status=1;
$sql = "SELECT * from tblblooddonars where status=:status order by rand() limit 6";
$query = $dbh -> prepare($sql);
$query->bindParam(':status',$status,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{ ?>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top img-fluid" src="images/blood-donor.jpg" alt="" ></a>
                    <div class="card-block">
                        <h4 class="card-title"><a href="#"><?php echo htmlentities($result->FullName);?></a></h4>
                        <p class="card-text"><b>  Gender :</b> <?php echo htmlentities($result->Gender);?></p>
                        <p class="card-text"><b>Blood Group :</b> <?php echo htmlentities($result->BloodGroup);?></p>

                    </div>
                </div>
            </div>

            <?php }} ?>

        </div>
        </div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-6">
                <h2>BLOOD GROUPS</h2>
                <p>blood group of any human being will mainly fall within one of the following groups.</p>
                <ul>
                    <li>A positive or A negative</li>
                    <li>B positive or B negative</li>
                    <li>O positive or O negative</li>
                    <li>AB positive or AB negative.</li>
                </ul>
                <p>A healthy diet helps ensure a successful blood donation, and also makes you feel better! Check out the following recommended foods to eat prior to your donation.</p>
            </div>
            <div class="col-lg-6">
                <img class="img-fluid rounded" src="images/blood-donor (1).jpg" alt="">
            </div>
        </div>
        <!-- /.row -->
        <hr>

        <!-- Call to Action Section -->
        <div class="row mb-4">
            <div class="col-md-8">
            <h4>UNIVERSAL DONORS AND RECIPIENTS</h4>
                <p>The most common blood type is O, followed by type A. Type O individuals are often called "universal donors" since their blood can be transfused into persons with any blood type. Those with type AB blood are called "universal recipients" because they can receive blood of any type.</p>
            </div>
            <div class="col-md-4">
                <a style="background-color: rgba(255,9,0,0.12)" class="btn btn-lg btn-secondary btn-block" href="become-donar.php">Become a Donar</a>
            </div>
        </div>

    </div>
    <!-- /.container -->
<!--    footer-->
    <div style="background-color: #818181; text-align: center;color: white;padding: 10px"><h4>Our Partners</h4></div>
    <footer style="background-color: #818181!important;" class="py-5 bg-inverse" >
        <div class="container">
            <div style="margin: 0" class="row">
                <!--the mut image       -->
                <div  class="col-md-4">
                    <div class="thumbnail">
                        <a href="www.muranga univerity.com" target="_blank">
                            <img src="images/logo_mut.png" alt="muranga university logo" style="width:90%;height: 90%">
                        </a>
                    </div>
                </div>
                <!--who image      -->
                <div   class="col-md-4">
                    <div class="thumbnail">
                        <a href="www.university of maryland.edu" target="_blank">
                            <img  src="images/University_of_Maryland.png" alt="maryland university logo" style="width:80%;height:80% ;color: white">
                        </a>
                    </div>
                </div>
                <!-- USAID logo-->
                <div  class="col-md-4">
                    <div class="thumbnail">
                        <a href="www.who.org" target="_blank">
                            <img src="images/USAID.png" alt="USAID image" style="width:80%;height: 80%">
                        </a>
                    </div>
                </div>

            </div>
        </div>

    </footer>

    <!---->
    <!-- Footer -->
  <?php include('includes/footer.php');?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/tether/tether.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
