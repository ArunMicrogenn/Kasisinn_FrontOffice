

    <form method="POST" action="ResCheckinsave" id="resCheckinForm">
		<table id="mytable" width="100%" class="mytable" style="margin-top:20px">
			<thead>
			<tr>
			<th>S.No</th>
			<th>Room Type</th>
			<th>Arrival Date</th>
			<th colspan="2" style="width: 150px;">Arrival Time</th>
			<th>Departure Date</th>
			<th colspan="2" style="width: 150px;">Departure Time</th>
			<th>Room No</th>
			<th>Adult</th>
			<th>Child</th>
			<th>Rate Type</th>		
			<th>Tariff</th>
			<th>Plan</th>
			<th>Action</th>
			</tr>
			</thead>
			<tbody  class="input_fields_wrap">
			<?php
			 $sql="select remas.totamt,mr.RoomType, * from Trans_Reserve_Mas rm 
			inner join Trans_Reserve_Det rd on rm.Resid=rd.resid
			inner join Mas_Customer mc on mc.Customer_Id= rm.cusid
			inner join Mas_RoomType mr on mr.RoomType_Id=rd.typeid
			inner join Mas_PlanType mp on mp.PlanType_Id=rd.ratetypeid
			inner join Mas_FoodPlan mf on mf.FoodPlan_Id=rd.planid
			inner join mas_city mci on mci.Cityid = mc.Cityid
			left join trans_reserveadd_mas remas on remas.resno=rm.ResNo
			where rm.ResNo='".$_REQUEST['resno']."' and rd.fromdate='".date('Y-m-d')."' 
			and isnull(rd.stat, '')<>'Y'";
            $count = 1;
			$exe = $this->db->query($sql);
			foreach($exe->result_array() as $row){
				$fromdate = $row['fromdate'];
				$todate = $row['todate'];
				$mobile= $row['Mobile'];
				$firstname = $row['Firstname'];
				$email= $row['Email_ID'];
				$roomid= $row['RoomType_Id'];
				$fromtime= $row['fromtime'];
				$totime= $row['totime'];
				$foodplanid = $row['FoodPlan_Id'];
				// $roomno = $row['Room_Id'];
				$PlanType_Id= $row['ratetypeid'];
				$pax = $row['noofpax'];
				$city = $row['City'];
				$cityid = $row['Cityid'];
				$travelagentid = $row['travelagentid'];
				$plandisc = $row['plandisc'];
				$plancharges = $row['plancharges'];
				$discper = $row['discper'];
				$discount = $row['discount'];
				$waitlist= $row['waitlist'];
				$company = $row['company'];
				$bookingid = $row['onlinebookingno'];
				//  $Roomid=$row['Room_Id'];
				$ResNo = $row['ResNo'];
				$advanceamt = $row['totamt'];
				$totalrent = $row['roomrent'];
				$yearprefix =$row['yearprefix'];
				$noofrooms = $row['noofrooms'];
			
				
				
            for($j=1; $j<=$noofrooms; $j++){
				
				// echo  $count ;
				
			?>
			<tr class="tb" id="tb<?php echo $count?>">
			
			
			<input type="hidden"  num=1 name="bookingid[]" id="bookingid<?php echo $count?>"  value="<?php echo @$bookingid;?>" class="f-ctrl rmm" >
			<input type="hidden"  num=1 name="Roomid[]" id="Roomid<?php echo $count?>"  value="<?php echo @$Roomid;?>" class="f-ctrl rmm" >
			<input type="hidden"  num=1 name="ResNo" id="ResNo"  value="<?php echo @$ResNo;?>" class="f-ctrl rmm" >
			<input type="hidden"  num=1 name="roomtype[]" id="roomtypee<?php echo $count?>"  value="<?php echo @$roomid;?>" class="f-ctrl rmm" >
			
			<td style="text-align:center"><input style="text-align: center;" class="scs-ctrl" type="text" name="ID[]" id="ID1" value='<?php echo $count;?>'></td>                                      
			<td> 
				<select  disabled onchange="Roomvalidate(this.value, '<?php echo $count; ?>')" name="Roomtype[]" id="Roomtype<?php echo $count?>" class="f-ctrl rmm">
				<option value="">Select Room type</option>
				<?php 
				$Res=$this->Myclass->RoomType(0);
				foreach($Res as $row)
				{
				?>
				<option <?php if($roomid==$row['RoomType_Id']){echo "selected";}?> value="<?php echo $row['RoomType_Id']; ?>"><?php echo $row['RoomType'] ?></option>
				<?php }	?>
				</select></td> 
				
			<td><input 
				id="Arrivaldate<?php echo $count?>" readonly name = "Indate[]" onchange="validatefromtime(this.value)" value="<?php echo date('Y-m-d', strtotime(substr($fromdate,0,10)));?>" type="date"  class="scs-ctrl  rmm" /></td>
			<td><select name="FHr[]" id="FHr<?php echo $count?>" class="f-ctrl rmm">
				<?php
				for($i=0;$i<24;$i++)
				{
				echo '<option value="'.$i.'" >'.$i.'</option>';
				}
				?>
				</select>
			</td>	
			<td> <select name="FMi[]" id="FMi<?php echo $count?>" class="f-ctrl rmm">
				<?php   for($i=0;$i<60;$i++)
				{
				echo '<option value="'.$i.'" >'.$i.'</option>';
				}
				?></select>
			</td>
			<td><input name="todate[]" id="Departuredate<?php echo $count?>" readonly value="<?php echo date('d-m-Y', strtotime(substr($todate,0,10)));?>" type="text"  class="scs-ctrl Dat rmm" /></td>
			<td><select name="THr[]" id="THr<?php echo $count?>" class="f-ctrl rmm">
				<?php
				for($i=0;$i<24;$i++)
				{
				echo '<option value="'.$i.'" >'.$i.'</option>';
				}  ?>
				</select>	
			</td>
			<td><select name="TMi[]" id="TMi<?php echo $count?>" class="f-ctrl rmm">
				<?php
				for($i=0;$i<60;$i++)
				{
				echo '<option value="'.$i.'" >'.$i.'</option>';
				}?>
				</select>
			</td>	
			<td> <select name="RoomNo[]" onchange="RoomBtn('<?php echo $count;?>');" id="RoomNo<?php echo $count?>"  class="f-ctrl rmm">
			<?php 
				$sql = "select * from mas_room";
				$ex= $this->db->query($sql);
				foreach($ex->result_array() as $row){
			?>
				<option <?php if(@$roomno==$row['Room_Id']){echo "selected";}?> value='<?php echo $row['Room_Id']?>'><?php echo $row['RoomNo']?></option>
				<?php } ?>
				</select>
			</td>
			<td><select onchange="gettarriff(this.value), '<?php echo $count?>'" name="Adults[]" id="Adult<?php echo $count?>" class="f-ctrl rmm">
			<option value='<?php echo $pax;?>'><?php echo $pax;?></option>
			</select></td>
			<td><input name="Child[]" id="Child<?php echo $count?>" value="0" readonly  num=1 class="f-ctrl rmm"  /></td>				
			<td> <select name="RateCode[]" id="Ratetype<?php echo $count?>" class="f-ctrl rmm">
			<?php 
				$sql = "select * from mas_plantype";
				$ex= $this->db->query($sql);
				foreach($ex->result_array() as $row){
			?>
				<option <?php if($PlanType_Id==$row['PlanType_Id']){echo "selected";}?> value='<?php echo $row['PlanType_Id']?>'><?php echo $row['RateCode']?></option>
				<?php } ?>
			</select>
			</td>      
			<td><input name="Tariff[]" id="Tariff<?php echo $count?>" value="<?php echo $totalrent; ?>"  readonly num=1 class="f-ctrl rmm"  /></td>
			<td><select name="foodplan[]" id="foodplan<?php echo $count?>" class="f-ctrl rmm"><option value="0">Select Plan</option>
			<?php
			$qry="select * from Mas_FoodPlan";
			$res=$this->db->query($qry);
			foreach ($res->result_array() as $row)
			{ ?>
			<option 
			<?php if( $foodplanid ==$row['FoodPlan_Id']){echo "selected";} ?> value="<?php echo $row['FoodPlan_Id']; ?>" ><?php echo  $row['FoodPlan'] ;?></option>			   
			<?php }?>
			<select></td>	                                     
			<td>
			<?php if($count != 1) {?>
			
			<div style="width:50%; float: left" id='<?php echo $count ?>' class="remove_field"><i class="fa fa-2x fa-minus-square"></i></td>
			<?php } ?>
			</tr>
				<?php 
		      $count = $count+1;
			}
			}
            
			?>
			<input type="hidden" value="<?php echo $count-1?>" id="count" name="rowcount">
			</tbody>
			</table>  

			<br>
			<table class="FrmTable T-10" >
			<tr>
			<td style="text-align: right;">Mobile</td>
			<td><input type="text" readonly   num=1 Placeholder="+91-19865999" name="Mobile" id="mobile"  value="<?php echo $mobile;?>" class="f-ctrl rmm">
			<div class="mobile" ></div></td>
			<td style="text-align: right;">Name<td>
			<td><input type="text" id="Name" readonly   name="Firstname" value="<?php echo $firstname;?>" class="f-ctrl rmm"><div class="Name"></div> <td>
			<td style="text-align: right;">Email<td>
			<td><input type="text" id="Email" name="Email" readonly   value="<?php echo $email;?>" class="f-ctrl rmm">  <td>
			<td style="text-align: right;">City<td>
			<td><input type="hidden" id="City_id" name="City_id" value=" <?php echo $cityid;?>"class="f-ctrl rmm"><input type="text" id="City" name="City" readonly   value=" <?php echo $city;?>"class="f-ctrl rmm"> <div class="City"></div><td>
			</tr>
			</table>
			<br>
			<table class="FrmTable T-10" >
			<tr>
	
			<td style="text-align: right;">Reservation Mode</td>
			<td style="text-align: left;">
				<select id="ReservationMode" name="ReservationMode" class="f-ctrl rmm"><option>Select Ststus</option>
				<?php 
						$Res=$this->Myclass->ReservationMode(0);
						foreach($Res as $row)
						{
						?>
						<option <?php if($waitlist == $row['ReservationMode_Id']){echo "selected";} ?> value="<?php echo $row['ReservationMode_Id'] ?>"><?php echo $row['ReservationMode'] ?></option>
				<?php }	?>
				</select></td>

				<td style="text-align: right;">Travel Agent</td>
				<td style="text-align: left;">
				<select name="travelagent_Id" id="TravelAgent" class="f-ctrl rmm"><option value="">Select Travel Agent</option>
				<?php 
						$qry="select * from Mas_Company cm
						inner join Mas_CompanyType ct on ct.CompanyType_Id=cm.CompanyType_Id where CompanyType ='Travel Agent'";
						$Res=$this->db->query($qry);
						foreach ($Res->result_array() as $row)
						{ 
						?>
						<option <?php if($travelagentid==$row['Company_Id']){echo "selected"; }?> value="<?php echo $row['Company_Id'] ?>"><?php echo $row['Company'] ?></option>
						<?php
				}	?>
				</select> </td>

			</tr>
			<tr>	
			</tr>
			<tr>
			<td style="text-align: right;">Company Name</td>
				<td style="text-align: left;">
				
				<select name="Company_Id" id="Company" class="f-ctrl rmm"><option value="">Select Company</option>
				<?php 
						$qry="select * from Mas_Company cm
						inner join Mas_CompanyType ct on ct.CompanyType_Id=cm.CompanyType_Id where CompanyType !='Travel Agent'";
						$Res=$this->db->query($qry);
						foreach ($Res->result_array() as $row)
						{ 
						?>
						<option <?php if(@$company ==$row['Company_Id'] ){echo "selected" ;} ?> value="<?php echo $row['Company_Id'] ?>"><?php echo $row['Company'] ?></option>
			<?php 	}	?>
				</select> </td>
				<td style="text-align: right;">Tariff Discount %</td>
				<td style="text-align: left;">
				
				<input type="text"  num=1 name="discper" id="TariffDiscountper" value="<?php echo $discper;?>"  class="f-ctrl rmm" >
				</td>
			
			
			</tr>
			<tr>
			
			    <td style="text-align: right;">Advance Amount</td>
				<td style="text-align: left;">

				<input type="text" readonly value="<?php echo number_format(@$advanceamt,2);?>" class="f-ctrl rmm" >

				</td>
                

				<td style="text-align: right;">Tariff Discount Amount</td>
				<td style="text-align: left;">
				<input type="text"  num=1 name="discamt" id="TariffDiscountamt"  value="<?php echo $discount;?>" class="f-ctrl rmm" >
				</td>
				<td style="text-align: right;"></td>
				<td style="text-align: left;">
				<input type="button"   class="btn btn-success btn-sm" id="EXEC" name="EXEC" value="save"  />
				</td>
				<!-- <td style="text-align: right;">Plan Discount Amont</td>
				<td style="text-align: left;">
				<input type="text"  num=1 name="plancharges" id="PlanDiscountamt" value="<?php echo $plancharges;?>" class="f-ctrl rmm" >
				</td> -->
			</tr>
			<tr>
			<!-- <td style="text-align: right;">Plan Discount %</td>
				<td style="text-align: left;">
				<input type="text"  num=1 name="plandisc" id="PlanDiscountper" value="<?php echo $plandisc;?>" class="f-ctrl rmm" >
				</td> -->
				
			</div>
			</tr>
		</table>
    </form>
  

