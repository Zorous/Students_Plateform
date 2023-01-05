<?php
/*include("includes/connection.php");*/

$SN="localhost:3308";
$UN="root";
$password="";
$db="gestion_formation";
$con=new PDO("mysql:host=$SN;dbname=$db",$UN,$password);

//préparer un tableau pour remplir les combo box de ville/Sigle
session_start();
$_SESSION['id']="";


// include 'remplissage_combos.php';



// Si l'utilisateur 

$Tuni_X=[];
$Tuni_X1=[];
$sqlrech_pub="SELECT * FROM `université_etablissment_prive` UNION SELECT * FROM `université_etablissment_public`";
$stmt_pub=$con->prepare($sqlrech_pub);
$stmt_pub->execute();
$Tuni_X=$stmt_pub->fetchAll(PDO::FETCH_OBJ);

$sqlrech_pub1="SELECT distinct VilleUni  FROM `tville` order by VilleUni ";
    $stmt_pub1=$con->prepare($sqlrech_pub1);
    $stmt_pub1->execute();
    $Tuni_X1=$stmt_pub1->fetchAll(PDO::FETCH_OBJ);
    $sqlrech_pub2="SELECT distinct secteur FROM `secteur` order by secteur ";
    $stmt_pub2=$con->prepare($sqlrech_pub2);
    $stmt_pub2->execute();
    $Tuni_X2=$stmt_pub2->fetchAll(PDO::FETCH_OBJ);


if ($_SERVER["REQUEST_METHOD"] == "POST" ) {
if(isset($_POST['rech']) ){
  $type=$_POST['type'];

  $ville=$_POST['ville'];
  $secteur=$_POST['secteur'];
  
    // $sqlrech_pub="SELECT * FROM université_public2 u ,etablissement_pub e where e.Numero_pub=u.Numero_pub and  villeU='Ben Guérir' and Secteur='Informatique - Télécommunications';";
    if($type =='Public'){
    $sqlrech_pub="SELECT * FROM `université_etablissment_public` u ,secteur s  where u.NomEtab=s.Nometab and VilleUni='".$ville."' and secteur='".$secteur."' order by NomEtab ";
    }
    if($type=='Privé'){
    $sqlrech_pub="SELECT * FROM `université_etablissment_prive` u ,secteur s  where u.NomEtab=s.Nometab and VilleUni='".$ville."' and secteur='".$secteur."' order by u.NomEtab  ";
    }
   
    $stmt_pub=$con->prepare($sqlrech_pub);
    $stmt_pub->execute();
    $Tuni_X=$stmt_pub->fetchAll(PDO::FETCH_OBJ);
    

    }

    /*if(isset($_POST['rech']) && $_POST['ville']=="Privé"){
      $type=$_POST['type'];
    
      $ville=$_POST['ville'];
      
        // $sqlrech_pub="SELECT * FROM université_public2 u ,etablissement_pub e where e.Numero_pub=u.Numero_pub and  villeU='Ben Guérir' and Secteur='Informatique - Télécommunications';";
        
        $sqlrech_pub="SELECT * FROM `université_etablissmentprive` where VilleUni='".$ville."'";
        $stmt_pub=$con->prepare($sqlrech_pub);
        $stmt_pub->execute();
        $Tuni_X=$stmt_pub->fetchAll(PDO::FETCH_OBJ);
        
    
        }*/
      }

?>


<!DOCTYPE html>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="edutim,coaching, distant learning, education html, health coaching, kids education, language school, learning online html, live training, online courses, online training, remote training, school html theme, training, university html, virtual training  ">
  
  <meta name="author" content="themeturn.com">

  <title>Écoles et universités</title>

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
                            <a href="#" class="btn btn-main btn-small"><i class="fa fa-user mr-2"></i>Login / Register</a>
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
                            <a class="nav-link dropdown-toggle" href="index.php">Le magazine
                            </a>
                            
                                
                            
                        </li>
                       <li class="nav-item dropdown">
                            <a href="revue.php" class="nav-link dropdown-toggle">Revue de presse </a>
                        </li>
                        <li class="nav-item dropdown ">
                            <a href="ecoles.php" class="nav-link dropdown-toggle active">Écoles et universités </a>
                        </li>

                        <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="activitess.php"> Métiers </a>
                            
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="geneCV.php" >Générateur de CV </a>
                         
                        </li>
                        <li class="nav-item dropdown">
                          
                                <a class="nav-link dropdown-toggle " href="concours.php">Inscriptions et Concours</a>
                              
                        </li>
                        <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="stages.php">Stages et recrutement</a>
                          
                        </li>
                        
                        <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="docteur.php">Docteurs et Doctorants</a>
    
                        </li>
                        
                        <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="formations.php"> Formations</a>
    
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
<section class="feature-2  mt--100">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-4 col-md-6">
            <a  href="ecoles.php">  <div class="feature-item feature-style-2">
                    <div class="feature-icon">
                        <i class="bi bi-badge2"></i>
                    </div>
                    <div class="feature-text">
                        <h3>Universités </h3>
                        <p>Behind the word mountains, far from the countries Vokalia </p>
                    </div>
                </div></a>
            </div>
             <div class="col-lg-4 col-md-6">
             <a  href="ecoles2.php"> <div class="feature-item feature-style-2">
                    <div class="feature-icon">
                        <i class="bi bi-badge2"></i>
                    </div>
                    <div class="feature-text">
                   <h3> Ecoles supérieures</p></h3>
                        <p>Behind the word mountains, far from the countries Vokalia </p>
                    </div>
                </div></a>
            </div>
            
             <div class="col-lg-4 col-md-6"><a href="ecoles3.php"  >
             <div class="feature-item feature-style-2">
                    <div class="feature-icon">
                        <i class="bi bi-badge2"></i>
                    </div>
                    <div class="feature-text">
                        <h5>Etablissements de formation professionnelles</h5>
                        <p>Behind the word mountains, far from the countries Vokalia </p>
                    </div>
                </div><a>
            </div>
        </div>
    </div>
