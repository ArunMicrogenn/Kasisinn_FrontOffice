<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Booking extends CI_Controller {

function __construct() {
        parent::__construct();
         define('ActMenu','Booking');
		$ci =& get_instance();
		$ci->router->class;  
		$ci->router->method; 
    }

	 
	public function RoomBooking()
	{ 
		$data=array('F_Class'=>'Booking','F_Ctrl'=>'RoomBooking');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl']."",$data);
    }
	public function Cancellist()
	{ 
		$data=array('F_Class'=>'Booking','F_Ctrl'=>'Cancellist');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl']."",$data);
    }
    
}
