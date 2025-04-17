<?php

class AdvanceResettlement extends CI_Model
{
	function __construct()
    {
        parent::__construct();
		 
    }
	function AdvanceResettlement_Val()
	{
		 $this->form_validation->set_rules('RoomNo', 'RoomNo', 'required');
		 $this->form_validation->set_rules('Advance', 'Advance', 'required');
		 $this->form_validation->set_rules('paymode', 'paymode', 'required');
		 if($this->input->post('paymode') !='1')
		 {
			$this->form_validation->set_rules('cardnumber', 'cardnumber', 'required');
			$this->form_validation->set_rules('bank', 'bank', 'required');
			$this->form_validation->set_rules('validate', 'validate', 'required');
		 }
		 if($this->form_validation->run() == FALSE)
		 {
			 $output = $this->form_validation->return_f_error($this->input->post());
			 echo $output = json_encode($output);
		 }
		 else
		 {
			 $output = $this->form_validation->return_success($this->input->post());
			 echo $output = json_encode($output);
		 }
	}
	function AdvanceResettlement_exec()
	{ if($_REQUEST['BUT'] =='SAVE')
	   {
			$qry="Update Trans_Receipt_mas set paymodeid='".$_REQUEST['paymode']."',bank='".$_REQUEST['bank']."',cardnumber='".$_REQUEST['cardnumber']."',validdate='".$_REQUEST['validate']."',edituserid=".Hotel_Id." where Receiptid='".$_REQUEST['idv']."'";		
			$res=$this->db->query($qry);
			$msg=$this->db->error(); 
			//$this->Myclass->GetRec($msg,$res,$qry);
			$output = array();
			$output['Success']=true;
			 $output['MSG']="Advance Resettlement Successfully";		 
			print_r(json_encode($output));
	     
		}
	   else
	   {
		  $qry= " Exec_Facility '".$_REQUEST['Facility']."',".Hotel_Id.",'".$_REQUEST['Active']."','".@$_REQUEST['idv']."','".str_replace(" ","",$_REQUEST['BUT'])."'";
		$res=$this->db->query($qry);
		$msg=$this->db->error(); 
		$this->Myclass->GetRec($msg,$res,$qry); 
	   }
	}
}
?>