<?php

class RoomStatusChange extends CI_Model
{
	function __construct()
    {
        parent::__construct();
		 
    }
	function RoomStatusChange_Val()
	{
		 $this->form_validation->set_rules('fromDate', 'From.Date', 'required');
		 $this->form_validation->set_rules('toDate', 'To.Date', 'required');
		 $this->form_validation->set_rules('BlockType', 'BlockType', 'required');		 
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
	function RoomStatusChange_exec()
	{   if($_REQUEST['BlockType']=='1')
		{$FoBlock=1;
		 $MBlock=0;}
		else
		{$FoBlock=0;
		 $MBlock=1;}
	
	
		$qry1="insert into Trans_blockmas(dirty,blockdate,blockno,reason,roomid,mblock,foblock,fromdate,fromtime,todate,totime,blockeduserid,blocktime)
		values('1',convert(varchar, getdate(), 23),dbo.BlockMasNo(),'".$_REQUEST['reason']."','".$_REQUEST['roomid']."','".$MBlock."','".$FoBlock."',
		'".date("Y-m-d", strtotime($_REQUEST['fromDate']))."',convert(VARCHAR,getdate(),108),'".date("Y-m-d", strtotime($_REQUEST['toDate']))."',convert(VARCHAR,getdate(),108),'".User_id."',convert(VARCHAR,getdate(),108))";
		 
		$qry2="update Room_Status set Status='N',blocked='1' ,mblock='".$MBlock."',foblock='".$FoBlock."' where Roomid='".$_REQUEST['roomid']."'";
		
		echo "BEGIN Try ";
		echo "BEGIN Transaction ";
		echo "BEGIN Tran ";
		echo "Declare @Siden INT; ";
		echo $qry1;			
		echo $qry2;	
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