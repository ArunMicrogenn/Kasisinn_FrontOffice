<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Configurations extends CI_Controller {

function __construct() {
        parent::__construct();
         define('ActMenu','Reprint');
		$ci =& get_instance();
		$ci->router->class;  
		$ci->router->method; 
    }
	 
    public function SmsConfiguration($ID=-1,$BUT='SAVE')
	{
		$data=array('F_Class'=>'Configurations','F_Ctrl'=>'SmsConfiguration');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		if($ID!=-1)
		{ 
			$REC=$this->Myclass->SmsConfiguration($ID);
			$data=array_merge($data,$REC[0]);
		}
		
	}
	public function SmsConfiguration_Val()
	{ 
		$this->load->model('Configurations/SmsConfiguration');
		$this->SmsConfiguration->SmsConfiguration_Val();
	}
	public function SmsConfiguration_Edit($ID=-1,$BUT='SAVE')
	{
		$data=array('F_Class'=>'Configurations','F_Ctrl'=>'SmsConfiguration_Edit','ID'=>$ID,'BUT'=>$BUT);
		if($ID!=-1)
		{ 
			$REC=$this->Myclass->SmsConfiguration($ID);
			$data=array_merge($data,$REC[0]);
		}
		 
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
	}

	// public function SmsUsers()
	// {
        
	// 	$data=array('F_Class'=>'Configurations','F_Ctrl'=>'SmsUsers');
	//     $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	// }

	public function SmsUsers($ID=-1,$BUT='SAVE')
	{
		
		$data=array('F_Class'=>'Configurations','F_Ctrl'=>'SmsUsers','ID'=>$ID,'BUT'=>$BUT);
		if($ID!=-1)
		{ 
			$REC=$this->Myclass->Smsuser($ID);
			$data=array_merge($data,$REC[0]); 
		}
		 
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}
	public function SmsUsers_Val()
	{ 
		$this->load->model('Configurations/SmsUsers');
		$this->SmsUsers->SmsUsers_Val();
	}
	public function SmsUsers_View()
	{
		$data=array('F_Class'=>'Configurations','F_Ctrl'=>'SmsUsers');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl']."_View",$data);
	
	}

	public function whatsappsms_report()
	{
		$data=array('F_Class'=>'Configurations','F_Ctrl'=>'whatsappsms_report');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
	}
    
}
