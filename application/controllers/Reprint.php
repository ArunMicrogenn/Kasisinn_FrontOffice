<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Reprint extends CI_Controller {

function __construct() {
        parent::__construct();
         define('ActMenu','Reprint');
		$ci =& get_instance();
		$ci->router->class;  
		$ci->router->method; 
    }
	 
    public function AdvanceReceipt()
	{
		$data=array('F_Class'=>'Reprint','F_Ctrl'=>'AdvanceReceipt');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}

    public function BillEntryReceipt()
	{
		$data=array('F_Class'=>'Reprint','F_Ctrl'=>'BillEntryReceipt');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}

    public function CheckoutBill()
	{
		$data=array('F_Class'=>'Reprint','F_Ctrl'=>'CheckoutBill');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}

	public function CheckoutReprint()
	{
		$data=array('F_Class'=>'Print','F_Ctrl'=>'CheckoutReprint');
		$this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
	}
	public function CheckoutSummaryReprint()
	{
		$data=array('F_Class'=>'Print','F_Ctrl'=>'CheckoutSummaryReprint');
		$this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
	}
	public function ResAdvanceReceipt()
	{
		$data=array('F_Class'=>'Reprint','F_Ctrl'=>'ResAdvanceReceipt');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}

	public function ComplementaryBill()
	{
		$data=array('F_Class'=>'Reprint','F_Ctrl'=>'ComplementaryBill');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}

	public function CashBookEntry()
	{
		$data=array('F_Class'=>'Reprint','F_Ctrl'=>'CashBookEntry');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}

	public function Registration()
	{
		$data=array('F_Class'=>'Reprint','F_Ctrl'=>'Registration');
	    $this->load->view($data['F_Class'].'/'.$data['F_Ctrl'],$data);
		
	}
    
}
