<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Transaction','RoomStatusChange');
$this->pfrm->FrmHead2('Transaction / RoomStatusChange',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");

  $date=date("Y-m-d");
  $time= date("H:i:s");
  $previousdate=date('Y-m-d', strtotime("-1 days"));
  $sql="select DateofAudit,* from night_audit";
  $res=$this->db->query($sql);
  foreach ($res->result_array() as $row)
	{ $auditdate=$row['DateofAudit']; }
	 $creditdate=date('Y-m-d',strtotime($auditdate.'+1 days'));
?>


<div class="col-sm-12">
  <div class="the-box F_ram">
    <fieldset>
        <table class="FrmTable T-8" >
        <tr>
          <td align="right" class="F_val">Room Number</td>
          <td align="left">
		   <select id="roomid" name="roomid" class="scs-ctrl">
		    <option value="">---Select Room---</option>
            <?php $sql="select * from Room_Status rs
					Inner Join Mas_Room rm on rm.Room_Id=rs.Roomid
					where Status<>'Y' and isnull(blocked,0)=0";
				  $res=$this->db->query($sql);
				  foreach ($res->result_array() as $row)
				  {
                   echo '<option value="'.$row['Room_Id'].'">'.$row['RoomNo'].'</option>';
  			      }?>
			 </select>
			 	<div class="roomid"></div>
            </td>
			<td ></td>
			<td></td>
        </tr>
		<tr>
		<td align="right" class="F_val">From Date</td>
			<td align="left">
                    <input name="fromDate" id="fromDate" type="text"  class="scs-ctrl Dat rmm" />
			<div class="fromDate"></div>
			</td>
		 <td></td>
		 <td></td>
		 </tr>
		 <tr>
		<td align="right" class="F_val"> Date</td>
			<td align="left">
				<input name="toDate" id="toDate" type="text"  class="scs-ctrl Dat rmm" />
			    <div class="toDate"></div>
			</td>
		 <td></td>
		 <td></td>
		 </tr>		
        <tr>
          <td align="right" class="F_val">Block Type</td>
          <td align="left">
		   <select onchange="fetchdepdate(this.value);" id="BlockType" name="BlockType" class="scs-ctrl">
		     <option value="">---Select Type---</option>
             <option value="1">Fo-Block</option>
             <option value="2">M-Block</option>
           </select>
			<div class="BlockType"></div>
            </td>
			<td ></td>
			<td></td>
        </tr>
		<input type="hidden" id="grcid" name="grcid"/>
		<tr>
		  <td  align="right">Reason</td>
		  <td  align="Left"><input type="text" Name="reason" id="reason" class="scs-ctrl" /> <div class="reason"></div></td>
          <td align="right">&nbsp;</td>
        </tr>
		<tr>
		 <td align="right">&nbsp;</td>         
		 <td align="left"><input type="button"   class="btn btn-success btn-sm" id="EXEC" name="EXEC" value="Update"   />
		           		  </td>
		  <td></td>
		  <td></td>
		</tr>
      </table>
	</fieldset>
  </div>
  <div class="the-box D_IS" ></div>
</div>


<?php
$this->pfrm->FrmFoot();
$this->pweb->wfoot();
$this->pcss->wjs($F_Ctrl);
$this->licscript->LicenPopUp($this->Myclass);
$this->licscript->LicFooter();
?>

<script>

 
</script>

