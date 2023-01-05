<?php
include("includes/connection.php");

$Tuni_X=[];


// if(isset($_GET['revue'])){
 
/*
if(isset($_POST['user_search']))
	 {
		 
		$Tuni_X=[];
		$sqlrech_pub="SELECT * FROM press WHERE press.titre like '%".addslashes($_POST['search_value'])."%' or press.journal like '%".addslashes($_POST['search_value'])."%'  or press.dateArt like '%".addslashes($_POST['search_value'])."%'order by dateArt  DESC";  
							 
        $stmt_pub=$con->prepare($sqlrech_pub);
        $stmt_pub->execute();
        $Tuni_X=$stmt_pub->fetchAll(PDO::FETCH_OBJ);
     
	 }
	 else
	 {
        $Tuni_X=[];
							$tableName="press";		
							$targetpage = "index.php"; 	
							$limit = 15; 
							
							$query = "SELECT COUNT(*) as num FROM $tableName";
							$total_pages = mysqli_fetch_array(mysqli_query($mysqli,$query));
							$total_pages = $total_pages['num'];
							
							$stages = 3;
							$page=0;
							if(isset($_GET['page'])){
							$page = mysqli_real_escape_string($mysqli,$_GET['page']);
							}
							if($page){
								$start = ($page - 1) * $limit; 
							}else{
								$start = 0;	
								}	
							
							
                                $sqlrech_pub="SELECT * FROM press
						order by dateArt  DESC ";  
							 
                             $stmt_pub=$con->prepare($sqlrech_pub);
                             $stmt_pub->execute();
                             $Tuni_X=$stmt_pub->fetchAll(PDO::FETCH_OBJ);
							
	 }









// }

*/


?>


<!DOCTYPE html>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content=" ">
  

  <title>Le magazine</title>

  <!-- Mobile Specific Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="assets/vendors/bootstrap/bootstrap.css">
  <!-- Iconfont Css -->
  <link rel="stylesheet" href="assets/vendors/fontawesome/css/all.css">
  <link rel="stylesheet" href="assets/vendors/bicon/css/bicon.min.css">
  <link rel="stylesheet" href="assets/vendors/themify/themify-icons.css">
  <!-- animate.css -->
  <link rel="stylesheet" href="assets/vendors/animate-css/animate.css">
  <!-- WooCOmmerce CSS -->
  <link rel="stylesheet" href="assets/vendors/woocommerce/woocommerce-layouts.css">
  <link rel="stylesheet" href="assets/vendors/woocommerce/woocommerce-small-screen.css">
  <link rel="stylesheet" href="assets/vendors/woocommerce/woocommerce.css">
   <!-- Owl Carousel  CSS -->
  <link rel="stylesheet" href="assets/vendors/owl/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="assets/vendors/owl/assets/owl.theme.default.min.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/responsive.css">
<style>
    table a:visited {
  color: #ff1162;
}
table a:link {
  color: #ff1162;
}
.img1.{width: 150px;height:200px;
    transition: transform .2s;}
.img1:hover{
  -ms-transform: scale(2.5) translate(40px); /* IE 9 */
    -webkit-transform: scale(2.5) translate(40px); /* Safari 3-8 */
    transform: scale(2.5) translate(30px);
  }

  table a {
  text-decoration: none;

}
table a:hover{
 
  /* color:greenyellow; */
 
  text-decoration:underline;
}
    </style>
</head>

<body id="top-header">

  

    
<header>
    <div class="header-top">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <ul class="header-contact">
                        <li>
                        <span>Tél :</span>
                           +212 660600450
                        </li>
                        <li>
                            <span>Email :admin@letudiantmarocain.com</span>
                          
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header-right float-right">
                        <div class="header-socials">
                            <ul>
                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                            </ul>
                        </div>
                        <div class="header-btn">
                            <a href="index.php" class="btn btn-main btn-small"><i class="fa fa-user mr-2"></i>Déconnexion</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
    </div>

    <!-- Main Menu Start -->
   
    <div class="site-navigation main_menu menu-2" id="mainmenu-area">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
               

                <!-- Toggler -->

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarMenu" aria-controls="navbarMenu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="fa fa-bars"></span>
                </button>

                <!-- Collapse -->
                <div class="collapse navbar-collapse" id="navbarMenu">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle " href="index.php">Maj magazine
                            </a>
                            
                                
                            
                        </li>
                       <li class="nav-item dropdown">
                            <a href="revue.php" class="nav-link dropdown-toggle  ">Maj Revue de presse </a>
                        </li>
                        <li class="nav-item dropdown ">
                            <a href="ecoles.php" class="nav-link dropdown-toggle">Maj Écoles et universités </a>
                        </li>

                        <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle " href="activitess.php">Maj Métiers </a>
                            
                        </li>
                  
                        <li class="nav-item dropdown">
                          
                                <a class="nav-link dropdown-toggle" href="concours.php"> Maj  Inscriptions et Concours</a>
                              
                        </li>
                        <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="stages.php"> Maj Stages et recrutement</a>
                          
                        </li>
                        
                        <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" href="docteur.php"> Maj Docteurs et Doctorants</a>
    
                        </li>
                

                    </ul>

                    <ul class="header-contact-right d-none d-lg-block">
                
                        <li><a href="#" class="header-search search_toggle"> <i class="fa fa fa-search"></i></a></li>
                    </ul>
                   
                </div> <!-- / .navbar-collapse -->
            </div> <!-- / .container -->
        </nav>
    </div>
