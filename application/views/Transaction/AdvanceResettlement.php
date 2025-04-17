<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Settlement','Advance Resettlement');
$this->pfrm->FrmHead3('Settlement / Advance Resettlement',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");
 
?>
 

<div class="col-sm-12">
  <div class="the-box F_ram">
   <fieldset>
		
    </fieldset>
  </div>
  <div class="the-box D_IS" ></div>
</div>
<div>
		
        <table class="table table-bordered table-hover"  >         
		   <tbody>
		    <?php 
			 $i=1;
			 $qry="select * from Trans_Receipt_mas 	 rec
					inner join mas_Customer cus on cus.Customer_Id=rec.customerid
					inner join Mas_Title ti on ti.Titleid=cus.Titelid
					inner join Mas_Room rom on rom.Room_Id=rec.roomid
					where ReceiptType='C' and rptdate between '".date('Y-m-d')."' and '".date('Y-m-d')."'";
			 $exec=$this->db->query($qry); $totalAdvance=0;
			 $advance= $exec->num_rows();
			  if($advance !=0)
			  {
				echo '<tr>';
				echo '<td colspan="6" class="text-bold" style="text-align: center;">Advance Resettlement</td>';			
				echo '</tr>';
				echo '<tr>';		 
				echo '<td  style="text-align: center;">Receipt No</td>';
				echo '<td  style="text-align: center;">Receipt Date</td>';
				echo '<td style="text-align: center;">Customer</td>';
				echo '<td style="text-align: center;">Room No</td>';
				echo '<td style="text-align: center;">Amount</td>';
				echo '<td style="text-align: center;">Action</td>';
				echo '</tr>';			
			  }			 
			  foreach ($exec->result_array() as $rows)
			  {				
				echo '<tr>';		 
				echo '<td  style="text-align: center;">'.$rows['yearprefix'].'/'.$rows['Receiptno'].'</td>';
				echo '<td style="text-align: center;">'.date('d-m-Y',strtotime($rows['rptdate'])).'</td>';
				echo '<td style="text-align: left;">'.$rows['Title'].'.'.$rows['Firstname'].'</td>';
				echo '<td style="text-align: center;">'.$rows['RoomNo'].'</td>';		
				echo '<td style="text-align: right;">'.$rows['Amount'].'</td>';
				echo '<td style="text-align: center;"><a href="'.scs_index.'Transaction/AdvanceResettlement_Edit/'.$rows['Receiptid'].'"><i class="fa fa-pencil"></i></a></td>';
				echo '</tr>';				
			  }			 
		   ?>		   
		   </tbody>
		</table>	
	</div>
	<?php 
$this->pfrm->FrmFoot();
$this->pweb->wfoot();
$this->pcss->wjs($F_Ctrl);
$this->licscript->LicenPopUp($this->Myclass);
$this->licscript->LicFooter();
?>
 