<?php
/*include("includes/connection.php");*/

$SN="localhost:3308";
$UN="root";
$password="";
$db="gestion_formation";
$Tuni=[];
$con=new PDO("mysql:host=$SN;dbname=$db",$UN,$password);

?>


<!DOCTYPE html>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="edutim,coaching, distant learning, education html, health coaching, kids education, language school, learning online html, live training, online courses, online training, remote training, school html theme, training, university html, virtual training  ">
  
  <meta name="author" content="themeturn.com">

  <title>Écoles et universités</title>
    <!-- Icons Google -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

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

<section>
    <div class="container mt-5">
        <div class="row align-items-center">
            <div class="col-md-6 col-lg-8">

            <form class="form-inline" method="POST">
  
  <div class="form-group mx-sm-3 mb-5">
    
    <input type="text" class="form-control"  name="search1" placeholder="Type Université (Privée ou Public)" style="width:30rem; border-radius:5px;">
  </div>
  <button type="submit"  class="btn btn-primary mb-2" name="submit" style="width:2rem; border-radius:5px; padding:5px; position:relative; bottom:20px;"><span  class="material-symbols-outlined">
search
</span></button>
</form>

<table class="table w-100  mx-5 box-shadow shadow-lg p-3 mb-5 mt-5 rounded" style="width:100vw;">
  <thead>
    <tr>
      <th >Nom Université</th>
      <th >Nom Etablissement</th>
      <th >Adresse Université </th>
      <th >Ville Université</th>
      <th >Site Web  d'Université</th>
      <th >Image</th>
      <th >Type Université</th>
      <th >Sigle Etablissement</th>
      <th >Suppression / Modification</th>
    </tr>
  </thead>
  <tbody>
    <?php
        if(isset($_POST["submit"])){
            $serch=$_POST["search1"];
            if($serch=="Privée"){
                $SqlAff="select NomUni,VilleUni,AdresseUni,NomEtab,SigleEtab,type,image,liensite from `université_etablissment_prive` where type='$serch'";
                $res=$con->prepare($SqlAff);
                $res->execute();
                $Tuni=$res->fetchAll(PDO::FETCH_OBJ);
            }

            elseif($serch=="Public"){
                $SqlAff="select NomUni,VilleUni,AdresseUni,NomEtab,SigleEtab,type,image,liensite from `université_etablissment_public` where type='$serch'";
                $res=$con->prepare($SqlAff);
                $res->execute();
                $Tuni=$res->fetchAll(PDO::FETCH_OBJ);
            }
            else{
                return alert("la cle de recherche ne marche pas !");
            }
        }

?>

    <tr>
        <?php
foreach($Tuni as $tu):

?>
      
      <td><?=$tu->NomUni;?></td>
      <td><?=$tu->NomEtab;?></td>
      <td><?=$tu->AdresseUni;?></td>
      <td><?=$tu->VilleUni;?></td>
      <td><?=$tu->liensite;?></td>
      <td><img src="<?=$tu->image;?>" whidth="90px" height="90px"> </td>
      <td><?=$tu->type;?></td>
      <td><?=$tu->SigleEtab;?></td>
      <td><a href="deleteUni.php?num=<?=$tu->id;?>" class="btn btn-danger" onclick="return confirm('est-ce-que vous voulez supprimer l\'université ?')" >Supprimer</a>
        <a href="updateUni.php?num=<?=$tu->id;?>" class="btn btn-info">Mise a jour</a>    </td>
      
        <?php endforeach; ?>
    </tr>
    
</tbody>
</table>
            </div>
        </div>
    </div>

</section>


    
</body>

</html>