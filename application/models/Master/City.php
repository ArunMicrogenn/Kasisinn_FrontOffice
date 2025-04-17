<?php

class City extends CI_Model
{
	function __construct()
    {
        parent::__construct();
		 
    }
	function City_Val()
	{
		 $this->form_validation->set_rules('City', 'City', 'required');
         $this->form_validation->set_rules('State_Id', 'State_Id', 'required');
  
		 
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
	function City_exec()
	{
		$qry= " exec Exec_City'".$_REQUEST['City']."',
        '".$_REQUEST['State_Id']."',
        
        '".@$_REQUEST['idv']."','".str_replace(" ","",$_REQUEST['BUT'])."'";
		$res=$this->db->query($qry);
		$msg=$this->db->error(); 
		$this->Myclass->GetRec($msg,$res,$qry);
	}
}
?>