</header>

        

 <!--search overlay start-->
 <div class="search-wrap">
    <div class="overlay">
        <form action="" class="search-form">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-9">
                        <h3>Search Your keyword</h3>
                        <input type="text" class="form-control" placeholder="Search..."/>
                    </div>
                    <div class="col-md-2 col-3 text-right">
                        <div class="search_toggle toggle-wrap d-inline-block">
                            <img class="search-close" src="assets/images/close.png" srcset="assets/images/close@2x.png 2x" alt=""/>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!--search overlay end-->

<section class="banner-left banner-4">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-8 col-lg-7 col-xl-7">
                <div class="banner-content">
                <span class="subheading"></span>
                    <h2 style="color:#ffffff">L'Etudiant Marocain Conseils & Orientation!</h2>
                    <div class="">
                        <form action="" class="">
                           
                        </form>
                    </div>
                   
                </div>
            </div>
            <div class="col-lg-5 col-xl-5">
                <div class="banner-img3">
                    <div class="img-block">
                     <a href="#">   <img src="./pub/" alt="" class="img-fluid"></>
                    </div>
                </div>
            </div>
        </div> <!-- / .row -->
    </div> <!-- / .container -->
</section>




    <!--course section start-->
    
          

<div >
            <?php session_start(); echo '<h2><b>Bienvenue Mr   '.$_SESSION['nomutilisateur'] .'</b></h2>'; ?></div> 

    </div>

    <section class="section-padding popular-course pb-0">
    <div class="container">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="section-heading">
                    <span class="subheading">Ajouter </span>
                    <h3></h3>
                </div>
            </div>   </div>
</section>
    
<main class="site-main page-wrapper woocommerce single single-product">
    <section class="space-3">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="woocommerce-notices-wrapper"></div>
                    <h2 class="font-weight-bold mb-4">les informations </h2>
        <form class="woocommerce-form woocommerce-form-register register" method="post" onclick="return false"  action="ajout-met.php">
         
          
                
        
                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                    <input type="text" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="noma" id="noma" placeholder="Nom établissement" required/><br>
</p>
            
  
<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
            
                <label>     logo établissement &nbsp;<span class="required">*</span></label>
                  <input type="file" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="phoa" id="phoa" placeholder="Photo Activité" required/><br> 
                  </p>
               
                
                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
               
                <input type="date" class="form-control" name="sec" id="sec" placeholder="date sou" required/><br>
                </p>
                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                <input type="text" class="form-control" name="met" id="met" placeholder="type événement " required/><br>
                </p>

                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                <input type="text" class="form-control" name="met" id="met" placeholder="titre " required/><br>
                </p>
                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                <input type="date" class="form-control" name="met" id="met" placeholder="date événement " required/><br>
                </p>
                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">         
                    
                 
                  <input type="file" class="form-control" name="phom" id="phom" placeholder="Photo annonce" required/><br> 
                  </p>

    
                    <p class="woocommerce-FormRow form-row">
                            <input type="hidden" id="woocommerce-register-nonce" name="woocommerce-register-nonce" value="b1c661ab82"><input type="hidden" name="_wp_http_referer" value="/my-account/">
                            <button type="submit" class="woocommerce-Button button" name="register" value="Register">Enregistrer</button>
                        </p>
            
                        </form>
                </div>
            </div>
        </div>
    </section>
    <!--shop category end-->
</main>
    <br><br><br><br><br><br><br>




           


<section class="footer pt-120">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 mr-auto col-sm-6 col-md-6">
				<div class="widget footer-widget mb-5 mb-lg-0">
					<h5 class="widget-title"></h5>
				
				</div>
			</div>
			
			
			<div class="col-lg-3 col-sm-6 col-md-6">
				<div class="footer-widget footer-contact mb-5 mb-lg-0">
					<h5 class="widget-title">Contact </h5>
					
					<ul class="list-unstyled">
						<li><i class="bi bi-headphone"></i>
							<div>
								<strong>Phone number</strong>
							
							</div>
							
						</li>
						<li> <i class="bi bi-envelop"></i>
							<div>
								<strong>Email Address</strong>
							
							</div>
						</li>
						<li><i class="bi bi-location-pointer"></i>
							<div>
								<strong>Office Address</strong>
							
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="footer-btm">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-6">
					<div class="footer-logo">
						<img src="assets/images/loe.png" alt="Etudiant Marocain" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="copyright text-lg-center">
						<p>@ Copyright Reserved to Etudiant Marocain. Share By <a href="https://nullphpscript.com"></a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<div class="fixed-btm-top">
	<a href="#top-header" class="js-scroll-trigger scroll-to-top"><i class="fa fa-angle-up"></i></a>
</div>



    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="assets/vendors/jquery/jquery.js"></script>
    <!-- Bootstrap 4.5 -->
    <script src="assets/vendors/bootstrap/bootstrap.js"></script>
    <!-- Counterup -->
    <script src="assets/vendors/counterup/waypoint.js"></script>
    <script src="assets/vendors/counterup/jquery.counterup.min.js"></script>
    <script src="assets/vendors/jquery.isotope.js"></script>
    <script src="assets/vendors/imagesloaded.js"></script>
    <!--  Owlk Carousel-->
    <script src="assets/vendors/owl/owl.carousel.min.js"></script>
    <script src="assets/js/script.js"></script>


  </body>
  </html>
   