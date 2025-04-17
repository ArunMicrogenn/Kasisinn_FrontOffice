<?php

class Menu extends CI_Model
{
	function __construct()
    {
        parent::__construct();
		if(@$this->session->userdata['POS'])
		{
			foreach (@$this->session->userdata['POS'] as $key => $item) {
				define($key,$item);
			}
		}
		
	 
    }
	function Menu_($Menu,$Session)
	{
		
		 ?>
		<ul class="sidebar-menu" data-widget="tree">
         <ul class="sidebar-menu">
         <li style="background-color:rgba(221,216,216,1.00)" ><a href="<?php echo scs_url;?>"><i class="fa fa-dashboard"></i> Dashboard </a></li>
        <?php 
	   $qry=" EXEC dbo.Gen_Menu ".@$Session->userdata['POS']['User_id'];
	   $res=$this->db->query($qry);
	   $categories = array("Categories" => array());
	   foreach($res->result() as $row)
	   {
		   $category = array(); // temp array
		   $category["Menu"] =$row->Menu;
		   $category["Icon"] = $row->Icon;		  
		   $category["Des"] = $row->Des;	  
		   $category["main_categories"] = array(); 
		   
		 $qry1=" EXEC dbo.Gen_Mainmenu ".$row->Menu_Id.",".@$Session->userdata['POS']['UserGroup_Id'];
		 $sres1=$this->db->query($qry1);
		 foreach($sres1->result() as $srow1)
		  { 
		    $maincat = array();
			$maincat["Menu"] = $srow1->Mainmenu;
			$maincat["Icon"] = $srow1->Icon;	
			$maincat["Des"] = $srow1->Des;	
			$maincat["sub_categories"] = array();   			
		   
		   $qry=" EXEC dbo.Gen_Sub ".$srow1->Mainmenu_id.",".@$Session->userdata['POS']['UserGroup_Id'];
	        $sres=$this->db->query($qry);
		    foreach($sres->result() as $srow)
		    {
			   $subcat = array();
			   $subcat["Menu"] = $srow->Smenu;
               $subcat["Des"] = $srow->Des;
			   array_push($maincat["sub_categories"], $subcat);
		    }
			array_push($category["main_categories"], $maincat);
		  }
		   
		   array_push($categories["Categories"], $category);
	   } 
	   
	   $data= json_encode($categories);
		   $data=json_decode($data,true);
		 
	 
		   foreach($data['Categories']   as $da)
		   {
			   if($da['Menu']!="")
				  {
					  $Rep="#";
			        		   
			     echo '<li class="treeview amenus '.$da['Des'].'  "  >
			         <a href="'.$Rep.'" class="menuclo" style="color:FFF" > <i class="'.$da['Icon'].' icon-sidebar"></i>
					 <i class="fa fa-angle-right chevron-icon-sidebar"></i> '.$da['Menu'].' </a>
					 <ul class="treeview-menu D_'.$da['Des'].'">';
					 
					 foreach($da['main_categories']   as $da1)
					 {   echo '<li class="treeview amenus '.$da1['Des'].'  "  >
						 <a href="'.$Rep.'" class="menuclo" style="color:FFF" > <i class="'.$da1['Icon'].' icon-sidebar"></i>
						 <i class="fa fa-angle-right chevron-icon-sidebar"></i> '.$da1['Menu'].' </a>
						 <ul class="treeview-menu D_'.$da1['Des'].'">';
							foreach($da1['sub_categories']  as   $Sub)
							 {
								 
								 echo '<li class="S_'.$Sub['Des'].'" > <a href="'.scs_url.'index.php/'.$da['Des'].'/'.$Sub['Des'].'"><i class="fa fa-circle-o"></i> '.$Sub['Menu'].'</a></li>';
							 }
						echo ' </ul></li>';
					 }
					 
					echo ' </ul></li>';
			    }
		   }
   
   
   ?>
 
 
<?php
		 
		return ;
	}
	function TopMenu_($Session)
	{   $notificounts='0';
		$sql="select StartDate,EndDate from Mas_Hotel where Hotel_Id=1";
		$exec=$this->db->query($sql); 
		foreach ($exec->result_array() as $rows)
		{		
		$aa_date =date_create(date('Y-m-d')); // convert the date to string
		$l_date=date_create($rows['EndDate']);
		$diff=date_diff($aa_date ,$l_date );
		$difference = $diff->format("%a");
		}
		if($difference <= 5)
		{
			$notificounts=$notificounts+'1';
		}		
		echo ' <div class="navbar-custom-menu">
		<ul class="nav navbar-nav ">
		 <li class="dropdown user user-menu">
			 <a href="#" class="dropdown-toggle" data-toggle="dropdown">
			 <i class="fa fa-bell-o"></i>
			 <span class="badge headerBadgeColor1">'.$notificounts .'</span>
			 </a>
			 <ul class="dropdown-menu">
				<li class="external"><h3><span class="bold">Notifications</span></h3>
				<span class="notification-label blue-bgcolor">New '.$notificounts .'</span></li>
				 <!-- User image -->';
				 if($difference <= 5)
				 {
					echo '<li class="user-header"><a  id="Subscription"><span class="notification-icon circle yellow"><i class="fa fa-warning"></i></span> Your Subscription will expire soon</a></li>';
				 }
			echo	' 				 
				 <!-- Menu Body -->               
			 </ul>
		 </li>
		</ul>
	 </div>  ';	
	}
	
	
	
	function Sms_Footer()
    {  
		$sql = "select isnull(whatsappBusinessSms,0) as wbsmsflag from extraoption";
			$res = $this->db->query($sql);
			foreach($res->result_array() as $row){
				$wbSmsFlag = $row['wbsmsflag'];
				
			}
			if($wbSmsFlag !=0 ){
		?>
        <!-- start footer -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>    
            $(document).ready(function () {
                refresh_Div();
            });

            var i = 1;
            function refresh_Div() {
                $.ajax({
                type: 'POST',
                url: '<?php echo scs_index?>Transaction/WhatsappSmsSending', 
                success: function(message) { 	
                if(message)
                {
					// console.log(message);
                    $( "#top-menu" ).load(window.location.href + " #top-menu" );

                }
                },
                });   
			// console.log("refreshing.....")
             }

            var reloadXML = setInterval(refresh_Div, 10000);
        </script>
		<?php
			}
    }
}
?>
