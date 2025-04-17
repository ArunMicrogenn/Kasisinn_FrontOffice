<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Room extends CI_Controller {

function __construct() {
        parent::__construct();
         define('ActMenu','Room');
		$ci =& get_instance();
		$ci->router->class;  
		$ci->router->method; 
    }

	
    //###########################################
	
	
	
	//*********************************************************************\\
	public function Edit()
	{
		$this->load->view('Master/Edit/'.$_REQUEST['link']);
	}
}
