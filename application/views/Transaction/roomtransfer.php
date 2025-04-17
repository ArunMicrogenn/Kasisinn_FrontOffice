<style>
</style>
<?php
 $date=date("Y-m-d");
 $time= date("H:i:s");
 $sql=" Select * from Mas_Room Rm
 Inner join room_status rs on Rm.Room_Id=rs.Roomid
 Inner join trans_roomcustomer_Det rd on rd.grcid=rs.grcid
 Inner join Mas_Customer cus on cus.Customer_Id=rd.Customerid
 Inner join Mas_Title mt on mt.Titleid=cus.Titelid
 where Rm.Room_Id='".$_REQUEST['Room_id']."'";
 $res=$this->db->query($sql);
 $Roomid=$_REQUEST['Room_id'];
 foreach ($res->result_array() as $row)
 {
	 $Roomno=$row['RoomNo']; $Customer_Id=$row['Customer_Id'];
	 $gname=$row['Firstname'];
	 $Title=$row['Title']; $Roomgrcid=$row['roomgrcid'];
 }
 $sql1="select rs.roomgrcid,isnull(adv.amount,0) advance,isnull(trc.billamount,0) billamount,
			isnull(trd.discamt,0) as discamt  ,rmas.roomno,ti.title + '.' +cmas.Firstname as customer,
			cin.checkindate as checkindate,cin.checkintime as checkintime,case when isnull(cp.company,'') <> '' then cp.company else cin.company end as company,tdet.depdate as depdate,
			tdet.deptime as deptime  from  (select roomgrcid from room_status where status='Y')
			as rs   left outer join  (select sum(isnull(mas.amount,0)) amount,mas.roomgrcid 
			from trans_advancereceipt_mas mas    inner join trans_receipt_mas trm on trm.receiptid=mas.receiptid 
			where mas.type='RMS' and  mas.roomgrcid in (select roomgrcid from room_status rs where status='Y') 
			group by mas.roomgrcid) as adv on rs.roomgrcid=adv.roomgrcid  
			left outer join (select sum(isnull(amount,0)) billamount,roomgrcid 
			from trans_credit_entry tc   left outer join Mas_Revenue cd on cd.Revenue_Id=tc.creditheadid 
			where creditordebit<>'D'   and roomgrcid in (select roomgrcid from room_status where status='Y') 
			group by roomgrcid) as trc on trc.roomgrcid=rs.roomgrcid   left outer join 
			(select sum(isnull(amount,0)) Discamt,roomgrcid from trans_credit_entry tc  
			left outer join Mas_Revenue cd on cd.Revenue_Id=tc.creditheadid where creditordebit = 'D'
			and RevenueHead not in ('ADVANCE')  and roomgrcid in (select roomgrcid from room_status
			where status='Y') group by roomgrcid) as trd on trd.roomgrcid=rs.roomgrcid 
			inner join trans_roomdet_Det tdet on rs.roomgrcid=tDet.roomgrcid  
			inner join Mas_Room rmas on rmas.Room_Id=tDet.roomid  
			inner join trans_roomcustomer_det cdet on cdet.grcroomdetid=tdet.grcroomdetid 
			inner join trans_checkin_mas cin on cin.grcid = tdet.grcid 
			inner join Mas_Customer cmas on cmas.Customer_Id=cdet.customerid  
			left outer join Mas_Title ti on ti.Titleid=cmas.Titelid
			left outer join Mas_Company cp on cp.Company_Id = cmas.Company_id where rs.roomgrcid='".$Roomgrcid."'  ORDER BY billamount desc";
  $res1=$this->db->query($sql1); 
  foreach ($res1->result_array() as $row1)
  {  
	 $Advanceamt=$row1['advance'];
	 $billamount=$row1['billamount'];
	 $discamt=$row1['discamt'];
	 $checkindate=$row1['checkindate'];
	 $checkintime=$row1['checkintime'];
	
  }
	$date1=date_create($checkindate);
	$date2=date_create($date);
	$diff=date_diff($date1,$date2);
	$noofdays=$diff->format("%a");
	if($noofdays ==0) //Same Day Checkin checkout Validation
	{
	  $sql2="select roomrent,Extrabed from Trans_Roomdet_det where roomgrcid='".$Roomgrcid."'";
	  $res2=$this->db->query($sql2); 
	  foreach ($res2->result_array() as $row2)
	   { $virtualroomrent=$row2['roomrent'];
		 $Extrabed=$row2['Extrabed'];  }
	  if($Extrabed==0)
	  { $guestcharges=0;} 
  	 else { 
		$sql3="SELECT Extrabedamount FROM Mas_Room rm
		Inner join Mas_Roomtype rt on rt.RoomType_Id=rm.RoomType_Id
		where rm.Room_id='".$Roomid."'";
	    $res3=$this->db->query($sql3);
	    foreach ($res3->result_array() as $row3)
	    {
	     $Extrabedamt=$row3['Extrabedamount'];
		 $guestcharges = $Extrabed * $Extrabedamt;
		}
	  }
	  $Res=$this->Myclass->Get_CGST($Roomgrcid,$guestcharges,$discamt,$date);
	  foreach($Res as $row) 
	   { 
		 $virtualcgst=$row['CGST'];
	   } 
	  $Res=$this->Myclass->Get_SGST($Roomgrcid,$guestcharges,$discamt,$date);
	  foreach($Res as $row) 
	   { 
		 $virtualsgst=$row['SGST'];
	   }
		
	   $grandtotal=($billamount+$virtualsgst+$virtualcgst+$guestcharges+$virtualroomrent)-($Advanceamt+$discamt);
	}
	else 
	{
	  if (time() >= strtotime("20:00:00")) 
		{
			$sql2="select roomrent,Extrabed from Trans_Roomdet_det where roomgrcid='".$Roomgrcid."'";
			$res2=$this->db->query($sql2); 
			foreach ($res2->result_array() as $row2)
			  { $virtualroomrent=$row2['roomrent'];
				 $Extrabed=$row2['Extrabed'];  
			  }
		    if($Extrabed==0)
			  { $guestcharges=0;} 
			else { 
		 		$sql3="SELECT Extrabedamount FROM Mas_Room rm
				Inner join Mas_Roomtype rt on rt.RoomType_Id=rm.RoomType_Id
				where rm.Room_id='".$Roomid."'";
				$res3=$this->db->query($sql3);
				foreach ($res3->result_array() as $row3)
				{
				 $Extrabedamt=$row3['Extrabedamount'];
				 $guestcharges = $Extrabed * $Extrabedamt;
				}
			     }
		    $Res=$this->Myclass->Get_CGST($Roomgrcid,$guestcharges,$discamt,$date);
			foreach($Res as $row) 
			  { $virtualcgst=$row['CGST'];  } 
			$Res=$this->Myclass->Get_SGST($Roomgrcid,$guestcharges,$discamt,$date);
			foreach($Res as $row) { $virtualsgst=$row['SGST']; }
			
		    $grandtotal=($billamount+$virtualsgst+$virtualcgst+$guestcharges+$virtualroomrent)-($Advanceamt+$discamt);
		}
	 else
		{
	  	   $sql2="select roomrent,Extrabed from Trans_Roomdet_det where roomgrcid='".$Roomgrcid."'";
		   $res2=$this->db->query($sql2); 
		   foreach ($res2->result_array() as $row2)
			  { $virtualroomrent=$row2['roomrent'];
				 $Extrabed=$row2['Extrabed'];  
			  }
		   if($Extrabed==0)
			  { $guestcharges=0;} 
		   else { 
		 		$sql3="SELECT Extrabedamount FROM Mas_Room rm
				Inner join Mas_Roomtype rt on rt.RoomType_Id=rm.RoomType_Id
				where rm.Room_id='".$Roomid."'";
				$res3=$this->db->query($sql3);
				foreach ($res3->result_array() as $row3)
				{
				 $Extrabedamt=$row3['Extrabedamount'];
				 $guestcharges = $Extrabed * $Extrabedamt;
				}
			     }
		   $grandtotal = ($billamount+$guestcharges)-($Advanceamt+$discamt);
		}
	}
   
  ?>
	
  <form id="Roomtransfer">
  <table class="FrmTable" style="width:100%">
   <tr>
	<td></td>
	<td>From Room</td>
	<td></td>
	<td>To Room</td>
  </tr>	
   <tr>
    <td>Room No:</td><td> <input type='text' class="m-ctrl" style="background-color:#FFF59B;" Readonly value="<?php echo $Roomno; ?>"></td>
    <td>Transfer To:</td>
	<td><select name="transferto" required id="transferto" class="m-ctrl"><option value="">---select---</option>
		<?php
		 $Res=$this->Myclass->Get_Vacant_Room();
		foreach($Res as $row) 
		{
		   echo '<option value="'.$row['Room_Id'].'">'.$row['RoomNo'].'</option>';
		}	
		?>
		</select></td>
   </tr>
   <tr>
    <td>Guest Name:</td><td><input type="text" class="m-ctrl" style="background-color:#FFF59B;" value="<?php echo  $Title.".".$gname; ?>" readonly ></td>
	<td>Reason:</td><td><input type="text" class="m-ctrl" required placeholder="Reason" name="reason" id="reason"></td>
   </tr>
    <td>Bill Values</td><td><input type="text" readonly value="<?php echo  $grandtotal; ?>" class="m-ctrl" style="background-color:#FFF59B;"></td>
	<td></td>
	<td><input type="submit" value="Save" ID="chkbtn" class="btn btn-warning btn-sm">
	<img id="loaderimg" src="../../assets/formloader.gif" width="20px" style="display:none;"/>
	</td>
   </tr>
  </table>
  <p id="itemwisedis"> </p>
  <input type="hidden" name="customerid" id="customerid" value="<?php echo $Customer_Id; ?>" >
 </form> 
 <script>
$("#Roomtransfer").on('submit', function (e) {
       e.preventDefault();
  document.getElementById("chkbtn").disabled=true;
        document.getElementById("loaderimg").style.display="inline";
          $.ajax({
            type: 'get',
            url: "<?php echo scs_index ?>Transaction/Roomtransfersave?Roomid=<?php echo $Roomid; ?>",
            data: $('#Roomtransfer').serialize(),
            success: function (result) {
				swal({
				icon: 'success',
				title: 'Room Transferred successfully..',
				showConfirmButton: true,      
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#d33',
				showConfirmButton: true,
				cancelButtonText: "Ok"        
				}).then( () =>{
					location.reload();	
				})

			   }			
          });
          		   
        });
 </script>