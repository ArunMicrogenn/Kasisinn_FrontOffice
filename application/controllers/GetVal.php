<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class GetVal extends CI_Controller {

function __construct() {
        parent::__construct();
         
    }

	 
	public function TaxSetp()
	{ 
		 $this->load->view('GetVal/TaxSetp');
    }
    
}
