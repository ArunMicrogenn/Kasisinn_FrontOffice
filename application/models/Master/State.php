<?php

class State extends CI_Model
{
	function __construct()
    {
        parent::__construct();
		 
    }
	function State_Val()
	{
		 $this->form_validation->set_rules('State', 'State', 'required');
         $this->form_validation->set_rules('Country_Id', 'Country_Id', 'required');
		 
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
	function State_exec()
	{
		$qry= " Exec_State '".$_REQUEST['State']."',
        '".$_REQUEST['Country_Id']."',
        '".@$_REQUEST['idv']."','".str_replace(" ","",$_REQUEST['BUT'])."'";
		$res=$this->db->query($qry);
		$msg=$this->db->error(); 
		$this->Myclass->GetRec($msg,$res,$qry);
	}
}
?>