<SCRIPT language="javascript">

var d = new Date(); // for now
var h =d.getHours(); // => 9
var s =d.getMinutes(); // =>  30
const RowCount= $('#mytable .tb').length
for(let i=1; i<=RowCount; i++){
	$('#FHr'+i).val(h);
	$('#FMi'+i).val(s);
	$('#THr'+i).val(h);
	$('#TMi'+i).val(s);
}
// document.getElementById("FHr1").disabled = true;
// document.getElementById("FMi1").disabled = true;
$('#FHr1').val(h);
$('#FMi1').val(s);
$('#THr1').val(h);
$('#TMi1').val(s);
	 var x = 1; 
function validatefromtime(a)
 {  
	var Indate =a;
    var date = Indate.substring(0, 2);
    var month = Indate.substring(3, 5);
    var year = Indate.substring(6, 10); 
    var InDate = new Date(year, month - 1, date);
	var currentdate = new Date();
	if(currentdate <= InDate)
    {
	    //  document.getElementById("FHr1").disabled = false;
		//  document.getElementById("FMi1").disabled = false;	
	}
	else
	{
	    //  document.getElementById("FHr1").disabled = true;
		//  document.getElementById("FMi1").disabled = true;	
	}
 }
 function Roomvalidate(a,b)
 {
     
	
	let rcount = $('#mytable .tb').length
	// alert(rcount)
	 for(let j = 1; j<=rcount; j++){
		let changing = document.getElementById("Roomtype"+j).value;
		let  cur = document.getElementById("Roomtype"+b).value
		if(j == rcount){
			continue
		}
		if(changing == cur){
			// alert("same")
			document.getElementById("Roomtype"+b).value = ''
		}
		
	 }

	    $.ajax({
            url: "<?php echo scs_index ?>Transaction/roomtypegetroomnumber?type="+a,
            type: 'POST',
            success: function (data) {
                $('#RoomNo'+b).empty();
                $('#RoomNo'+b).append(data);
		    }
			
        });   
		$.ajax({
            url: "<?php echo scs_index ?>Transaction/roomtypegetPlanid?type="+a,
            type: 'POST',
            success: function (data) {
                $('#Ratetype'+b).empty();
                $('#Ratetype'+b).append(data);
				// console.log('#Ratetype'+b)
		    }
			
        }); 
		$.ajax({
            url: "<?php echo scs_index ?>Transaction/roomtypegetadults?type="+a,
            type: 'POST',
            success: function (data) {
                $('#Adult'+b).empty();
                $('#Adult'+b).append(data);
		    }
			
        });    
 }
 function gettarriff(a,b)
 {
	var Roomtype =document.getElementById("Roomtype"+b).value;
	var Plantype =document.getElementById("Ratetype"+b).value;
    // alert()
	$.ajax({
            url: "<?php echo scs_index ?>Transaction/roomtypegettariff?type="+Roomtype+"&pax="+a+"&plantype="+Plantype,
            type: 'POST',
            success: function (data) {
               	 $('#Tariff'+b).val(data);	
		    }
			
        });   
 }

		
    $(document).ready(function() {

		let rocount = $('#mytable .tb').length
	   for(let k = 1; k<=rocount; k++){
		
		if(document.getElementById("Roomtype"+k)){
			var roomtype=document.getElementById("Roomtype"+k).value;
			$.ajax({
            url: "<?php echo scs_index ?>Transaction/roomtypegetroomnumber?type="+roomtype,
            type: 'POST',
            success: function (data) {
                $('#RoomNo'+k).empty();
                $('#RoomNo'+k).append(data);
		    }
			
        });
		}
	   }
	

    var max_fields      = 60000; //maximum input boxes allowed
    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    var add_button      = $(".add_field_button"); //Add button ID
  
    
    $(wrapper).on("click",".add_field_button", function(e)
    { //on add input button click
        e.preventDefault();
		const counts = $('#mytable .tb').length
		
	     for(let i = 1; i<=counts; i++){
			if(document.getElementById("Roomtype"+i)){
			var roomtype=document.getElementById("Roomtype"+i).value;
			var foodplan=document.getElementById("foodplan"+i).value;
	        var Tariff=document.getElementById("Tariff"+i).value;
			var Adults=document.getElementById("Adult"+i).value;
			if(roomtype == 0){
				alert("select roomtype")
				return
			}
			if(foodplan == 0){
				alert("select Foodplan")
				return
				
			}
			if(Tariff == 0){
				alert("Empty Tariff")
				return
			}
			if(Adults == 0){
				alert("select pax")
				return
			}
		}
		 }
		let x = $('#mytable .tb').length
        if(x < max_fields){ //max input box allowed
            x++; //text box increment
			// alert(x)
            
			var b_id = $('#mytable .tb').length   
			$('#tb'+b_id+'').after('<tr class="tb" id="tb'+x+'"><td style="text-align:center"><input style="text-align: center;" type="text" class="scs-ctrl" name="ID[]" id="ID'+x+'" value="'+x+'"></td><td><select onchange="Roomvalidate(this.value, '+x+')" name="Roomtype_id[]" id="Roomtype'+x+'" class="f-ctrl rmm"> <option value="">Select Room type</option><?php  $Res=$this->Myclass->RoomType(0); foreach($Res as $row){ echo "<option value=".$row['RoomType_Id'].">".$row['RoomType']."</option>";	}?> </select> </td><td><input name="Indate[]" id="Arrivaldate'+x+'" onchange="validatefromtime(this.value, '+x+')" value="<?php echo date('Y-m-d') ?>" type="date"  class="scs-ctrl  rmm" /></td> <td><select name="FHr[]" id="FHr'+x+'" class="f-ctrl rmm"><?php for($i=0;$i<24;$i++) { echo "<option value=".$i." >$i</option>"; } ?> </select> </td><td> <select name="FMi[]" id="FMi'+x+'" class="f-ctrl rmm"> <?php   for($i=0;$i<60;$i++){    echo "<option value=".$i." >$i</option>"; } ?></select></td> <td><input name="todate[]" id="Departuredate'+x+'" value="<?php echo date('Y-m-d');?>" type="date"  class="scs-ctrl  rmm" /></td><td><select name="THr[]" id="THr'+x+'" class="f-ctrl rmm">  <?php  for($i=0;$i<24;$i++) {  echo "<option value=".$i." >$i</option>"; }  ?> </select></td> <td><select name="TMi[]" id="TMi'+x+'" class="f-ctrl rmm"><?php for($i=0;$i<60;$i++){  echo "<option value=".$i." >$i</option>";  }?> </select></td> <td> <select name="RoomNo[]" onchange="RoomBtn('+x+')"  id="RoomNo'+x+'" class="f-ctrl rmm">  <option value="">Select Room Number</option> <?php $Res=$this->Myclass->Room(0);  foreach($Res as $row) { echo "<option value=".$row['Room_Id'].">".$row['RoomNo']."</option>";  }?>  </select></td><td><select onchange="gettarriff(this.value, '+x+')" name="Adults[]" id="Adult'+x+'" value=""  class="f-ctrl rmm" ><option values="0">0</option</select></td>  <td><input name="Child[]" id="Child'+x+'" value=""  num=1 class="f-ctrl rmm"  /></td><td> <select name="RateCode[]" id="Ratetype'+x+'" class="f-ctrl rmm"> <option value="">Select Rate type</option>  <?php $Res=$this->Myclass->RatePlan(0); foreach($Res as $row) { echo "<option value=".$row['RatePlan_Id'].">".$row['RC']."</option>";   }	?> </select> </td> <td><input name="Tariff[]" id="Tariff'+x+'" value=""  num=1 class="f-ctrl rmm"  /></td>  <td><select name="foodplan[]" id="foodplan'+x+'" class="f-ctrl rmm"><option value="0">Select Plan</option> <?php $qry="select * from Mas_FoodPlan"; $res=$this->db->query($qry); foreach ($res->result_array() as $row){ echo "<option value=".$row['FoodPlan_Id'].">".$row['FoodPlan']."</option>";	} ?><select></td><td><div style="width:50%; float: left" id='+x+' class="remove_field"><i class="fa fa-2x fa-minus-square"></i></div><div style="width:50%; padding-left:5px; float: right"  id='+x+' class="add_field_button"><i class="fa fa-2x fa-check-square"></i></div></td></tr>');
            document.getElementById("count").value = $('#mytable .tb').length                                          
                      
           }
		    var d = new Date(); // for now
			var h =d.getHours(); // => 9
			var s =d.getMinutes(); // =>  30
			document.getElementById("FHr1").disabled = true;
			document.getElementById("FMi1").disabled = true;
			$('#FHr'+x).val(h);
			$('#FMi'+x).val(s);
			$('#THr'+x).val(h);
			$('#TMi'+x).val(s);
    });
      
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        var b_id=$(this).attr("id");                                          
        $('#tb'+b_id+'').remove();  
		document.getElementById("count").value = $('#mytable .tb').length           

    })
});


