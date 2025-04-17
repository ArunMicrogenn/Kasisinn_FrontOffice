<?Php  
  $date=date("Y-m-d");
  $time= date("H:i:s");
  $Roomid=$_REQUEST['Room_id'];
  $Res=$this->Myclass->Get_Checkoutno();
  foreach($Res as $row)
  { $Checkoutno=$row['number'];
  } 
  $Res=$this->Myclass->Get_NightAuditdate();
  foreach($Res as $row)
  { $DateofAudit=$row['DateofAudit'];
  }
 $sq10="select EnableSplitBill,* from ExtraOption ";
 $res10=$this->db->query($sq10);
 foreach ($res10->result_array() as $row10)
 {  $EnableSplitBill=$row10['EnableSplitBill']; }
  $sql=" Select * from Mas_Room Rm
 Inner join room_status rs on Rm.Room_Id=rs.Roomid
 Inner join trans_roomcustomer_Det rd on rd.grcid=rs.grcid
 Inner join Mas_Customer cus on cus.Customer_Id=rd.Customerid
 Inner join Mas_Title mt on mt.Titleid=cus.Titelid
 Inner join Mas_City ct on ct.Cityid=cus.Cityid
 where Rm.Room_Id='".$Roomid."'";
 $res=$this->db->query($sql);
 foreach ($res->result_array() as $row)
 {   $cusid=$row['Customerid'];	 
	 $Roomno=$row['RoomNo']; $city=$row['City'];
	 $gname=$row['Firstname']; $Address1=$row['HomeAddress1']; $Address2=$row['HomeAddress2'];
	 $Title=$row['Title'];
	 $grcid=$row['grcid']; $Roomgrcid=$row['roomgrcid'];
	 $Mobile=$row['Mobile'];
	 $Company_id=$row['Company_id'];
  }
  $sql1="select rs.roomgrcid,isnull(adv.amount,0) advance,isnull(trc.billamount,0) billamount,rt.RoomType,
			isnull(trd.discamt,0) as discamt ,isnull(trad.Allowance,0) as Allowance,rmas.roomno,ti.title + '.' +cmas.Firstname as customer,tdet.Noofpersons,tdet.planid,tdet.Actrackrate,
			cin.checkindate as checkindate,cin.checkintime as checkintime,case when isnull(cp.company,'') <> '' then cp.company else cin.company end as company,tdet.depdate as depdate,
			tdet.deptime as deptime  from  (select roomgrcid from room_status where status='Y')
			as rs   left outer join  (select sum(isnull(mas.amount,0)) amount,mas.roomgrcid 
			from trans_advancereceipt_mas mas    inner join trans_receipt_mas trm on trm.receiptid=mas.receiptid 
			where mas.type='RMS'  and isnull(trm.cancel,0)=0  and  mas.roomgrcid in (select roomgrcid from room_status rs where status='Y') 
			group by mas.roomgrcid) as adv on rs.roomgrcid=adv.roomgrcid  
			left outer join (select sum(isnull(amount,0)) billamount,roomgrcid 
			from trans_credit_entry tc   left outer join Mas_Revenue cd on cd.Revenue_Id=tc.creditheadid 
			where creditordebit<>'D'   and roomgrcid in (select roomgrcid from room_status where status='Y') 
			group by roomgrcid) as trc on trc.roomgrcid=rs.roomgrcid   left outer join 
			(select sum(isnull(amount,0)) Discamt,roomgrcid from trans_credit_entry tc  
			left outer join Mas_Revenue cd on cd.Revenue_Id=tc.creditheadid where creditordebit = 'D' and isnull(IsAllowance,0)=0
			and RevenueHead not in ('ADVANCE')  and roomgrcid in (select roomgrcid from room_status
			where status='Y') group by roomgrcid) as trd on trd.roomgrcid=rs.roomgrcid 
			left outer join (select sum(isnull(amount,0)) Allowance,roomgrcid from trans_credit_entry tc   left outer join Mas_Revenue cd on cd.Revenue_Id=tc.creditheadid where creditordebit = 'D' and isnull(IsAllowance,0)=1 and RevenueHead not in ('ADVANCE') and roomgrcid in (select roomgrcid from room_status where status='Y') group by roomgrcid) as trad on trad.roomgrcid=rs.roomgrcid 
			inner join trans_roomdet_Det tdet on rs.roomgrcid=tDet.roomgrcid  
			inner join Mas_Room rmas on rmas.Room_Id=tDet.roomid  
			inner join Mas_RoomType rt on rt.RoomType_Id=rmas.RoomType_Id
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
	 $roomno=$row1['roomno'];
	 $RoomType=$row1['RoomType'];
	 $Noofpersons=$row1['Noofpersons'];
	 $depdate=$row1['depdate'];
	 $deptime=$row1['deptime'];
	 $planid=$row1['planid'];
	 $Actrackrate=$row1['Actrackrate'];
	 $Allowance=$row1['Allowance'];
  } 
     if($planid !=0)
	 { 
      $sql5="select * from Mas_FoodPlan where FoodPlan_Id='".$planid."'";
	  $res5=$this->db->query($sql5); 
	  foreach ($res5->result_array() as $row5)
	  { $FoodPlan=$row5['FoodPlan'];  }
	 }
	 else
	 {  $FoodPlan='';	 }
	$date3=date_create($checkindate);
	$date4=date_create($date);
	$diff1=date_diff($date3,$date4);
	$noofdays1=$diff1->format("%a");
	
	$date1=date_create($checkindate);
	$date2=date_create($DateofAudit);
	$diff=date_diff($date1,$date2);
	$noofdays=$diff->format("%a");
	if($noofdays ==0) //Same Day Checkin checkout Validation
	{
	  $sql2="select roomrent,Extrabed,discamount,discper from Trans_Roomdet_det where roomgrcid='".$Roomgrcid."'";
	  $res2=$this->db->query($sql2); 
	  foreach ($res2->result_array() as $row2)
	   { $virtualroomrent=$row2['roomrent'];
		 $Extrabed=$row2['Extrabed'];  }
		if($Extrabed==0)
		{ $guestcharges=0;} 
		else
		{ 
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
	  $discamt=$row2['discamount'];
	  if($row2['discper'] !=0)
	  {
		 $discamt = $virtualroomrent * $row2['discper'] / 100;
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
		
	   $grandtotal=($billamount+$virtualsgst+$virtualcgst+$guestcharges+$virtualroomrent)-($Advanceamt+$discamt+$Allowance);
	}
	else 
	{
		$checkintime1=substr($checkintime, 11);
		$checkintime1= date("H:i:s", strtotime($checkintime1));		
	  if (time() > strtotime($checkintime1)) 
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
				where rm.Room_Id='".$_REQUEST['Room_id']."'";
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
		 /// Veritual Rent will post on this --31-01-2023
		
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
				where rm.Room_id='".$_REQUEST['Room_id']."'";
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
<legend style="font-size:13px" ><strong></strong></legend>	
  <!-- The Modal -->
  <div id="splitbillopen" class="modal">
	<!-- Modal content -->
	<div class="modal-content" style="width:70%;">
		<span class="close">&times;</span>
		<body>
		 <form id="BillSplitForm">
			<input type="hidden" name="Roomgrcid" id="Roomgrcid" Value="<?php echo $Roomgrcid; ?>" />
			<input type="hidden" name="grcid" id="grcid" Value="<?php echo $grcid; ?>" />
			<table style="border-left:1px solid #000;border-right:1px solid #000;border-bottom:1px solid #000;border-top:1px solid #000;width:100%">								
    			<tbody>
					<tr>
    					<td style="padding-right:5px;padding-left:5px;background:#aad0ff;text-align:center;border-bottom:1px solid #000;border-right:1px solid #000;width:10%">Date</td>
    					<td style="padding-right:5px;padding-left:5px;background:#aad0ff;text-align:center;border-bottom:1px solid #000;border-right:1px solid #000;width:10%">Ref.No</td>
						<td style="padding-right:5px;padding-left:5px;background:#aad0ff;border-bottom:1px solid #000;border-right:1px solid #000;width:30%">Particulars</td>
						<td style="padding-right:5px;padding-left:5px;background:#aad0ff;text-align:right;border-bottom:1px solid #000;border-right:1px solid #000;width:13%">Charges</td>
						<td style="padding-right:5px;padding-left:5px;background:#aad0ff;text-align:right;border-bottom:1px solid #000;border-right:1px solid #000;width:13%">Credit</td>
						<td style="padding-right:5px;padding-left:5px;background:#aad0ff;text-align:right;border-bottom:1px solid #000;border-right:1px solid #000;width:14%">Total</td>
						<td style="padding-right:5px;padding-left:5px;background:#aad0ff;text-align:right;border-bottom:1px solid #000;width:10%">Group</td>
    				</tr> 
					<?php 
					if($noofdays ==0) //Same Day Checkin checkout Validation
					    { 
							$begin = new DateTime($checkindate);
							$dates = $begin->format("Y-m-d");
							$Daytotal="0.00";
						$sql="select * from Trans_roomdet_det where grcid='".$grcid."'";
						$res=$this->db->query($sql);
						foreach ($res->result_array() as $row)
						{ $roonrent= $row['roomrent'];
							$discamt=$row2['discamount'];
							if($row2['discper'] !=0)
							 {
							  $discamt = $virtualroomrent * $row2['discper'] / 100;
							 }
						}
						
						  $Res=$this->Myclass->Get_CGST($Roomgrcid,$guestcharges,$discamt,$date);
						  foreach($Res as $row) 
						  { $virtualcgst=$row['CGST'];  } 
						  
					?>
                        <tr>
    					<td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    					<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
						<td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:30%"><?php echo "ROOM RENT"; ?></td>
						<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo number_format ($roonrent,2); $Daytotal=$Daytotal+$roonrent; ?></td>
						<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
						<td style="padding-right:5px;padding-left:5px;text-align:center;width:14%"><?php echo ""; ?></td>
						<td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"><input Type="text" num='1' onchange="GroupSplit((this.value),(this.id))" name="roomrent1" id="roomrent1" class="m-ctrl" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
    					</tr> 
						<tr>
    					 <td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    					 <td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
						 <td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:30%"><?php echo "CGST"; ?></td>
						 <td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo number_format($virtualcgst,2); ?></td>
						 <td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
						 <td style="padding-right:5px;padding-left:5px;text-align:center;width:14%"><?php echo ""; ?></td>
						 <td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"><input Type="text" num='1' onchange="GroupSplit((this.value),(this.id))" name="cgst1" id="cgst1" class="m-ctrl" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
    					</tr>
						<tr>
    					 <td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    					 <td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
						 <td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:30%"><?php echo "SGST"; ?></td>
						 <td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo number_format($virtualcgst,2); $Daytotal=$Daytotal+$virtualcgst+$virtualcgst-$discamt; ?></td>
						 <td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
						 <td style="padding-right:5px;padding-left:5px;text-align:center;width:14%"><?php echo ""; ?></td>
						 <td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"><input Type="text" num='1' onchange="GroupSplit((this.value),(this.id))" name="sgst1" id="sgst1" class="m-ctrl" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
    					</tr> 
						<?php
						if($discamt !=0)
						{ ?>
						<tr>
    					 <td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    					 <td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
						 <td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:30%"><?php echo "Discount"; ?></td>
						 <td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
						 <td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo number_format($discamt,2); ?></td>
						 <td style="padding-right:5px;padding-left:5px;text-align:center;width:14%"><?php echo ""; ?></td>
						 <td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"><input Type="text" num='1' onchange="GroupSplit((this.value),(this.id))" name="discount1" id="discount1" class="m-ctrl" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
    					</tr> 						
						<?php }
						$sql6="select * from Trans_Credit_Entry ce
							inner join Mas_Revenue mr on mr.Revenue_Id=ce.Creditheadid
							where Grcid='".$grcid."' and isnull(IsAllowance,0)=0 and ce.CreditDate='".$dates."' order by CreditDate";
							$res6=$this->db->query($sql6);
							foreach ($res6->result_array() as $row6)
							{								?>
                          <tr>
    						<td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    						<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo $row6['CreditNo']; ?></td>
							<td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:30%"><?php echo $row6['RevenueHead']; ?></td>
							<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo number_format($row6['Amount'],2); $Daytotal=$Daytotal+$row6['Amount']; ?></td>
							<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
							<td style="padding-right:5px;padding-left:5px;text-align:center;width:14%"><?php echo ""; ?></td>
							<td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"><input Type="text" num='1' onchange="GroupSplit((this.value),(this.id))" name="RevenueHead<?php echo $row6['Credid']; ?>" id="RevenueHead<?php echo $row6['Credid']; ?>" class="m-ctrl" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
    					  </tr> 
						<?php	 }
						$sql9="select * from Trans_Credit_Entry ce
						inner join Mas_Revenue mr on mr.Revenue_Id=ce.Creditheadid
						where Grcid='".$grcid."' and isnull(IsAllowance,0)=1 and ce.CreditDate='".$dates."' order by CreditDate";
						$res9=$this->db->query($sql9);
						foreach ($res9->result_array() as $row9)
						{	?>
							<tr>
							  <td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
							  <td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo $row9['CreditNo']; ?></td>
							  <td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:30%"><?php echo $row9['RevenueHead']; ?></td>							  
							  <td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
							  <td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo number_format($row9['Amount'],2); $Daytotal=$Daytotal-$row9['Amount']; ?></td>
							  <td style="padding-right:5px;padding-left:5px;text-align:center;width:14%"><?php echo ""; ?></td>
							  <td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"><input Type="text" num='1' onchange="GroupSplit((this.value),(this.id))" name="RevenueHead<?php echo $row6['Credid']; ?>" id="RevenueHead<?php echo $row6['Credid']; ?>" class="m-ctrl" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
							</tr> 
						  <?php	
						}
						$sql7="select * from Trans_Receipt_mas where Grcid='".$grcid."' and cancel=0";
						$res7=$this->db->query($sql7);
						foreach ($res7->result_array() as $row7)
						{								?>
                         <tr>
    					    <td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    						<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo $row7['Receiptno']; ?></td>
							<td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:30%"><?php echo "Advance"; ?></td>
							<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
							<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo number_format($row7['Amount'],2); $Daytotal=$Daytotal- $row7['Amount']; ?></td>
							<td style="padding-right:5px;padding-left:5px;text-align:center;width:14%"><?php echo ""; ?></td>
							<td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"><input Type="text" num='1' onchange="GroupSplit((this.value),(this.id))" name="Advance<?php echo $row6['Receiptid']; ?>" id="Advance<?php echo $row6['Receiptid']; ?>" class="m-ctrl" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
    					 </tr> 
					<?php } ?>
						<tr>
    						<td style="text-align:center;border-right:1px solid #000;width:10%"></td>
    						<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
							<td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:30%"><?php echo "Day Total"; ?></td>
							<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
							<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
							<td style="padding-right:5px;padding-left:5px;text-align:right;width:14%"><?php echo number_format($Daytotal,2); ?></td>
							<td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"></td>
    					</tr> 		 						
				
						<?php
						}
						else
						{ 
							    $begin = new DateTime($checkindate);
								$end   = new DateTime( $date );								
								for($i = $begin; $i <= $end; $i->modify('+1 day'))
								{   $daytotal=0; $CreditNo='';
									$dates = $i->format("Y-m-d");
							       	$sql6="select * from Trans_Credit_Entry ce
									inner join Mas_Revenue mr on mr.Revenue_Id=ce.Creditheadid
									where Grcid='".$grcid."' and ce.CreditDate='".$dates."' order by CreditDate";
									$res6=$this->db->query($sql6);
									foreach ($res6->result_array() as $row6)
									{   
										if($row6['RevenueNature']==1)
										{
											$Charges=$row6['Amount'];
											$Credit=0;
										}
										else
										{
											$Credit=$row6['Amount'];
											$Charges=0;
										}
									?>
									<tr>
										<td style="text-align:Center;width:10%; border-right:1px solid #000;"><?php echo date('d-m-Y', strtotime($row6['CreditDate'])); ?></td>
										<td style="padding-right:2px;padding-left:2px;text-align:center;width:10%; border-right:1px solid #000;"><?php echo $row6['CreditNo']; ?></td>
										<td style="padding-right:2px;padding-left:2px;width:30%;border-right:1px solid #000;"><?php echo $row6['RevenueHead']; ?></td>
										<td style="padding-right:2px;padding-left:2px;text-align:right; width:13%;border-right:1px solid #000;"><?php echo $Charges; ?></td>
										<td style="padding-right:2px;padding-left:2px;text-align:right; width:13%;border-right:1px solid #000;"><?php echo $Credit; ?></td>
										<td style="padding-right:2px;padding-left:2px;text-align:right; width:14%;border-right:1px solid #000;"></td>
										<td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"><?php  if($CreditNo !=$row6['CreditNo']) { ?><input Type="text" num='1'  onchange="GroupSplit((this.value),(this.id))" name="<?php echo $row6['CreditNo']; ?>" id="<?php echo $row6['CreditNo']; ?>" class="m-ctrl" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"><?php } ?></td>
									</tr>
									<?php 
									$daytotal=($daytotal+$Charges)-$Credit;
									$CreditNo= $row6['CreditNo'];
									} 
									$sql8="	select * from Trans_Receipt_mas where grcid='".$grcid."' and rptdate ='".$dates."'";
									$res8=$this->db->query($sql8);
									foreach ($res8->result_array() as $row8)
									{ ?>
									<tr>
										<td style="text-align:Center;width:10%;border-right:1px solid #000;"><?php echo date('d-m-Y', strtotime($row8['rptdate'])); ?></td>
										<td style="padding-right:2px;padding-left:2px;text-align:center;width:10%;border-right:1px solid #000;"><?php echo $row8['Receiptno']; ?></td>
										<td style="padding-right:2px;padding-left:2px;width:30%;border-right:1px solid #000;"><?php echo "ADVANCE"; ?></td>
										<td style="padding-right:2px;padding-left:2px;text-align:right;width:13%;border-right:1px solid #000;"><?php echo  "0"; ?></td>
										<td style="padding-right:2px;padding-left:2px;text-align:right;width:13%;border-right:1px solid #000;"><?php echo $row8['Amount']; ?></td>
										<td style="padding-right:2px;padding-left:2px;width:14%;border-right:1px solid #000;"></td>
										<td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"><input Type="text" num='1' onchange="GroupSplit((this.value),(this.id))" name="receipt<?php echo $row8['Receiptid']; ?>" id="receipt<?php echo $row8['Receiptid']; ?>" class="m-ctrl" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
									</tr>
									<?php
									$daytotal=$daytotal-$row8['Amount'];
									}
									$sql2="select roomrent,Extrabed,discamount,discper from Trans_Roomdet_det where roomgrcid='".$Roomgrcid."'";
									$res2=$this->db->query($sql2); 
									foreach ($res2->result_array() as $row2)
								 	{ $virtualroomrent=$row2['roomrent'];
								  	$Extrabed=$row2['Extrabed'];  }															
							
									  $sql="select * from Trans_roomdet_det where grcid='".$grcid."'";
									  $res=$this->db->query($sql);
									  foreach ($res->result_array() as $row)
									  { $roonrent= $row['roomrent'];
										  $discamt=$row2['discamount'];
										  if($row2['discper'] !=0)
										  {
										  $discamt = $virtualroomrent * $row2['discper'] / 100;
										  }
									  }
								  
									  $Res=$this->Myclass->Get_CGST($Roomgrcid,$guestcharges,$discamt,$date);
									  foreach($Res as $row) 
									  { $virtualcgst=$row['CGST'];  } 	
									$checkintime1=substr($checkintime, 11);
									$checkintime1= date("H:i:s", strtotime($checkintime1));	
									if (time() > strtotime($checkintime1) && $dates ==date('Y-m-d')) 
									{ ?>
										<td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:30%"><?php echo "ROOM RENT"; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo number_format ($roonrent,2); $daytotal=$daytotal+$roonrent; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;width:14%"><?php echo ""; ?></td>
										<td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"><input Type="text" num='1' onchange="GroupSplit((this.value),(this.id))" name="roomrent1" id="roomrent1" class="m-ctrl" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
										</tr> 
										<tr>
										<td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:30%"><?php echo "CGST"; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo number_format($virtualcgst,2); ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;width:14%"><?php echo ""; ?></td>
										<td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"></td>
										</tr>
										<tr>
										<td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:30%"><?php echo "SGST"; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:13%"><?php echo number_format($virtualcgst,2); $daytotal=$daytotal+$virtualcgst+$virtualcgst-$discamt; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:13%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;width:14%"><?php echo ""; ?></td>
										<td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"></td>
										</tr> 		
								<?php }
									
									?>
									<tr>
										<td style="text-align:Center;width:10%;border-right:1px solid #000;"></td>
										<td style="padding-right:2px;padding-left:2px;width:10%;border-right:1px solid #000;">-</td>
										<td style="padding-right:2px;padding-left:2px;width:30%;border-right:1px solid #000;">Days Total</td>
										<td style="padding-right:2px;padding-left:2px;width:13%;border-right:1px solid #000;">-</td>
										<td style="padding-right:2px;padding-left:2px;width:13%;border-right:1px solid #000;">-</td>
										<td style="padding-right:2px;padding-left:2px;text-align:right;width:14%;border-right:1px solid #000;"><?php echo number_format($daytotal,2); ?></td>
										<td style="padding-right:2px;padding-left:2px;text-align:center;border-left:1px solid #000;width:10%"></td>
									</tr>
									<?php
								}
							}
								?>							
				</tbody>
			</table>
			<div style="text-align: end; padding:5px" >
				<input type="submit" value="Split Bill Save" class="btn btn-warning btn-sm">
			</div>
		</form>
		</body>
	</div>
  </div>
<div id="popupopen" class="modal">
  <!-- Modal content -->
  <div class="modal-content" style="width:60%;">
    <span class="close">&times;</span>
  
<body>
<?php 
$Res=$this->Myclass->Hotel_Details();
	foreach($Res as $row) 
	{
		$Company=$row['Company'];
		$Address=$row['Address'];
		$Address1=$row['Address1'];
		$City=$row['City'];
		$Pin=$row['PinCode'];
		$State=$row['State'];
		$Phone=$row['Phone'];
		$Gstinn=$row['Gstinn'];
		if($row['Email']=='')
		{ $Email='';}
	    else { $Email='Email:'.$row['Email']; } 
	}
	                 
?>
		   
			<div id='DivIdToPrint'>
				<table style="border-left:1px solid #000;border-right:1px solid #000;border-bottom:1px solid #000;border-top:1px solid #000;width:100%">								
    			   <tbody>
					<tr>
    					<td style="padding-right:5px;padding-left:5px;background:#aad0ff;text-align:center;border-bottom:1px solid #000;border-right:1px solid #000;width:10%">Date</td>
    					<td style="padding-right:5px;padding-left:5px;background:#aad0ff;text-align:center;border-bottom:1px solid #000;border-right:1px solid #000;width:10%">Ref.No</td>
						<td style="padding-right:5px;padding-left:5px;background:#aad0ff;border-bottom:1px solid #000;border-right:1px solid #000;width:35%">Particulars</td>
						<td style="padding-right:5px;padding-left:5px;background:#aad0ff;text-align:right;border-bottom:1px solid #000;border-right:1px solid #000;width:15%">Charges</td>
						<td style="padding-right:5px;padding-left:5px;background:#aad0ff;text-align:right;border-bottom:1px solid #000;border-right:1px solid #000;width:15%">Credit</td>
						<td style="padding-right:5px;padding-left:5px;background:#aad0ff;text-align:right;border-bottom:1px solid #000;width:15%">Total</td>
    				</tr> 
					<?php 
					if($noofdays ==0) //Same Day Checkin checkout Validation
					    { 
							$begin = new DateTime($checkindate);
							$dates = $begin->format("Y-m-d");
							$Daytotal="0.00";
							$sql="select * from Trans_roomdet_det where grcid='".$grcid."'";
							$res=$this->db->query($sql);
							foreach ($res->result_array() as $row)
							{ $roonrent= $row['roomrent'];
								$discamt=$row2['discamount'];
								if($row2['discper'] !=0)
								{
								$discamt = $virtualroomrent * $row2['discper'] / 100;
								}
							}
						
							$Res=$this->Myclass->Get_CGST($Roomgrcid,$guestcharges,$discamt,$date);
							foreach($Res as $row) 
							{ $virtualcgst=$row['CGST'];  } 						  
					?>
                        <tr>
    					<td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    					<td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo ""; ?></td>
						<td style="border-right:1px solid #000;width:40%"><?php echo "ROOM RENT"; ?></td>
						<td style="text-align:right;border-right:1px solid #000;width:10%"><?php echo number_format ($roonrent,2); $Daytotal=$Daytotal+$roonrent; ?></td>
						<td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
						<td style="text-align:center;width:10%"><?php echo ""; ?></td>
    					</tr> 
						<tr>
    					 <td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    					 <td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo ""; ?></td>
						 <td style="border-right:1px solid #000;width:40%"><?php echo "CGST"; ?></td>
						 <td style="text-align:right;border-right:1px solid #000;width:10%"><?php echo number_format($virtualcgst,2); ?></td>
						 <td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
						 <td style="text-align:center;width:10%"><?php echo ""; ?></td>
    					</tr>
						<tr>
    					 <td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    					 <td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo ""; ?></td>
						 <td style="border-right:1px solid #000;width:40%"><?php echo "SGST"; ?></td>
						 <td style="text-align:right;border-right:1px solid #000;width:10%"><?php echo number_format($virtualcgst,2); $Daytotal=$Daytotal+$virtualcgst+$virtualcgst-$discamt; ?></td>
						 <td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
						 <td style="text-align:center;width:10%"><?php echo ""; ?></td>
    					</tr> 
						<?php
						if($discamt !=0)
						{ ?>
						<tr>
    					 <td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    					 <td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo ""; ?></td>
						 <td style="border-right:1px solid #000;width:40%"><?php echo "Discount"; ?></td>
						 <td style="text-align:right;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
						 <td style="text-align:right;border-right:1px solid #000;width:10%"><?php echo number_format($discamt,2); ?></td>
						 <td style="text-align:center;width:10%"><?php echo ""; ?></td>
    					</tr> 						
						<?php }
						$sql6="select * from Trans_Credit_Entry ce
							inner join Mas_Revenue mr on mr.Revenue_Id=ce.Creditheadid
							where Grcid='".$grcid."' and isnull(IsAllowance,0)=0 and ce.CreditDate='".$dates."' order by CreditDate";
							$res6=$this->db->query($sql6);
							foreach ($res6->result_array() as $row6)
							{								?>
                          <tr>
    						<td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    						<td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo $row6['CreditNo']; ?></td>
							<td style="border-right:1px solid #000;width:40%"><?php echo $row6['RevenueHead']; ?></td>
							<td style="text-align:right;border-right:1px solid #000;width:10%"><?php echo number_format($row6['Amount'],2); $Daytotal=$Daytotal+$row6['Amount']; ?></td>
							<td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
							<td style="text-align:center;width:10%"><?php echo ""; ?></td>
    					  </tr> 
						<?php	 }
						$sql9="select * from Trans_Credit_Entry ce
						inner join Mas_Revenue mr on mr.Revenue_Id=ce.Creditheadid
						where Grcid='".$grcid."' and isnull(IsAllowance,0)=1 and ce.CreditDate='".$dates."' order by CreditDate";
						$res9=$this->db->query($sql9);
						foreach ($res9->result_array() as $row9)
						{	?>
							<tr>
							  <td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
							  <td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo $row9['CreditNo']; ?></td>
							  <td style="border-right:1px solid #000;width:40%"><?php echo $row9['RevenueHead']; ?></td>							  
							  <td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
							  <td style="text-align:right;border-right:1px solid #000;width:10%"><?php echo number_format($row9['Amount'],2); $Daytotal=$Daytotal-$row9['Amount']; ?></td>
							  <td style="text-align:center;width:10%"><?php echo ""; ?></td>
							</tr> 
						  <?php	
						}
						$sql7="select * from Trans_Receipt_mas where Grcid='".$grcid."' and cancel=0";
						$res7=$this->db->query($sql7);
						foreach ($res7->result_array() as $row7)
						{								?>
                         <tr>
    					    <td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
    						<td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo $row7['Receiptno']; ?></td>
							<td style="border-right:1px solid #000;width:40%"><?php echo "Advance"; ?></td>
							<td style="text-align:right;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
							<td style="text-align:right;border-right:1px solid #000;width:10%"><?php echo number_format($row7['Amount'],2); $Daytotal=$Daytotal- $row7['Amount']; ?></td>
							<td style="text-align:center;width:10%"><?php echo ""; ?></td>
    					 </tr> 
					<?php	 } ?>
						<tr>
    						<td style="text-align:center;border-right:1px solid #000;width:15%"></td>
    						<td style="text-align:center;border-right:1px solid #000;width:15%"><?php echo ""; ?></td>
							<td style="border-right:1px solid #000;width:40%"><?php echo "Day Total"; ?></td>
							<td style="text-align:right;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
							<td style="text-align:right;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
							<td style="text-align:right;width:10%"><?php echo number_format($Daytotal,2); ?></td>
    					</tr> 						
						</tbody>	
					</table>				    						
				
						<?php
						}
						else
						{ 
							$begin = new DateTime($checkindate);
							$end   = new DateTime( $date );							
							for($i = $begin; $i <= $end; $i->modify('+1 day'))
							{   $daytotal=0;
								$dates = $i->format("Y-m-d");
								$sql6="select * from Trans_Credit_Entry ce
								inner join Mas_Revenue mr on mr.Revenue_Id=ce.Creditheadid
								where Grcid='".$grcid."' and ce.CreditDate='".$dates."' order by CreditDate";
								$res6=$this->db->query($sql6);
								foreach ($res6->result_array() as $row6)
								{
									if($row6['RevenueNature']==1)
									{
										$Charges=$row6['Amount'];
										$Credit=0;
									}
									else
									{
										$Credit=$row6['Amount'];
										$Charges=0;
									}
								?>
								<tr>
									<td style="text-align:Center;width:10%;border-right:1px solid #000;"><?php echo date('d-m-Y', strtotime($row6['CreditDate'])); ?></td>
									<td style="padding-right:5px;padding-left:5px;text-align:center;width:10%;border-right:1px solid #000;"><?php echo $row6['CreditNo']; ?></td>
									<td style="padding-right:5px;padding-left:5px;width:35%;border-right:1px solid #000;"><?php echo $row6['RevenueHead']; ?></td>
									<td style="padding-right:5px;padding-left:5px;text-align:right; width:15%;border-right:1px solid #000;"><?php echo $Charges; ?></td>
									<td style="padding-right:5px;padding-left:5px;text-align:right; width:15%;border-right:1px solid #000;"><?php echo $Credit; ?></td>
									<td style="text-align:right; width:15%"></td>
								</tr>
								<?php 
								$daytotal=($daytotal+$Charges)-$Credit;
								} 
								$sql8="	select * from Trans_Receipt_mas where grcid='".$grcid."' and rptdate ='".$dates."'";
								$res8=$this->db->query($sql8);
								foreach ($res8->result_array() as $row8)
								{ ?>
								<tr>
									<td style="text-align:Center;width:10%;border-right:1px solid #000;"><?php echo date('d-m-Y', strtotime($row8['rptdate'])); ?></td>
									<td style="padding-right:5px;padding-left:5px;text-align:center;width:10%;border-right:1px solid #000;"><?php echo $row8['Receiptno']; ?></td>
									<td style="padding-right:5px;padding-left:5px;width:35%;border-right:1px solid #000;"><?php echo "ADVANCE"; ?></td>
									<td style="padding-right:5px;padding-left:5px;text-align:right;width:15%;border-right:1px solid #000;"><?php echo  "0"; ?></td>
									<td style="padding-right:5px;padding-left:5px;text-align:right;width:15%;border-right:1px solid #000;"><?php echo $row8['Amount']; ?></td>
									<td style="width:15%;"></td>
								</tr>
								<?php
								$daytotal=$daytotal-$row8['Amount'];
								}
									$sql2="select roomrent,Extrabed,discamount,discper from Trans_Roomdet_det where roomgrcid='".$Roomgrcid."'";
									$res2=$this->db->query($sql2); 
									foreach ($res2->result_array() as $row2)
								 	{ $virtualroomrent=$row2['roomrent'];
								  	$Extrabed=$row2['Extrabed'];  }															
							
									  $sql="select * from Trans_roomdet_det where grcid='".$grcid."'";
									  $res=$this->db->query($sql);
									  foreach ($res->result_array() as $row)
									  { $roonrent= $row['roomrent'];
										  $discamt=$row2['discamount'];
										  if($row2['discper'] !=0)
										  {
										  $discamt = $virtualroomrent * $row2['discper'] / 100;
										  }
									  }
								  
									  $Res=$this->Myclass->Get_CGST($Roomgrcid,$guestcharges,$discamt,$date);
									  foreach($Res as $row) 
									  { $virtualcgst=$row['CGST'];  } 	
									$checkintime1=substr($checkintime, 11);
									$checkintime1= date("H:i:s", strtotime($checkintime1));	
									if (time() > strtotime($checkintime1) && $dates ==date('Y-m-d')) 
									{ ?>
									<tr>
										<td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:35%"><?php echo "ROOM RENT"; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:15%"><?php echo number_format ($roonrent,2); $daytotal=$daytotal+$roonrent; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:15%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;width:15%"><?php echo ""; ?></td>
										</tr> 
										<tr>
										<td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:35%"><?php echo "CGST"; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:15%"><?php echo number_format($virtualcgst,2); ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:15%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;width:15%"><?php echo ""; ?></td>
										</tr>
										<tr>
										<td style="text-align:center;border-right:1px solid #000;width:10%"><?php echo date('d-m-Y', strtotime($dates)); ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:10%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;border-right:1px solid #000;width:35%"><?php echo "SGST"; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:right;border-right:1px solid #000;width:15%"><?php echo number_format($virtualcgst,2); $daytotal=$daytotal+$virtualcgst+$virtualcgst-$discamt; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;border-right:1px solid #000;width:15%"><?php echo ""; ?></td>
										<td style="padding-right:5px;padding-left:5px;text-align:center;width:15%"><?php echo ""; ?></td>
										</tr> 		
								<?php }
								
								?>
								<tr>
									<td style="text-align:Center;width:10%;border-right:1px solid #000;"></td>
									<td style="padding-right:5px;padding-left:5px;width:10%;border-right:1px solid #000;">-</td>
									<td style="padding-right:5px;padding-left:5px;width:35%;border-right:1px solid #000;">Days Total</td>
									<td style="padding-right:5px;padding-left:5px;width:15%;border-right:1px solid #000;">-</td>
									<td style="padding-right:5px;padding-left:5px;width:15%;border-right:1px solid #000;">-</td>
									<td style="padding-right:5px;padding-left:5px;text-align:right;width:15%;border-right:1px solid #000;"><?php echo number_format($daytotal,2); ?></td>
								</tr>
								<?php
							}				
							
						}	?>
							</tbody>
    					</table>
		
</div>
   
</body>

  </div>
</div>
  <form id="checkoutsave">
  <table class="FrmTable" style="width:100%">
   <tr>
	<td>Room No </td>
	<td><input type='text' style="background-color:#FFF59B;" Readonly class="m-ctrl" value="<?php echo $Roomno; ?>"></td>
	<td>Bill No </td>
	<td><input type="text" class="m-ctrl" value="<?php echo $Checkoutno; ?>" readonly style="background-color:#FFF59B;"></td>
   </tr>
   <tr>
	<td>No of Pax</td>
	<td><input type='text' style="background-color:#FFF59B;" Readonly class="m-ctrl" value="<?php echo $Noofpersons; ?>"></td>
	<td>Checkin</td>
	<td><input type="text" class="m-ctrl" value="<?php echo date("d/m/Y", strtotime($checkindate))."-".substr($checkintime,11,5);  ?>" readonly style="background-color:#FFF59B;"></td>
   </tr>
   <tr>
    <td>Guest Name</td>
	<td><input type="text" readonly class="m-ctrl" value="<?php echo  $Title.".".$gname; ?>" style="background-color:#FFF59B;"></td>
	<td>Date & Time</td>
	<td><input type="text" readonly class='m-ctrl' value="<?php echo date("d/m/Y-H:i") ?>" style="background-color:#FFF59B;"></td>
   </tr>
   <tr>
    <td>Address</td>
	<td><input type="text" readonly class='m-ctrl' value="<?php echo $Address1 ?>" style="background-color:#FFF59B;"></td>
	<td>Res No</td>
	<td><input type="text" readonly class="m-ctrl" value="" style="background-color:#FFF59B;"></td>
   </tr>
   <tr>
    <td>Address2</td>
	<td><input type="text" readonly class="m-ctrl" value="<?php echo $Address2 ?>" style="background-color:#FFF59B;"></td>
	<td>Company</td>
	<td><input type="text" readonly class="m-ctrl" style="background-color:#FFF59B;"></td>
   </tr>
   <tr>
    <td>City</td>
	<td><input type="text" readonly class="m-ctrl" value="<?php echo $city ?>" style="background-color:#FFF59B;"></td>
	<td>Travel Agent</td>
	<td><input type="text" readonly class="m-ctrl" style="background-color:#FFF59B;"></td>
   </tr>
   <tr>
    <td>Bill Amount</td>
	<td><input Type="text" readonly value="<?php echo  number_format($grandtotal,2); ?>" class="m-ctrl" style="background-color:#FFF59B;"></td>
	<td><input type="Button" id="Billdetails" value="Details" class="btn btn-warning btn-sm">
	<?php if($EnableSplitBill==1){ ?>	<input type="Button" id="SplitBill" value="SplitBill" class="btn btn-warning btn-sm"></td> <?php } ?>
	<td><input type="submit" value="Checkout" class="btn btn-warning btn-sm"></td>
   </tr>
  </table>

     <input type="hidden" value="<?php echo $Roomid ?>" name="Room_id" value="Room_id">
  </form>
  

<script>
var modal = document.getElementById("popupopen");
var btn = document.getElementById("Billdetails");
var span = document.getElementsByClassName("close")[1];
var span1 = document.getElementsByClassName("close")[0];
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
  modal1.style.display = "none";
}
span1.onclick = function() 
{  modal.style.display = "none";
  modal1.style.display = "none"; }
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";	
  }
  if (event.target == modal1) {
	modal1.style.display = "none";
  }
}
var modal1 = document.getElementById("splitbillopen");
var btn1 = document.getElementById("SplitBill");
btn1.onclick = function() {
  modal1.style.display = "block";
}
</script>  
 <script>
 var bank=0;
 var card=0;
 var validate=0;
 var payid =0;

	$("#checkoutsave").on('submit', function (e) {
       e.preventDefault();

          $.ajax({
            type: 'get',
            url: "<?php echo scs_index ?>Transaction/checkoutsave?Roomid=<?php echo $Roomid; ?>",
            data: $('#checkoutsave').serialize(),
            success: function (result) {
				var id=result;
				 swal({
				  title: "Checkout Save Successfully..!",
				  text: "Did you Need Print..!",
				  icon: "success",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
				   window.location.href ="<?php echo scs_index ?>Transaction/CheckoutReceipt?Checkoutid="+id;
				  } else {
					window.location.href ="<?php echo scs_index ?>Transaction/RoomChart";
				  }
				}); 
			  
			   }			
          });
          		   
        });
function GroupSplit(value,id)
{
	if(<?php echo $noofdays ?>==0)
	{
		alert("if");
	}
	else
	{
		alert("else");
	}

}
$("#BillSplitForm").on('submit', function (e) {
	e.preventDefault();
          $.ajax({
            type: 'get',
            url: "<?php echo scs_index ?>Transaction/tempBillSplitform?Roomid=<?php echo $Roomid; ?>",
            data: $('#BillSplitForm').serialize(),
            success: function (result) {
              alert(result);
			   var modal1 = document.getElementById("splitbillopen");
			  modal1.style.display = "none";
			   }			
          });
	});
 </script>