<?php

class Changegueststay extends CI_Model
{
	function __construct()
    {
        parent::__construct();
		 
    }
	function Changegueststay_Val()
	{
		 $this->form_validation->set_rules('depdate', 'Dep.Date', 'required');
		 $this->form_validation->set_rules('roomid', 'Room.Num', 'required');
		 $this->form_validation->set_rules('reason', 'reason', 'required');
		 
		 if ($this->form_validation->run() == FALSE)
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
	function Changegueststay_exec() 
	{   $depTime= substr($_REQUEST['depdate'],11);
	    $dqpdate=date("Y-m-d", strtotime($_REQUEST['depdate'])); 		
		
		$qry= "exec Update_ChangeguestStay '".date("Y-m-d", strtotime($dqpdate))."','".$depTime."','".$_REQUEST['roomid']."','".User_id."'";
		
		$res=$this->db->query($qry);
		$msg=$this->db->error(); 
		$this->Myclass->GetRec($msg,$res,$qry);  
	 
	}
}
?>