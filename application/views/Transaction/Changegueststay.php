<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Transaction','Changegueststay');
$this->pfrm->FrmHead2('Transaction / Changegueststay',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");

  $date=date("Y-m-d");
  $time= date("H:i:s");
  $previousdate=date('Y-m-d', strtotime("-1 days"));
 // $bool=true;
  $sql="select DateofAudit,* from night_audit";
  $res=$this->db->query($sql);
  foreach ($res->result_array() as $row)
	{ $auditdate=$row['DateofAudit']; }
	 $creditdate=date('Y-m-d',strtotime($auditdate.'+1 days'));
?>

<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 50%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
<div id="displaytext" class="modal">
<div class="modal-content">
    <span class="close">&times;</span>
    <p>
	<table class="table table-bordered table-hover"  >
     <thead>
      <tr>
	   <th>S.No</th>
	   <th>Guest Name</th>
	   <th>Room Number</th>  	   
	   <th>Departure </th>
	  </tr>	 
	 </thead>
	 <tbody>
	  <?php 	
		$date=date("Y-m-d");
		$time= date("H:i:s");
		$i=1;
 	    $sql1="  select * from Room_Status rs
		 Inner join trans_roomdet_det det on det.Roomid= rs.Roomid
		 Inner join Mas_Room rm on rm.Room_Id=det.Roomid
		 Inner join Trans_RoomCustomer_det rcd on det.grcid=rcd.grcid
		 Inner join Mas_Customer cus on cus.Customer_Id=rcd.Customerid
		 Inner join Mas_Title title on title.Titleid=cus.Titelid
		 Where rs.Status='Y' and det.depdate='".$auditdate."'";
		$res1=$this->db->query($sql1);
		$noofrow=$res1->num_rows();;
		foreach ($res1->result_array() as $row1)
		{
	  ?>
	  <tr>
	   <td><?php echo $i; ?></td>
	   <td><?php echo $row1['Title'].".".$row1['Firstname']; ?></td>
	   <td><?php echo $row1['RoomNo']; ?></td>
	   <td><?php echo date('d-m-Y', strtotime($row1['depdate'])) ?></td>
	  </tr>
		<?php $i++; } ?>
	<?php if($noofrow !=0)
	{ ?>
	  <tr>
	    <td></td>
		<td></td>
		<td></td>
		<td><input type="button" value="Automaticaly exted one date" onclick="extendstay()" class="btn btn-success btn-sm" /></td>
	  </tr>
	 <?php
	}
	 ?>
	 </tbody>
	</table>
    </p>
  </div>
  </div>
<div class="col-sm-12">
  <div class="the-box F_ram">
    <fieldset>
        <table class="FrmTable T-8" >
        <tr>
          <td align="right" class="F_val">Room Number</td>
          <td align="left">
		   <select onchange="fetchdepdate(this.value);" id="roomid" name="roomid" class="scs-ctrl">
		    <option value="">---Select Room---</option>
            <?php $sql="select * from Room_Status rs
					Inner Join Mas_Room rm on rm.Room_Id=rs.Roomid
					 where Status='Y' and isnull(billsettle,0)=0 order by rm.RoomNo";
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
		 <td align="right" class="F_val" >Guest Name</td>
		 <td align="left" class="F_val"><input type="Text" readonly class="scs-ctrl" id="Guestname" name="Guestname"/></td>
		 <td></td>
		 <td></td>
		 </tr>
		 <tr>
		  <td align="right" class="F_val">Number of Pax</td>
		  <td align="left" class="F_val"><input type="text" readonly class="scs-ctrl" id="pax" name="pax" /></td>
		  <td></td>
		  <td></td>
		 </tr>
		<tr>
		<td align="right" class="F_val">Departure Date & Time</td>
			<td align="left">
					<input name="curntdepdate" id="curntdepdate" readonly type="text"  class="scs-ctrl" />
			<div class="depdate"></div>
			</td>
		 <td></td>
		 <td></td>
		 </tr>
		 <tr>
		<td align="right" class="F_val">New Departure Date</td>
			<td align="left">
					<input name="depdate" id="depdate" type="datetime-local"  class="scs-ctrl " />
			<div class="depdate"></div>
			</td>
		 <td></td>
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
		           <input type="button" id="extend" value="Extend Over Stay" class="btn btn-success btn-sm" /> 
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
 function fetchdepdate(Roomid)
 {
	$.ajax({
		     url:"<?php echo scs_index ?>Transaction/getdepdate?Roomid="+Roomid,
         	 type: "POST",
			 dataType: "json",
			 success:function(response){
						
				// $('#depdate').val(result.depdate);
				 var len = response.length;
				   $('#depdate').text('');				   
					 // Read values
					 var depdate = response[0].depdate;
					 var deptime = response[0].deptime;
					 var newdepdate = response[0].newdepdate;
					 var Firstname = response[0].Firstname;
					 var Title = response[0].Title;
					 var Noofpersons = response[0].Noofpersons;
					 var grcid = response[0].grcid;						 
					
					 $('#curntdepdate').val(depdate+"  "+deptime);
					 $('#Guestname').val(Title+"."+Firstname);
					 $('#pax').val(Noofpersons);
					 $('#grcid').val(grcid);					
			 }
			});
 }
 
 function extendstay()
 {
	$.ajax({
		     url:"<?php echo scs_index ?>Transaction/extendoverstay",
         	 type: "POST",
			 dataType: "html",
	success:function(response){
	 swal("Success...!", "Guestamendment Save Successfully...!", "success");
				window.location.href ="<?php echo scs_index ?>Transaction/Changegueststay";
	}});
 }
 
var modal = document.getElementById("displaytext");
var btn = document.getElementById("extend");
var span = document.getElementsByClassName("close")[0];
 
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

