<!-- <?php
// defined('BASEPATH') OR exit('No direct script access allowed');
// $this->pweb->phead();
// $this->pcss->wcss();
// $this->pweb->wtop();
// $this->pweb->wheader($this->menu,$this->session);
// $this->pweb->menu($this->Menu,$this->session);
// $this->pweb->Cheader('Reprint','Reservation Advance Receipt');
// $this->pfrm->FrmHead3('Reprint / Reservation Advance Receipt',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");
 
?> -->
 <?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Reprint','Reservation Advance Receipt');
$this->pfrm->FrmHead3('Reprint / Reservation Advance Receipt',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");
 
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
			 $norow=0; $CASH=0; $CARD=0; $NEFT=0; $ROOM=0;

        	 $qry="select ti.Title+'.'+cus.Firstname as Name,* from Trans_reserveadd_mas mas
             inner join Trans_Receipt_mas rmas on rmas.Billid=mas.resaddid
             inner join Mas_Customer cus on mas.cusid=cus.Customer_Id
             inner join Mas_Title ti on ti.Titleid=cus.Titelid
             where mas.resaddate ='".date('Y/m/d')."' and 
			 isnull(rmas.cancel,0)=0 and  isnull(ReceiptType,'')='A'";
			 $exec=$this->db->query($qry); $totalAdvance=0;
			 $advance= $exec->num_rows();
			  if($advance !=0)
			  {
				echo '<tr>';		 
				echo '<td  style="text-align: center;">Receipt No</td>';
				echo '<td  style="text-align: center;">Receipt Date</td>';
				echo '<td style="text-align: center;">Customer</td>';
				echo '<td style="text-align: center;">Amount</td>';
				echo '<td style="text-align: center;">Action</td>';
				echo '</tr>';			
			  }			 
			  foreach ($exec->result_array() as $rows)
			  {				
				echo '<tr>';		 
				echo '<td  style="text-align: center;">'.$rows['yearprefix'].'/'.$rows['Receiptno'].'</td>';
				echo '<td style="text-align: center;">'.date('d-m-Y',strtotime($rows['rptdate'])).'</td>';
				echo '<td style="text-align: left;">'.$rows['Firstname'].'</td>';	
				echo '<td style="text-align: right;">'.$rows['Amount'].'</td>';
				echo '<td style="text-align: center;"><a href="'.scs_index.'Transaction/ReservationAdvanceReceipt?Receiptid='.$rows['Receiptid'].'"><i class="fa fa-eye"></i></a></td>';
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
 