<?php
$SN="localhost:3308";
$UN="root";
$password="";
$db="gestion_formation";
$con=new PDO("mysql:host=$SN;dbname=$db",$UN,$password);

$id=$_GET['num'];
$sqlDelete = "delete from `université_etablissment_prive` where id='".$id."'";
$sqlDelete2 = "delete from `université_etablissment_public` where id='".$id."'";

$res1=$con->exec($sqlDelete);
$res2=$con->exec($sqlDelete2);

if($res1){
    header("location:ecoles1.php");
}

if($res2){
    header("location:ecoles1.php");
}

else{
    return alert("Probleme de suppression");
}

?>