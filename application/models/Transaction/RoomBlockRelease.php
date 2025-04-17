<?php

class RoomBlockRelease extends CI_Model
{
	function __construct()
    {
        parent::__construct();
		 
    }
	function RoomBlockRelease_Val()
	{
		 $this->form_validation->set_rules('fromDate', 'From.Date', 'required');
		 $this->form_validation->set_rules('toDate', 'To.Date', 'required');		 
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
	function RoomBlockRelease_exec()
	{  
		$Up="update Room_Status set notready=0,blocked=0,foblock=0,mblock=0 where Roomid='".$_REQUEST['roomid']."'";
	
		$qry1="update Trans_blockmas set Reblockeduserid='".User_id."',blockrelasedate='".date('Y-m-d')."',blockrelasetime=convert(VARCHAR,getdate(),108),unblockreason='".$_REQUEST['reason']."' where blockid='".$_REQUEST['blockid']."'";		 			
		echo "BEGIN Try ";
		echo "BEGIN Transaction ";
		echo "BEGIN Tran ";
		echo "Declare @Siden INT; ";
		echo $qry1;			
		echo $Up;	
		echo "set @Siden=@@identity; ";	   
		echo " If @@error<>0 Rollback Tran else Commit Tran ";
		echo "COMMIT ";
		echo "end try ";
		echo "BEGIN CATCH ROLLBACK SELECT ERROR_NUMBER() AS ErrorNumber,ERROR_MESSAGE(); ";
		echo "END CATCH ";
		$sqc = ob_get_clean();
		$qry=$sqc;
		$res=$this->db->query($qry);
		$msg=$this->db->error(); 
		$output = array();
		 $output['Success']=true;
 		 $output['MSG']="Room Status Changed";		 
		 print_r(json_encode($output));
	//	$this->Myclass->GetRec($msg,$res,$qry);  
	 
	}
}
?>