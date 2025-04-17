<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Transaction','Reservation');
$this->pfrm->FrmHead2('Transaction/ Reservation',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");

 
?>


    
<div class="col-sm-12">
  <div class="the-box F_ram">
	<form id="resform" method="POST">
    <fieldset>
        <table class="FrmTable T-3" >
			<tr>
			<td style="text-align: right;" class="F_val">Reservation No</td>
			<td align="left">
			<select  name="resno" id="resno" class="f-ctrl rmm" required>
				<option value="0">Select ResNo</option>
				<?php  
				 $Res="select ResNo from Trans_Reserve_Mas mas 
				inner join Trans_Reserve_det det on mas.Resid=det.resid
				 where isnull(det.stat,'')='' and isnull(det.checkinrooms,'')=''
				 and det.fromdate='".date('Y-m-d')."'
				 group by ResNo";
				$xe = $this->db->query($Res);
				foreach($xe-> result_array() as $row)
				{
				echo "<option value=".$row['ResNo'].">".$row['ResNo']."</option>";
				}	?>
			</slect>   
			<td align="right"><input type="button" name="submit" id="btn" value="Submit" class="btn btn-success btn-sm"    /></td>
			<div class="ResNo" ></div></td>
			</tr>
	    </table>
		<div id="edit"></div>
    </fieldset>
	</form>
  </div>
  <div class="the-box D_ISS" ></div>
</div>
<?php
$this->pfrm->FrmFoot();
$this->pweb->wfoot();
$this->pcss->wjs($F_Ctrl);
$this->licscript->LicenPopUp($this->Myclass);
$this->licscript->LicFooter();
?>
<script>
	var btn = document.getElementById("btn")
	btn.addEventListener("click", () => {
		var resno = document.getElementById("resno").value
		if(resno !='0'){
		$.ajax({
			type:"POST",
			url:"<?php echo scs_index ?>Transaction/ReserveCheckin",
			data:"resno="+resno,
			success:function(html){
				$("#edit").html(html)
			}
		})
		}
	});
</script>
<SCRIPT language="javascript">

 function Roomvalidate(a)
 {
	    $.ajax({
            url: "<?php echo scs_index ?>Transaction/roomtypegetroomnumber?type="+a,
            type: 'POST',
            success: function (data) {
                $('#RoomNo'+x).empty();
                $('#RoomNo'+x).append(data);
		    }
			
        });   
 }
	</SCRIPT>
	
	