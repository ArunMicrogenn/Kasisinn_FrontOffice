<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Hapi extends CI_Controller {

function __construct() {
        parent::__construct();
         define('ActMenu','Hapi');
		$ci =& get_instance();
		$ci->router->class;  
		$ci->router->method; 
    }

	 
	public function Login()
	{ 
		$postdata = file_get_contents("php://input");
        $request = json_decode($postdata);
        $username=$request->username;
		$password=$request->password;
		$Hcode=$request->Hcode;
		
		$qry="exec M_Login '".$username."','".base64_encode($password)."','".$Hcode."'";
		$res=$this->db->query($qry)->row();
		print_r(json_encode($res));
    }
    
}
