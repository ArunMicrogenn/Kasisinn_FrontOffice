<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Donate extends CI_Controller {

function __construct() {
        parent::__construct();
         define('ActMenu','Donate');
		$ci =& get_instance();
		$ci->router->class;  
		$ci->router->method; 
    }

	 
    public function Receipt()
	{
		$data=array('F_Class'=>'Donate','F_Ctrl'=>'Receipt');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}
	public function Decline()
	{
		$data=array('F_Class'=>'Donate','F_Ctrl'=>'Decline');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
	}
    
}
