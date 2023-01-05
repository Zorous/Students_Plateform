<?php
error_reporting(0);



session_start();
$_SESSION['id']="";

include("includes/connection.php");
$grpact="";

$Tuni_act=[];

/*
$Tuni_X=[];




$sqlrech_pub="SELECT *FROM `docteurs`";
    $stmt_pub=$con->prepare($sqlrech_pub);
    $stmt_pub->execute();
    $Tuni_X=$stmt_pub->fetchAll(PDO::FETCH_OBJ);*/

    $Tuni_X=[];


    // if(isset($_GET['revue'])){
     
    
    if(isset($_POST['user_search']))
         {
             
            $Tuni_X=[];
            $sqlrech_pub="SELECT * FROM docteurs WHERE docteurs.titre like '%".addslashes($_POST['search_value'])."%' or docteurs.type_eve like '%".addslashes($_POST['search_value'])."%'  or docteurs.datesou like '%".addslashes($_POST['search_value'])."%' order by datesou  DESC";  
                                 
            $stmt_pub=$con->prepare($sqlrech_pub);
            $stmt_pub->execute();
            $Tuni_X=$stmt_pub->fetchAll(PDO::FETCH_OBJ);
         
         }
         else
         {
            $Tuni_X=[];
                                $tableName="docteurs";		
                                $targetpage = "docteurs.php"; 	
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
                                
                                
                                    $sqlrech_pub="SELECT * FROM docteurs
                            order by datesou  DESC ";  
                                 
                                 $stmt_pub=$con->prepare($sqlrech_pub);
                                 $stmt_pub->execute();
                                 $Tuni_X=$stmt_pub->fetchAll(PDO::FETCH_OBJ);
                                
         }
    



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
                            <a class="nav-link dropdown-toggle " href="majindex.php">Maj magazine
                            </a>
                            
                                
                            
                        </li>
                       <li class="nav-item dropdown">
                            <a href="majrevue.php" class="nav-link dropdown-toggle  ">Maj Revue de presse </a>
                        </li>
                        <li class="nav-item dropdown ">
                            <a href="majecoles.php" class="nav-link dropdown-toggle">Maj Écoles et universités </a>
                        </li>

                        <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="majactivitess.php">Maj Métiers </a>
                            
                        </li>
                  
                        <li class="nav-item dropdown">
                          
                                <a class="nav-link dropdown-toggle" href="majconcours.php"> Maj  Inscriptions et Concours</a>
                              
                        </li>
                        <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="majstages.php"> Maj Stages et recrutement</a>
                          
                        </li>
                        
                        <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="majdocteur.php active"> Maj Docteurs et Doctorants</a>
    
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
                    <span class="subheading">Maj Docteurs et Doctorants</span>
                    <h3>les informations des Docteurs et Doctorants</h3>
                </div>
            </div>   </div>
</section>
    
        <div class="container-fluid">
            <div class="row" style="margin-top: 40px;">
             
                
            </div>
            <form method ="post" action="">
            <div class="row">
                <div class="col-lg-3 col-md-3 text-center">
                    <a class="btn btn-main"  href="ajoudocteur.php" class="">Ajouter un  Doctorant</a>
                </div>

                
                <div class="col-lg-6">
                <div class="subscribe-form">
                <form method ="post" action="">
                        <input type="text" class="form-control" onclick="return false;" placeholder="Search..."  name="search_value"/>
                        <button  class="btn btn-main"  type="submit" name="user_search" >Rechercher<i class="fa fa-search ml-2"></i> </button>                    </form>
                        
                    </div><div class="buy-btn"><a href="majdocteur.php" class="btn btn-main-2 btn-small">Afficher Tout les Docteurs et Doctorants</a></div>
            </div>
            </div>
            </div>
            <!-- export buttons -->
           <div class="row" style="margin-top: 30px;">
                <div class="col-lg-2 col-md-2"></div>
                
                
                <div class="col-lg-2 col-md-2"></div>
            </div>
        </div>  
           <!--table--> 
           <table class="table table-striped table-bordered table-hover" style="margin-top: 70px;">
            <thead>
              <tr >
                <th>Nom établissement</th>
                <th>Nom laboratoire</th>
                <th>logoetab</th >
                <th>datesou</th>
                <th>type evenement</th >
                <th>titre</th>
                <th>date evenement</th>
                <th>photo anonce</th>
                <th colspan=2></th>
              </tr>
              </thead>
            <tbody>
    

         <?php foreach($Tuni_X as $uni) : ?>
            
                <tr>
                <td><?=$uni->nometabli;?></td>
                <td><?=$uni->nomlabo;?></td>
                <td  >  <img class="card-img-top" src="./images/docteurs/<?= $uni->logoetab;?>"  style="width:80px;;height:80px;"/></td>   
                <td><?=$uni->datesou;?></td>
                <td><?=$uni->type_eve;?></td>
                <td><?=$uni->titre;?></td>
                <td><?=$uni->dateeven;?></td>
                <td><img class="card-img-top" src="./images/docteurs/<?= $uni->photoanonce;?>"  style="width:80px;;height:80px;"/></td>   
           
          
                <td><a href="Modifiermétiers.php?user_id=<?php echo $row['métier'];?>" class="nav-link dropdown-toggle">Edit</a></td>
                <td><a href="majmétiers.php?user_id=<?php echo $row['métier'];?>" onclick="return confirm('voulez vous supprimer cet métier?');" class="nav-link dropdown-toggle">Delete</a></td>
              
             </tr>
              
             <?php endforeach;?>
              
            </tbody>
          </table>
          
   





  <br><br><br><br>


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
   