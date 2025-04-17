<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Setting extends CI_Controller {

function __construct() {
        parent::__construct();
         define('ActMenu','Setting');
		$ci =& get_instance();
		$ci->router->class;  
		$ci->router->method; 
    }

	public function UserGroup($ID=-1,$BUT='SAVE')
	{
		
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'UserGroup','ID'=>$ID,'BUT'=>$BUT);
		if($ID!=-1)
		{ 
			$REC=$this->Myclass->UserGroup($ID);
			$data=array_merge($data,$REC[0]);
		}
		 
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}
	public function UserGroup_Val()
	{ 
		$this->load->model('Setting/UserGroup');
		$this->UserGroup->UserGroup_Val();
	}
    public function UserGroup_View()
	{
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'UserGroup');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl']."_View",$data);
		
	}
	public function GroupRights()
	{
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'GroupRights');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl']."",$data);
	}
	public function UG_R($UGID)
	{
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'UG_R','UGID'=>$UGID);
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl']."",$data);
	}
	
	public function UG_RA($UGIDA,$UGID,$SMENU)
	{
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'UG_RA','UGIDA'=>$UGIDA,'UGID'=>$UGID,'SMENU'=>$SMENU);
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl']."",$data);
	}	

	public function UR_GRAND($ACT,$GRID,$MODE)
	{
        $qry="exec Exec_GroupRights ".$ACT.",".$GRID.",'".$MODE."'";
		$Res=$this->db->query($qry);		
	}
	
	public function HotelProperty($ID=Hotel_Id,$BUT='Update')
	{
		
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'HotelProperty','ID'=>$ID,'BUT'=>$BUT);
		if($ID!=-1)
		{ 
			$REC=$this->Myclass->HotelProperty($ID);
			$data=array_merge($data,$REC[0]);
		}
		 
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}
    //###########################################
	public function DataPurchaing($ID=-1,$BUT='SAVE')
	{
		
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'DataPurchaing','ID'=>$ID,'BUT'=>$BUT);
		if($ID!=-1)
		{ 
			$REC=$this->Myclass->DataPurchaing($ID);
			$data=array_merge($data,$REC[0]);
		}
		 
	   $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}
	public function DataPurchaing_Val()
	{ 
		$this->load->model('Setting/DataPurchaing');
		$this->DataPurchaing->DataPurchaing_Val();
	}
	public function HotelProperty_Val()
	{ 

		if($_FILES["fileToUpload"]["name"] !=''){
		$path ="upload";
		$newname = 'logo';
		$extension  = pathinfo( $_FILES["fileToUpload"]["name"], PATHINFO_EXTENSION ); // jpg
		$extension = 'png';
	    $basename   = $newname . "." . $extension; 
		 $desdir = "$path/";
		 $desdirc = "$path/$basename";
	 
		$file = $_FILES["fileToUpload"]["tmp_name"];
		$source_properties = getimagesize($file);
		$image_type = $source_properties[2];
		if ($image_type == IMAGETYPE_JPEG) {
			$image_resource_id = imagecreatefromjpeg($file);
		} elseif ($image_type == IMAGETYPE_GIF) {
			$image_resource_id = imagecreatefromgif($file);
		} elseif ($image_type == IMAGETYPE_PNG) {
			$image_resource_id = imagecreatefrompng($file);
        }
		$target_width = 160;
		$target_height = 128;
	    $target_layer = imagecreatetruecolor($target_width, $target_height);
		imagecopyresampled($target_layer, $image_resource_id, 0, 0, 0, 0, $target_width, $target_height, $source_properties[0], $source_properties[1]);
				
		  if(!file_exists($desdir)){
	 
		   mkdir($desdir, 0777,true);
		   echo "yes";   
		  }
		 
		   if(!file_exists($desdirc)){
			imagejpeg($target_layer, $desdirc);
	
		   }
		  else{
			imagejpeg($target_layer, $desdirc);
			}
		}
		   $qry= "exec Update_Mas_Hotel '".$_REQUEST['Company']."','".$_REQUEST['Address']."','".$_REQUEST['Address1']."','".$_REQUEST['website']."','".$_REQUEST['City']."','".$_REQUEST['PinCode']."','".$_REQUEST['Email']."','".$_REQUEST['MobileNo']."','".$_REQUEST['Phone']."','".$_REQUEST['State']."','".$_REQUEST['gstnumber']."','".$_REQUEST['Country']."','".Hotel_Id."'";
		   $res=$this->db->query($qry);
		   if($res){
			echo "success";
		   }else{
			echo "fail";
		   }
	}
	
	
	public function emails($ID=-1,$BUT='SAVE')
	{
		
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'emails','ID'=>$ID,'BUT'=>$BUT);
		if($ID!=-1)
		{ 
			$REC=$this->Myclass->Emails($ID);
			$data=array_merge($data,$REC[0]);
		}
		 
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}
	public function emails_Val()
	{ 
		$this->load->model('Setting/emails');
		$this->emails->emails_Val();
	}
    public function emails_View()
	{
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'emails');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl']."_View",$data);
		
	}
	//***************************************************** *//
	public function User($ID=-1,$BUT='SAVE')
	{
		
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'User','ID'=>$ID,'BUT'=>$BUT);
		if($ID!=-1)
		{ 
			$REC=$this->Myclass->User($ID);
			$data=array_merge($data,$REC[0]);
		}
		 
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}
	public function User_Val()
	{ 
		$this->load->model('Setting/User');
		$this->User->User_Val();
	}
	public function User_View()
	{
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'User');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl']."_View",$data);
		
	}
	//*********************************************************************\\
	public function Edit()
	{
		$this->load->view('Master/Edit/'.$_REQUEST['link']);
	}


	public function foSettings($ID=-1,$BUT='SAVE')
	{
		
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'foSettings','ID'=>$ID,'BUT'=>$BUT);
		if($ID!=-1)
		{ 
			$REC=$this->Myclass->UserGroup($ID);
			$data=array_merge($data,$REC[0]);
		}
		 
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}
	
	public function ExtraOption_save(){
		$sql = "update ExtraOption set walkoutbillshowincashierreport = '1' where FoExtra_Id = 1";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}

	public function ExtraOptionE_save(){
		$sql = "update ExtraOption set walkoutbillshowincashierreport = '0' where FoExtra_Id = 1";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}

	public function ExtraOptionP_save(){
		$sql = "update ExtraOption set walkoutbillprint = '1' where FoExtra_Id = 1";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}

	public function ExtraOptionPE_save(){
		$sql = "update ExtraOption set walkoutbillprint = '0' where FoExtra_Id = 1";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}


	public function UserRights()
	{
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'UserRights');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl']."",$data);
	}


	public function UR_R($UGID)
	{
		$data=array('F_Class'=>'Setting','F_Ctrl'=>'UR_R','UGID'=>$UGID);
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl']."",$data);
	}

	public function UserwalkoutOption_save(){
		$sql = "update Usertable set comcheckoutoption = '1' where User_id = '".$_REQUEST['id']."' ";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}

	public function UserwalkoutOptionE_save(){
		$sql = "update Usertable set comcheckoutoption = '0' where User_id = '".$_REQUEST['id']."' ";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}

	public function UserwalkoutReport_save(){
		$sql = "update Usertable set comcheckoutoptioncashierreport = '1' where User_id = '".$_REQUEST['id']."' ";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}

	public function UserwalkoutReportE_save(){
		$sql = "update Usertable set comcheckoutoptioncashierreport = '0' where User_id = '".$_REQUEST['id']."' ";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}
	
	public function UserwalkoutReprintE_save(){
		$sql = "update Usertable set comreprintbill = '0' where User_id = '".$_REQUEST['id']."' ";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}

	public function UserwalkoutReprint_save(){
		$sql = "update Usertable set comreprintbill = '1' where User_id = '".$_REQUEST['id']."' ";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}


	public function ExtraOptionReprint_save(){
		$sql = "update ExtraOption set comreprintbill = '1' where FoExtra_Id = 1";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}

	public function ExtraOptionReprintE_save(){
		$sql = "update ExtraOption set comreprintbill = '0' where FoExtra_Id = 1";
		$exe = $this->db->query($sql);
		if($exe){
			echo "Success";
		}
		else{
			echo "Fail";
		}
	}
}
