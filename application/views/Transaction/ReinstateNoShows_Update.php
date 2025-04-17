<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Transaction','ReinstateNoShows_Update');
$this->pfrm->FrmHead2('Transaction / ReinstateNoShows_Update',$F_Class."/ReinstateNoShows",$F_Class."/".$F_Ctrl."_View");
?>
<div class="col-sm-12">
  <div class="the-box F_ram">
    <fieldset>
      <input type="hidden" name="idv" value="<?php echo @$Resid; ?>" >
      <input type="hidden" name="resdetid" value="<?php echo @$resdetid; ?>" >
      <input type="hidden" name="ratetypeid" value="<?php echo @$ratetypeid; ?>" >
      <input type="hidden" name="typeid" value="<?php echo @$typeid; ?>" >
      <input type="hidden" name="noofrooms" value="<?php echo @$noofrooms; ?>" >            
      <table class="FrmTable T-8" >
         <tr>
          <td align="right" class="F_val">Res.No</td>
            <td align="left"><input type="text" readonly placeholder="Floor" id="ResNo" name="ResNo" value="<?php echo @$ResNo; ?>" class="scs-ctrl" />
            <div class="Floor" ></div></td>
            <td align="right" class="F_val">Res.Date</td>
            <td align="left"><input type="text" readonly  placeholder="Floor" id="Floor" name="Floor" value="<?php echo date('d-m-Y',strtotime($Resdate)); ?>" class="scs-ctrl" />
            <div class="Floor" ></div></td>
         </tr>
         <tr>
          <td align="right" class="F_val">Guest Name</td>
          <td align="left"><input type="text" readonly  placeholder="Floor" id="Floor" name="Floor" value="<?php echo $Firstname; ?>" class="scs-ctrl" />
            <div class="Floor" ></div></td>
          <td align="right" class="F_val">Room Type</td>
          <td align="left"><input type="text" readonly  placeholder="Floor" id="Floor" name="Floor" value="<?php echo $RoomType; ?>" class="scs-ctrl" />
            <div class="Floor" ></div></td>
         </tr>
         <tr>
          <td align="right" class="F_val">Arrival Date</td>
          <td align="left"><input type="text" readonly  placeholder="Floor" id="Arrival" name="Arrival" value="<?php echo date('d-m-Y',strtotime($fromdate)); ?><?php echo substr($fromtime,10,6); ?>" class="scs-ctrl rmm" />
            <div class="Floor" ></div></td>
          <td align="right" class="F_val">Departure Date</td>
          <td align="left"><input type="text" readonly  placeholder="Floor" id="Departure" name="Departure" value="<?php echo date('d-m-Y',strtotime($todate)); ?><?php echo substr($totime,10,6); ?>" class="scs-ctrl rmm"  />
            <div class="Floor" ></div></td>
         </tr>    
         <tr>
          <td align="right" class="F_val">New Arrival Date</td>
          <td align="left"><input name="NewArrival" min="<?php echo date('Y-m-d')?>T20:21" id="NewArrival" type="datetime-local"  class="scs-ctrl " />            
            <div class="NewArrival" ></div></td>
          <td align="right" class="F_val">New Departure Date</td>
          <td align="left"><input name="NewDeparture" min="<?php echo date('Y-m-d')?>T20:21" id="NewDeparture" type="datetime-local"  class="scs-ctrl " />            
            <div class="NewDeparture" ></div></td>
         </tr>		    
        <tr>
          <td align="right">&nbsp;</td>
          <td align="right"><input type="button" class="btn btn-success btn-sm" id="EXEC" name="EXEC" value="<?php echo $BUT;?>"   /></td>
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