var btn = document.getElementById("EXEC");
btn.addEventListener('click', () => {
	const counts = $('#mytable .tb').length;

	for(let i = 1; i<=counts; i++){
		if(document.getElementById("RoomNo"+i)){
	var Mobile=document.getElementById("mobile").value;
	var roomtype=document.getElementById("Roomtype"+i).value;
    var Indate=document.getElementById("Arrivaldate"+i).value;
	var Firstname=document.getElementById("Name").value; 
	var Email_ID=document.getElementById("Email").value;
	var Adults=document.getElementById("Adult"+i).value;
	var Child=document.getElementById("Child"+i).value;
	var City=document.getElementById("City").value;
	var RateCode=document.getElementById("Ratetype"+i).value;
	var discper=document.getElementById("TariffDiscountper").value;
	var discamt=document.getElementById("TariffDiscountamt").value;
	var foodplan=document.getElementById("foodplan"+i).value;
	var Tariff=document.getElementById("Tariff"+i).value;
	var RoomNo=document.getElementById("RoomNo"+i).value;
	let  cur = document.getElementById("RoomNo"+i).value
		}
	for(let j = 2; j<=counts; j++){
		if(document.getElementById("RoomNo"+j)){
		
		let changing = document.getElementById("RoomNo"+j).value;
		if(j == i){
			continue
		}
		if(Number(changing) == Number(cur)){
			alert("Room Number Must be different")
			document.getElementById("RoomNo"+i).value = ''
			return
		}
	}
	}
    
	if(Mobile=='')
	{ alert('Mobile Number Empty'); 
		return; }

	if(Firstname =='')
	{ alert('Guest Name Empty'); 
		return; }
	if(City =='')
	{ alert('Please Select the City'); 
		return; }
	if(Indate == ''){
		alert('Please Select Arrival Date'); 
		return;
	}
	if(roomtype==0){
		alert('Please Select the Roomtype'); 
		return;
	}
	if(Adults==0){
		alert('Please Select the  no of Adults'); 
		return;
	}
	if(foodplan==0){
		alert('Please Select the plan'); 
		return;
	}
	if(Tariff ==0){
		alert('Tariff is empty'); 
		return;
	}
	if(RoomNo == ''){
		alert('Select Room No');
		return
	}
	
    }
	document.getElementById("resCheckinForm").submit()
})

const RoomBtn = (b) =>{
	const roombtncount  = $('#mytable .tb').length;
	// alert(roombtncount)
	let  cur = document.getElementById("RoomNo"+b).value
	for(let j = 1; j<=roombtncount; j++){
		let changing = document.getElementById("RoomNo"+j).value;
		if(j== b){
			continue
		}
		if(Number(changing) == Number(cur)){
			// alert("same")
			document.getElementById("RoomNo"+b).value = ''
		}
	 }
	}
	</SCRIPT>
	
	