</section>



    <!--course section start-->
    <section class="section-padding popular-course pb-0">
    <div class="container">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <div class="section-heading">
                    <span class="subheading">écoles , Universités et établissements de formation professionnelles</span>
                    <h3>publique et privée</h3>
                </div>
            </div>   </div>
</section>

          
<main class="site-main page-wrapper woocommerce single single-product">
<section class="cta-2">
    <div class="container">

    <div class="row">
                    <div class="col-md-10 col-9">
            
                    <div class="woocommerce-notices-wrapper"></div>
                    <h2 class="font-weight-bold mb-4"></h2>
                    
                    <form class="" method="post">
                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                     
                            <select class="woocommerce-Input woocommerce-Input--select input-select form-control" onclick="return false" name="type" id="username" value="">
                            <option value="" disabled selected>--Type--</option>
  <option value="Public">Public</option>
  <option value="Privé">Privé</option>
  

</select> 


<select name="ville" class="woocommerce-Input woocommerce-Input--select input-select form-control" onclick="return false">
<option value="" disabled selected>--Ville--</option>
<?php foreach(  $Tuni_X1 as $uni1){?>
    <option value="<?= $uni1->VilleUni?>">
       <?php echo $uni1->VilleUni?>
    </option>
    <?php }  ?> 

     

</select>   
<select name="secteur" class="woocommerce-Input woocommerce-Input--select input-select form-control" onclick="return false">
<option value="" disabled selected>--Secteur--</option>
<?php foreach(  $Tuni_X2 as $uni1){?>
    <option value="<?= $uni1->secteur?>">
       <?php echo $uni1->secteur?>
    </option>
    <?php }  ?> 

     

</select>   
        </p>
                   
                   <button type="submit" class="woocommerce-button button woocommerce-form-login__submit" name="rech" >Search</button>
                  
               </p>
                        <br>
  
                    </form>
                </div>
              
            </div>
        </div>
    </section>
    <!--shop category end-->
</main>

        
         
         
<section class="section-padding popular-course bg-grey">
        <div class="container">
            
    
        <div class="row">
            

<?php $i=0; foreach($Tuni_X as $uni) : ?>

    <div class="col-lg-4 col-md-6" >
                <div class="course-block" style=" height:620px; width:352px;" >
                    <div class="course-img"  >
                        <img src="./images/EU/<?= $uni->image;?>" alt="" style="width:350px;height:240px;" />
                        
                    </div>
                 
                    
                    <div class="course-content">
                       
                    
                    <div class="section-heading center-heading"> <span class="subheading"><?=$uni->SigleEtab?></span>
                    <h4> <a href="<?=$uni->liensite ;?>" target="_blank" ><?=$uni->NomEtab  ; ?> </a></h4> 
                    <p> <?=$uni->AdresseUni ; ?> </p> 
                    <?php     $sqlrech_pub5="SELECT distinct secteur FROM `secteur` where NomEtab='".$uni->NomEtab."' order by secteur ";
   
                    $stmt_pub5=$con->prepare($sqlrech_pub5);
    $stmt_pub5->execute();
    $Tuni_X5=$stmt_pub5->fetchAll(PDO::FETCH_OBJ);
    foreach($Tuni_X5 as $uni5) :
       
       
    ?>
 <h5><a href="secteur_metier.php?id=<?=$uni5->secteur;?>"><?=$uni5->secteur  ; ?> </a></h5>  
<?php endforeach; ?></div>
                    </div>
                    </div>
                    <br>
                </div>
               
               
      
    
        <?php endforeach; ?>
    
        </div>
                </div>
            </div>
        </div>
    </section>





          

  






<section class="footer pt-120">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 mr-auto col-sm-6 col-md-6">
				<div class="widget footer-widget mb-5 mb-lg-0">
					<h5 class="widget-title"></h5>
					<p class="mt-3"> </p>
					
				</div>
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
						<img src="assets/images/.png" alt="Etudiant Marocain" class="img-fluid">
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
   