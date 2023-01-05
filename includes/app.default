<?php include("includes/connection.php");
 	  include("includes/function.php");
 	  include("smtp_email.php"); 	 	
	
	
	  if( isset($_SERVER['HTTPS'] ) ) 
	  {  

	    $file_path = 'https://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['REQUEST_URI']).'/'; 	  
	  }
	  else
	  {
	    $file_path = 'http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['REQUEST_URI']).'/';
	  }
 	

	function get_thumb($filename,$thumb_size)
	{	
		$file_path = 'http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['REQUEST_URI']).'/';

		return $thumb_path=$file_path.'thumb.php?src='.$filename.'&size='.$thumb_size;
	}

    function get_user_name($user_id)
	{	
		global $mysqli;

		$u_query="SELECT * FROM tbl_users WHERE tbl_users.id='".$user_id."'";
		$u_sql = mysqli_query($mysqli,$u_query)or die(mysqli_error());

		$u_row=mysqli_fetch_assoc($u_sql);

		return $u_row['name'];
	}

	$get_method = checkSignSalt($_POST['data']);


	if($get_method['method_name']=="get_home")
	{
		
		$jsonObj_0= array();	
 
		$query0="SELECT * FROM tbl_recipe
		LEFT JOIN tbl_category ON tbl_recipe.cat_id= tbl_category.cid 
		WHERE tbl_recipe.featured_recipe='1' ORDER BY tbl_recipe.id DESC LIMIT 3";

		$sql0 = mysqli_query($mysqli,$query0)or die(mysqli_error());

		while($data0 = mysqli_fetch_assoc($sql0))
		{
			$row0['id'] = $data0['id'];
			$row0['cat_id'] = $data0['cat_id'];
			$row0['sub_cat_id'] = $data0['sub_cat_id'];
			$row0['recipe_type'] = $data0['recipe_type'];
			$row0['recipe_name'] = $data0['recipe_name'];
			$row0['recipe_time'] = $data0['recipe_time'];
			$row0['recipe_ingredients'] = $data0['recipe_ingredients'];
			$row0['recipe_direction'] = $data0['recipe_direction'];
 			
		 
			$row0['recipe_image_b'] = $file_path.'images/'.$data0['recipe_image'];
			$row0['recipe_image_s'] = get_thumb('images/'.$data0['recipe_image'],'300x300');

			$row0['video_url'] = $data0['video_url'];
			$row0['video_id'] = $data0['video_id'];
			$row0['recipe_views'] = $data0['recipe_views']; 
 			$row0['rate_avg'] = $data0['rate_avg'];
			$row0['total_rate'] = $data0['total_rate'];
   

			$row0['cid'] = $data0['cid'];
			$row0['category_name'] = $data0['category_name'];
			$row0['category_image'] = $file_path.'images/'.$data0['category_image'];
			$row0['category_image_thumb'] = get_thumb('images/'.$data0['category_image'],'300x300');
			 
			 
			array_push($jsonObj_0,$row0);
		
		}

		$row['featured_recipe']=$jsonObj_0;

		$jsonObj= array();	
 
		$query="SELECT * FROM tbl_recipe
		LEFT JOIN tbl_category ON tbl_recipe.cat_id= tbl_category.cid 
		WHERE tbl_recipe.status='1' ORDER BY tbl_recipe.id DESC LIMIT 3";

		$sql = mysqli_query($mysqli,$query)or die(mysqli_error());

		while($data = mysqli_fetch_assoc($sql))
		{
			$row1['id'] = $data['id'];
			$row1['cat_id'] = $data['cat_id'];
			$row1['sub_cat_id'] = $data['sub_cat_id'];
			$row1['recipe_type'] = $data['recipe_type'];
			$row1['recipe_name'] = $data['recipe_name'];
			$row1['recipe_time'] = $data['recipe_time'];
			$row1['recipe_ingredients'] = $data['recipe_ingredients'];
			$row1['recipe_direction'] = $data['recipe_direction'];
 			
		 
			$row1['recipe_image_b'] = $file_path.'images/'.$data['recipe_image'];
			$row1['recipe_image_s'] = get_thumb('images/'.$data['recipe_image'],'300x300');

			$row1['video_url'] = $data['video_url'];
			$row1['video_id'] = $data['video_id'];
			$row1['recipe_views'] = $data['recipe_views']; 
 			$row1['rate_avg'] = $data['rate_avg'];
			$row1['total_rate'] = $data['total_rate'];
   

			$row1['cid'] = $data['cid'];
			$row1['category_name'] = $data['category_name'];
			$row1['category_image'] = $file_path.'images/'.$data['category_image'];
			$row1['category_image_thumb'] = get_thumb('images/'.$data['category_image'],'300x300');
			 
			 
			array_push($jsonObj,$row1);
		
		}

		$row['latest_recipe']=$jsonObj;


		$jsonObj_2= array();	

		$query_all="SELECT * FROM tbl_recipe
		LEFT JOIN tbl_category ON tbl_recipe.cat_id= tbl_category.cid 
		WHERE tbl_recipe.status='1' ORDER BY tbl_recipe.recipe_views DESC LIMIT 3";

		$sql_all = mysqli_query($mysqli,$query_all)or die(mysqli_error());

		while($data_all = mysqli_fetch_assoc($sql_all))
		{
			$row2['id'] = $data_all['id'];
			$row2['cat_id'] = $data_all['cat_id'];
			$row2['sub_cat_id'] = $data_all['sub_cat_id'];
			$row2['recipe_type'] = $data_all['recipe_type'];
			$row2['recipe_name'] = $data_all['recipe_name'];
			$row2['recipe_time'] = $data_all['recipe_time'];
			$row2['recipe_ingredients'] = $data_all['recipe_ingredients'];
			$row2['recipe_direction'] = $data_all['recipe_direction'];
 			
		 
			$row2['recipe_image_b'] = $file_path.'images/'.$data_all['recipe_image'];
			$row2['recipe_image_s'] = get_thumb('images/'.$data_all['recipe_image'],'300x300');

			$row2['video_url'] = $data_all['video_url'];
			$row2['video_id'] = $data_all['video_id'];
			$row2['recipe_views'] = $data_all['recipe_views'];	
 			$row2['rate_avg'] = $data_all['rate_avg'];
			$row2['total_rate'] = $data_all['total_rate'];
  

			$row2['cid'] = $data_all['cid'];
			$row2['category_name'] = $data_all['category_name'];
			$row2['category_image'] = $file_path.'images/'.$data_all['category_image'];
			$row2['category_image_thumb'] = get_thumb('images/'.$data_all['category_image'],'300x300');
			
			

			array_push($jsonObj_2,$row2);
		
		}
		$row['most_view_recipe']=$jsonObj_2; 


         $jsonObj3= array();
		
		$cat_order=API_CAT_ORDER_BY;


		$query4="SELECT * FROM tbl_category ORDER BY tbl_category.".$cat_order." DESC LIMIT 5";
		
		$sql4 = mysqli_query($mysqli,$query4)or die(mysqli_error());

		while($data4 = mysqli_fetch_assoc($sql4))
		{
			
			$row4['cid'] = $data4['cid'];
			$row4['category_name'] = $data4['category_name'];
 			$row4['category_image'] = $file_path.'images/'.$data4['category_image'];
		    $row4['category_image_thumb'] = get_thumb('images/'.$data4['category_image'],'300x300');

			array_push($jsonObj3,$row4);
		
		   }
         $row['category_list'] = $jsonObj3;

	     $set['RECIPE_APP'] = $row;

	      header( 'Content-Type: application/json; charset=utf-8' );
	      echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
	      die();
    
    }
    else if($get_method['method_name']=="get_latest")
	{
		//$limit=$_GET['latest'];	 

		$limit=API_LATEST_LIMIT;

		$jsonObj= array();	
 
		$query="SELECT * FROM tbl_recipe
		LEFT JOIN tbl_category ON tbl_recipe.cat_id= tbl_category.cid 
		WHERE tbl_recipe.status='1' ORDER BY tbl_recipe.id DESC LIMIT $limit";

		$sql = mysqli_query($mysqli,$query)or die(mysqli_error());

		while($data = mysqli_fetch_assoc($sql))
		{
			$row['id'] = $data['id'];
			$row['cat_id'] = $data['cat_id'];
			$row['sub_cat_id'] = $data['sub_cat_id'];
			$row['recipe_type'] = $data['recipe_type'];
			$row['recipe_name'] = $data['recipe_name'];
			$row['recipe_time'] = $data['recipe_time'];
			$row['recipe_ingredients'] = $data['recipe_ingredients'];
			$row['recipe_direction'] = $data['recipe_direction'];
 			
		 
			$row['recipe_image_b'] = $file_path.'images/'.$data['recipe_image'];
			$row['recipe_image_s'] = get_thumb('images/'.$data['recipe_image'],'300x300');

			$row['video_url'] = $data['video_url'];
			$row['video_id'] = $data['video_id'];
			$row['recipe_views'] = $data['recipe_views'];			 
 			 $row['rate_avg'] = $data['rate_avg'];
			$row['total_rate'] = $data['total_rate'];
  

			$row['cid'] = $data['cid'];
			$row['category_name'] = $data['category_name'];
			$row['category_image'] = $file_path.'images/'.$data['category_image'];
			$row['category_image_thumb'] = get_thumb('images/'.$data['category_image'],'300x300');
			 

			array_push($jsonObj,$row);
		
		}

		$set['RECIPE_APP'] = $jsonObj;
		
		header( 'Content-Type: application/json; charset=utf-8' );
	    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
		die();

	}	
	else if($get_method['method_name']=="get_popular_recipe")
	{
		 

		$jsonObj= array();	
 
		$query="SELECT * FROM tbl_recipe
		LEFT JOIN tbl_category ON tbl_recipe.cat_id= tbl_category.cid 
		WHERE tbl_recipe.status='1' ORDER BY tbl_recipe.recipe_views DESC LIMIT 5";

		$sql = mysqli_query($mysqli,$query)or die(mysqli_error());

		while($data = mysqli_fetch_assoc($sql))
		{	
			$row['id'] = $data['id'];
			$row['cat_id'] = $data['cat_id'];
			$row['sub_cat_id'] = $data['sub_cat_id'];
			$row['recipe_type'] = $data['recipe_type'];
			$row['recipe_name'] = $data['recipe_name'];
			$row['recipe_time'] = $data['recipe_time'];
			$row['recipe_ingredients'] = $data['recipe_ingredients'];
			$row['recipe_direction'] = $data['recipe_direction'];
 			
		 
			$row['recipe_image_b'] = $file_path.'images/'.$data['recipe_image'];
			$row['recipe_image_s'] = get_thumb('images/'.$data['recipe_image'],'300x300');

			$row['video_url'] = $data['video_url'];
			$row['video_id'] = $data['video_id'];
			$row['recipe_views'] = $data['recipe_views'];
			$row['rate_avg'] = $data['rate_avg'];
			$row['total_rate'] = $data['total_rate'];
  
			$row['cid'] = $data['cid'];
			$row['category_name'] = $data['category_name'];
			$row['category_image'] = $file_path.'images/'.$data['category_image'];
			$row['category_image_thumb'] = get_thumb('images/'.$data['category_image'],'300x300');
			

			array_push($jsonObj,$row);
		
		}
		
		$set['RECIPE_APP'] = $jsonObj;	
		
		header( 'Content-Type: application/json; charset=utf-8' );
	    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
		die();
	
	}
	else if($get_method['method_name']=="cat_list")
 	{
 		$jsonObj= array();
		
		$cat_order=API_CAT_ORDER_BY;


		$query="SELECT cid,category_name,category_image,category_image_icon FROM tbl_category WHERE status=1 ORDER BY tbl_category.".$cat_order."";
		$sql = mysqli_query($mysqli,$query)or die(mysql_error());

		while($data = mysqli_fetch_assoc($sql))
		{
			 

			$row['cid'] = $data['cid'];
			$row['category_name'] = $data['category_name'];
			$row['category_image'] = $file_path.'images/'.$data['category_image'];
			$row['category_image_thumb'] = get_thumb('images/'.$data['category_image'],'300x300');
			
			if($data['category_image_icon'])
			{
				$row['category_image_icon'] = $file_path.'images/'.$data['category_image_icon'];
			}
			else
			{
				$row['category_image_icon'] = '';
			}
			
 
			array_push($jsonObj,$row);
		
		}

		$set['RECIPE_APP'] = $jsonObj;
		
		header( 'Content-Type: application/json; charset=utf-8' );
	    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
		die();
 	}
 	else if($get_method['method_name']=="get_sub_cat")
	{
		$jsonObj= array();

		$cat_id=$get_method['cat_id'];
		 
		$query="SELECT * FROM tbl_sub_category WHERE tbl_sub_category.cat_id='".$cat_id."' ORDER BY tbl_sub_category.sid";
		$sql = mysqli_query($mysqli,$query);

		while($data = mysqli_fetch_assoc($sql))
		{
			$row['sid'] = $data['sid'];
			$row['cat_id'] = $data['cat_id'];
			$row['sub_cat_name'] = $data['sub_cat_name'];		
 
			$row['sub_cat_image'] = $file_path.'images/'.$data['sub_cat_image'];
			$row['sub_cat_image_thumb'] = get_thumb('images/'.$data['sub_cat_image'],'300x300');

			array_push($jsonObj,$row);
		
		}

		$set['RECIPE_APP'] = $jsonObj;
		
		header( 'Content-Type: application/json; charset=utf-8' );
	    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
		die();

		
	}	
	else if($get_method['method_name']=="get_recipe_by_sub_cat")
	{
		
		$post_order_by=API_CAT_POST_ORDER_BY;

		$sub_cat_id=$get_method['sub_cat_id'];	

		$jsonObj0= array();	
	
	
							 
	    $query0="SELECT * FROM tbl_recipe
		LEFT JOIN tbl_sub_category ON tbl_recipe.sub_cat_id= tbl_sub_category.sid 
		where tbl_recipe.sub_cat_id='".$sub_cat_id."' ORDER BY tbl_recipe.total_rate ".$post_order_by."";

		$sql0 = mysqli_query($mysqli,$query0)or die(mysqli_error());

		while($data0 = mysqli_fetch_assoc($sql0))
		{
			$row0['id'] = $data0['id'];
			$row0['cat_id'] = $data0['cat_id'];
			$row0['sub_cat_id'] = $data0['sub_cat_id'];
			$row0['recipe_type'] = $data0['recipe_type'];
			$row0['recipe_name'] = $data0['recipe_name'];
			$row0['recipe_time'] = $data0['recipe_time'];
			$row0['recipe_ingredients'] = $data0['recipe_ingredients'];
			$row0['recipe_direction'] = $data0['recipe_direction'];
 			
		 
			$row0['recipe_image_b'] = $file_path.'images/'.$data0['recipe_image'];
			$row0['recipe_image_s'] = get_thumb('images/'.$data['recipe_image'],'300x300');

			$row0['video_url'] = $data0['video_url'];
			$row0['video_id'] = $data0['video_id'];
			$row0['recipe_views'] = $data0['recipe_views'];
			 $row0['rate_avg'] = $data0['rate_avg'];
			$row0['total_rate'] = $data0['total_rate'];
  
  

			$row0['sub_cat_name'] = $data0['sub_cat_name'];
			$row0['sub_thumbnail_b'] = $file_path.'images/'.$data0['sub_cat_image'];
		    $row0['sub_thumbnail_s'] = get_thumb('images/'.$data['category_image'],'300x300');
 

			array_push($jsonObj0,$row0);
		
		}

		$set['RECIPE_APP'] = $jsonObj0;
		
		header( 'Content-Type: application/json; charset=utf-8' );
	    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
		die();

		
	}
	else if($get_method['method_name']=="get_single_recipe")
	{
		$recipe_id=$get_method['recipe_id'];  
				 
		$jsonObj= array();	

		$query="SELECT * FROM tbl_recipe
		LEFT JOIN tbl_category ON tbl_recipe.cat_id= tbl_category.cid
		WHERE tbl_recipe.id='".$recipe_id."'";

		$sql = mysqli_query($mysqli,$query)or die(mysqli_error());

		while($data = mysqli_fetch_assoc($sql))
		{
			 
			
			$row['id'] = $data['id'];
			$row['cat_id'] = $data['cat_id'];
			$row['sub_cat_id'] = $data['sub_cat_id'];
			$row['recipe_type'] = $data['recipe_type'];
			$row['recipe_name'] = $data['recipe_name'];
			$row['recipe_time'] = $data['recipe_time'];
			$row['recipe_ingredients'] = $data['recipe_ingredients'];
			$row['recipe_direction'] = $data['recipe_direction'];
 			
		 
			$row['recipe_image_b'] = $file_path.'images/'.$data['recipe_image'];
			$row['recipe_image_s'] = get_thumb('images/'.$data['recipe_image'],'300x300');

			$row['video_url'] = $data['video_url'];
			$row['video_id'] = $data['video_id'];
			$row['recipe_views'] = $data['recipe_views'];
			$row['rate_avg'] = $data['rate_avg'];
			$row['total_rate'] = $data['total_rate'];

			$row['category_name'] = $data['category_name'];
           
		    //Rating
		      $qry1="SELECT * FROM tbl_rating WHERE recipe_id='".$recipe_id."'";
		      $result1=mysqli_query($mysqli,$qry1); 

		      if($result1->num_rows > 0)
		      {
		      		while ($user_rating=mysqli_fetch_array($result1)) {
 		      	
		 		      	 
 		 		      	$row3['user_name'] = get_user_name($user_rating['user_id']);
 		 		      	//$row3['ip'] =$user_rating['ip'];
 		 		      	$row3['rate'] =$user_rating['rate'];
		 		      	$row3['dt_rate'] = date('d M Y',strtotime($user_rating['dt_rate']));
 		 		      	$row3['message'] = $user_rating['message'];

		 		      	$row['Ratings'][]= $row3;
				      }
		     
		      }
		      else
		      {	
		      		 
		      		$row['Ratings'][]= '';
		      }


			array_push($jsonObj,$row);
		
			}
 
 		$view_qry=mysqli_query($mysqli,"update tbl_recipe set recipe_views=recipe_views+1 where id='".$recipe_id."'");

		$set['RECIPE_APP'] = $jsonObj;
		
		header( 'Content-Type: application/json; charset=utf-8' );
	    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
		die();	
 

	}	
	else if($get_method['method_name']=="get_search_recipe")
	{

		$search_text=$get_method['search_text'];	

		$jsonObj= array();	
	
	    $query="SELECT * FROM tbl_recipe
		LEFT JOIN tbl_category ON tbl_recipe.cat_id= tbl_category.cid 
		where tbl_recipe.recipe_name LIKE '%".$search_text."%' AND tbl_recipe.status='1' ORDER BY tbl_recipe.id";

		$sql = mysqli_query($mysqli,$query)or die(mysqli_error());

		while($data = mysqli_fetch_assoc($sql))
		{
			$row['id'] = $data['id'];
			$row['cat_id'] = $data['cat_id'];
			$row['sub_cat_id'] = $data['sub_cat_id'];
			$row['recipe_type'] = $data['recipe_type'];
			$row['recipe_name'] = $data['recipe_name'];
			$row['recipe_time'] = $data['recipe_time'];
			$row['recipe_ingredients'] = $data['recipe_ingredients'];
			$row['recipe_direction'] = $data['recipe_direction'];
 			
		 
			$row['recipe_image_b'] = $file_path.'images/'.$data['recipe_image'];
			$row['recipe_image_s'] = get_thumb('images/'.$data['recipe_image'],'300x300');

			$row['video_url'] = $data['video_url'];
			$row['video_id'] = $data['video_id'];
			$row['recipe_views'] = $data['recipe_views'];
			$row['rate_avg'] = $data['rate_avg'];
			$row['total_rate'] = $data['total_rate'];
   
  
			$row['cid'] = $data['cid'];
			$row['category_name'] = $data['category_name'];
			$row['category_image'] = $file_path.'images/'.$data['category_image'];
			$row['category_image_thumb'] = get_thumb('images/'.$data['category_image'],'300x300');
			 

			array_push($jsonObj,$row);
		
		}

		$set['RECIPE_APP'] = $jsonObj;
		
		header( 'Content-Type: application/json; charset=utf-8' );
	    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
		die();

		
	}		
	else if($get_method['method_name']=="user_register")
	  {	
	  		if($get_method['name']!='' AND $get_method['email']!='' AND $get_method['password']!='')
			{

				$qry = "SELECT * FROM tbl_users WHERE email = '".$get_method['email']."'"; 
				$result = mysqli_query($mysqli,$qry);
				$row = mysqli_fetch_assoc($result);
				
				if($row['email']!="")
				{
					$set['RECIPE_APP'][]=array('msg' => "Email address already used!",'success'=>'0');
				}
				else
				{ 
		 			
		 			 
		 			 $qry1="INSERT INTO tbl_users (`name`,`email`,`password`,`phone`,`status`) VALUES ('".$get_method['name']."','".$get_method['email']."','".$get_method['password']."','".$get_method['phone']."','1')"; 
		            
		            $result1=mysqli_query($mysqli,$qry1);  										 
							 
						
					$set['RECIPE_APP'][]=array('msg' => "Register successflly...!",'success'=>'1');
							
				}
		  

			}
			else
			{
				$set['RECIPE_APP'][]=array('msg' => "Empty fields!",'success'=>'0');
			}

			header( 'Content-Type: application/json; charset=utf-8' );
		    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
			die();
	  }
	  else if($get_method['method_name']=="user_login")
	  {

	  		$email = $get_method['email'];
			$password = $get_method['password'];

			$qry = "SELECT * FROM tbl_users WHERE email = '".$email."' and password = '".$password."'"; 
			$result = mysqli_query($mysqli,$qry);
			$num_rows = mysqli_num_rows($result);
			$row = mysqli_fetch_assoc($result);
			
	    if ($num_rows > 0)
			{ 
						 
				     $set['RECIPE_APP'][]=array('user_id' => $row['id'],'name'=>$row['name'],'success'=>'1');
				      
				 
			}		 
			else
			{
					 
	 				$set['RECIPE_APP'][]=array('msg' =>'Login failed','success'=>'0');
	 				 
			}

			header( 'Content-Type: application/json; charset=utf-8' );
		    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
			die();

	  }
	  else if($get_method['method_name']=="user_profile")
	  {
	  		$qry = "SELECT * FROM tbl_users WHERE id = '".$get_method['user_id']."'"; 
			$result = mysqli_query($mysqli,$qry);
			 
			$row = mysqli_fetch_assoc($result);
		  				 
		    $set['RECIPE_APP'][]=array('user_id' => $row['id'],'name'=>$row['name'],'email'=>$row['email'],'phone'=>$row['phone'],'success'=>'1');

		    header( 'Content-Type: application/json; charset=utf-8' );
		    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
			die();
	  }
	  else if($get_method['method_name']=="user_profile_update")
	  {
	  		if($get_method['password']!="")
			{
				$user_edit= "UPDATE tbl_users SET name='".$get_method['name']."',email='".$get_method['email']."',password='".$get_method['password']."',phone='".$get_method['phone']."' WHERE id = '".$get_method['user_id']."'";	 
			}
			else
			{
				$user_edit= "UPDATE tbl_users SET name='".$get_method['name']."',email='".$get_method['email']."',phone='".$get_method['phone']."' WHERE id = '".$get_method['user_id']."'";	 
			}
	   		
	   		$user_res = mysqli_query($mysqli,$user_edit);
	 		 
		  				 
			$set['RECIPE_APP'][]=array('msg'=>'Updated','success'=>'1');

	  		 header( 'Content-Type: application/json; charset=utf-8' );
		    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
			die();
	 }	
	else if($get_method['method_name']=="forgot_pass")
	{
		  
	 	 
		$qry = "SELECT * FROM tbl_users WHERE email = '".$get_method['user_email']."'"; 
		$result = mysqli_query($mysqli,$qry);
		$row = mysqli_fetch_assoc($result);

		if($row['email']!="")
		{
 
			$to = $get_method['user_email'];
			$recipient_name=$row['name'];
			// subject
			$subject = '[IMPORTANT] '.APP_NAME.' Forgot Password Information';
 			
			$message='<div style="background-color: #f9f9f9;" align="center"><br />
					  <table style="font-family: OpenSans,sans-serif; color: #666666;" border="0" width="600" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
					    <tbody>
					      <tr>
					        <td colspan="2" bgcolor="#FFFFFF" align="center"><img src="http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['REQUEST_URI']).'/images/'.APP_LOGO.'" alt="header" width="120"/></td>
					      </tr>
					      <tr>
					        <td width="600" valign="top" bgcolor="#FFFFFF"><br>
					          <table style="font-family:OpenSans,sans-serif; color: #666666; font-size: 10px; padding: 15px;" border="0" width="100%" cellspacing="0" cellpadding="0" align="left">
					            <tbody>
					              <tr>
					                <td valign="top"><table border="0" align="left" cellpadding="0" cellspacing="0" style="font-family:OpenSans,sans-serif; color: #666666; font-size: 10px; width:100%;">
					                    <tbody>
					                      <tr>
					                        <td><p style="color: #262626; font-size: 28px; margin-top:0px;"><strong>Dear '.$row['name'].'</strong></p>
					                          <p style="color:#262626; font-size:20px; line-height:32px;font-weight:500;">Thank you for using '.APP_NAME.',<br>
					                            Your password is: '.$row['password'].'</p>
					                          <p style="color:#262626; font-size:20px; line-height:32px;font-weight:500;margin-bottom:30px;">Thanks you,<br />
					                            '.APP_NAME.'.</p></td>
					                      </tr>
					                    </tbody>
					                  </table></td>
					              </tr>
					               
					            </tbody>
					          </table></td>
					      </tr>
					      <tr>
					        <td style="color: #262626; padding: 20px 0; font-size: 20px; border-top:5px solid #52bfd3;" colspan="2" align="center" bgcolor="#ffffff">Copyright © '.APP_NAME.'.</td>
					      </tr>
					    </tbody>
					  </table>
					</div>';
 

			send_email($to,$recipient_name,$subject,$message);
 
			  
			$set['RECIPE_APP'][]=array('msg' => "Password has been sent on your mail!",'success'=>'1');
		}
		else
		{  	 
				
			$set['RECIPE_APP'][]=array('msg' => "Email not found in our database!",'success'=>'0');
					
		}

	
		header( 'Content-Type: application/json; charset=utf-8' );
	    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
		die();	
	}
	else if($get_method['method_name']=="recipe_rate")
  	{

  		  $ip = $get_method['device_id'];
	      $recipe_id = $get_method['post_id'];
	      $user_id = $get_method['user_id'];
	      $therate = $get_method['rate'];
	      $message = $get_method['message'];

	  
	      $query1 = mysqli_query($mysqli,"select * from tbl_rating where recipe_id  = '$recipe_id' && user_id = '$user_id' "); 
	      while($data1 = mysqli_fetch_assoc($query1)){
	        $rate_db1[] = $data1;
	      }
	      if(@count($rate_db1) == 0 ){
	      
	           $data = array(            
	              'recipe_id'  =>$recipe_id,
	              'user_id'  =>$user_id,
	              'rate'  =>  $therate,
	              'message'  =>  $message,
	               'ip'  => $ip,
	               );  
	 		 $qry = Insert('tbl_rating',$data); 
	      
	          //Total rate result
	           
	        $query = mysqli_query($mysqli,"select * from tbl_rating where recipe_id = '$recipe_id' ");
	               
	         while($data = mysqli_fetch_assoc($query)){
	                    $rate_db[] = $data;
	                    $sum_rates[] = $data['rate'];
	               
	                }
	        
	                if(@count($rate_db)){
	                    $rate_times = count($rate_db);
	                    $sum_rates = array_sum($sum_rates);
	                    $rate_value = $sum_rates/$rate_times;
	                    $rate_bg = (($rate_value)/5)*100;
	                }else{
	                    $rate_times = 0;
	                    $rate_value = 0;
	                    $rate_bg = 0;
	                }
	         
	      $rate_avg=round($rate_value); 
	        
	      $sql="update tbl_recipe set total_rate=total_rate + 1 ,rate_avg='$rate_avg' where id='".$recipe_id."'";
	      mysqli_query($mysqli,$sql);
	        
	      $total_rat_sql="SELECT * FROM tbl_recipe WHERE id='".$recipe_id."'";
	      $total_rat_res=mysqli_query($mysqli,$total_rat_sql);
	      $total_rat_row=mysqli_fetch_assoc($total_rat_res);
	    
					echo '{"RECIPE_APP":[{"MSG":"You have succesfully rated","rate_avg":"'.$rate_avg.'"}]}';
	        
	      }else{
	                
	        echo '{"RECIPE_APP":[{"MSG":"You have already rated"}]}';
	      }

	      exit();

  	} 		  	 
	else if($get_method['method_name']=="get_app_details")
	{
		$jsonObj= array();	

		$query="SELECT * FROM tbl_settings WHERE id='1'";
		$sql = mysqli_query($mysqli,$query)or die(mysqli_error());

		while($data = mysqli_fetch_assoc($sql))
		{	
			$row['package_name'] = $data['package_name']; 
			$row['ios_bundle_identifier'] = $data['ios_bundle_identifier']; 

			$row['app_name'] = $data['app_name'];
			$row['app_tagline'] = $data['app_tagline'];
			$row['app_logo'] = $data['app_logo'];
			$row['app_version'] = $data['app_version'];
			$row['app_author'] = $data['app_author'];
			$row['app_contact'] = $data['app_contact'];
			$row['app_email'] = $data['app_email'];
			$row['app_website'] = $data['app_website'];
			$row['app_description'] = stripslashes($data['app_description']);
 			$row['app_developed_by'] = $data['app_developed_by'];

			$row['app_privacy_policy'] = stripslashes($data['app_privacy_policy']);
 
			$row['publisher_id'] = $data['publisher_id'];
			$row['interstital_ad'] = $data['interstital_ad'];
			$row['interstital_ad_id'] = $data['interstital_ad_id'];
			$row['interstital_ad_click'] = $data['interstital_ad_click'];
 			$row['banner_ad'] = $data['banner_ad'];
 			$row['banner_ad_id'] = $data['banner_ad_id'];
            
            $row['publisher_id_ios'] = $data['publisher_id_ios'];
 			$row['app_id_ios'] = $data['app_id_ios'];
			$row['interstital_ad_ios'] = $data['interstital_ad_ios'];
			$row['interstital_ad_id_ios'] = $data['interstital_ad_id_ios'];
			$row['interstital_ad_click_ios'] = $data['interstital_ad_click_ios'];
 			$row['banner_ad_ios'] = $data['banner_ad_ios'];
 			$row['banner_ad_id_ios'] = $data['banner_ad_id_ios'];
	

			array_push($jsonObj,$row);
		
		}

		$set['RECIPE_APP'] = $jsonObj;
		
		header( 'Content-Type: application/json; charset=utf-8' );
	    echo $val= str_replace('\\/', '/', json_encode($set,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
		die();	
	}
	else
	{
	  		$get_method = checkSignSalt($_POST['data']);
	}		
	 
	 
?>