
<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
//$this->pweb->Cheader('Transaction','RoomStatusOnline');
//$this->pfrm->FrmHead1('Transaction / RoomStatusOnline',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");
?> 
<?php

 $sql="select DateofAudit,* from night_audit";
 $res=$this->db->query($sql);
 foreach ($res->result_array() as $row)
 {  $auditdate=date('Y/m/d',strtotime($row['DateofAudit'])); }

?>

<?php 
      $sql ="select * from User_GroupRights where SubMenu_Id=(select  submenu_id from submenu where Smenu='Checkin') and   userGroup_id=(select usergroup_id from usertable where user_id='".User_id."')";
        $exe = $this->db->query($sql);
        foreach($exe->result_array() as $row){
          $view = $row['Fview'];
          $edit = $row['FEdit'];
          $add = $row['FAdd'];
          $delete = $row['Fdelete'];
       }
      $sql1 ="select * from User_GroupRights where SubMenu_Id=(select  submenu_id from submenu where Smenu='Allowance') and   userGroup_id=(select usergroup_id from usertable where user_id='".User_id."') ";
        $exe = $this->db->query($sql1);
        foreach($exe->result_array() as $row){
          $aview = $row['Fview'];
          $aedit = $row['FEdit'];
          $aadd = $row['FAdd'];
          $adelete = $row['Fdelete'];
       }

       $sql2 ="select * from User_GroupRights where SubMenu_Id=(select  submenu_id from submenu where Smenu='Roomtransfer') and   userGroup_id=(select usergroup_id from usertable where user_id='".User_id."')";
        $exe = $this->db->query($sql2);
        foreach($exe->result_array() as $row){
          $rview = $row['Fview'];
          $redit = $row['FEdit'];
          $radd = $row['FAdd'];
          $rdelete = $row['Fdelete'];
       }

       $sql3 ="select * from User_GroupRights where SubMenu_Id=(select  submenu_id from submenu where Smenu='Guest Amendment') and   userGroup_id=(select usergroup_id from usertable where user_id='".User_id."')";
        $exe = $this->db->query($sql3);
        foreach($exe->result_array() as $row){
          $gview = $row['Fview'];
          $gedit = $row['FEdit'];
          $gadd = $row['FAdd'];
          $gdelete = $row['Fdelete'];
       }
       $sql4 ="select * from User_GroupRights where SubMenu_Id=(select  submenu_id from submenu where Smenu='Checkout') and   userGroup_id=(select usergroup_id from usertable where user_id='".User_id."')";
       $exe = $this->db->query($sql4);
       foreach($exe->result_array() as $row){
         $cview = $row['Fview'];
         $cedit = $row['FEdit'];
         $cadd = $row['FAdd'];
         $cdelete = $row['Fdelete'];
      }
      $sql5 ="select * from User_GroupRights where SubMenu_Id=(select  submenu_id from submenu where Smenu='Complimentary Checkout') and   userGroup_id=(select usergroup_id from usertable where user_id='".User_id."')";
      $exe = $this->db->query($sql5);
      foreach($exe->result_array() as $row){
        $ccview = $row['Fview'];
        $ccedit = $row['FEdit'];
        $ccadd = $row['FAdd'];
        $ccdelete = $row['Fdelete'];
     }
     $sql6 ="select * from User_GroupRights where SubMenu_Id=(select  submenu_id from submenu where Smenu='Clear Dirty') and   userGroup_id=(select usergroup_id from usertable where user_id='".User_id."')";
     $exe = $this->db->query($sql6);
     foreach($exe->result_array() as $row){
       $cdview = $row['Fview'];
       $cdedit = $row['FEdit'];
       $cdadd = $row['FAdd'];
       $cddelete = $row['Fdelete'];
    }
    $sql6 ="select * from User_GroupRights where SubMenu_Id=(select  submenu_id from submenu where Smenu='Settlement') and   userGroup_id=(select usergroup_id from usertable where user_id='".User_id."')";
    $exe = $this->db->query($sql6);
    foreach($exe->result_array() as $row){
      $sview = $row['Fview'];
      $sedit = $row['FEdit'];
      $sadd = $row['FAdd'];
      $sdelete = $row['Fdelete'];
   }

   $sql7 ="select isnull(comcheckoutoption, 0) as comcheckoutoption
   from  usertable where User_id='".User_id."'";
    $ece = $this->db->query($sql7);
    foreach($ece->result_array() as $row1){
      $comcheckoutoption =$row1['comcheckoutoption'];
    }
     ?>
     
<style>

/* table .fixed{
    table-layout: fixed;
    width:90%;
    word-break: break-all;
}

table .fixed td{
    overflow: hidden;
} */
  </style>
<div class="col-sm-12 mt-2 ">
  <div class="page-content-wrapper">
    <div class="page-content">          
      <div class="row">
          <div class="the-box F_ram">
            <fieldset>          
              <table class="FrmTable T-12" > 
                <?php 
                $cur = date('Y-m-d');
                $qury = "EXEC Trans_counts '".$cur."'";
                $exe = $this->db->query($qury);
                foreach($exe -> result_array() as $count){

                
                ?>               
                <tr>                  
                  <td align="center"><form method="POST" id="occupiedForm"><input type="hidden" name="occ" id="occ" value="1" /><a href="#" name="submit" id="occupied"><img src="<?php echo scs_url ?>assets/img/occupied.png" alt="Girl in a jacket" width="30" height="30"></a> <?php echo $count['occupied'];?></form></td>
                  <td align="center"><form method="POST" id="availForm"><input type="hidden" name="ava" id="ava" value="1" /><a href="#" name="submit" id="avail"><img src="<?php echo scs_url ?>assets/img/vacant.png" alt="Girl in a jacket" width="30" height="30"> </a> <?php echo $count['availablerooms'];?></form></td>
                  <td align="center"><form method="POST" id="clearForm"><input type="hidden" name="clear" id="clear" value="1" /><a href="#" name="submit" id="cleard"><img src="<?php echo scs_url ?>assets/img/dirty.png" alt="Girl in a jacket" width="30" height="30"></a> <?php echo $count['dirtyrooms'];?></form></td>
                  <td align="center"><form method="POST" id="blockForm"><input type="hidden" name="blocked" id="blocked" value="1" /><a href="#" name="submit" id="block"><img src="<?php echo scs_url ?>assets/img/maintainance.png" alt="Girl in a jacket" width="30" height="30"></a> <?php echo $count['maintain'];?></form></td>
                  <td align="center"><form method="POST" id="mainForm"><input type="hidden" name="mainn" id="mainn" value="1" /><a href="#" name="submit" id="main"><img src="<?php echo scs_url ?>assets/img/foblock.png" alt="Girl in a jacket" width="30" height="30"></a> <?php echo $count['maintainF'];?></form></td>
                  <td align="center"><form method="POST" id="billForm"><input type="hidden" name="billed" id="billed" value="1" /><a href="#" name="submit" id="bill"><img src="<?php echo scs_url ?>assets/img/un.png" alt="Girl in a jacket" width="30" height="30"></a> <?php echo $count['billsettlement'];?></form></td>
                  <td align="center"><img src="<?php echo scs_url ?>assets/img/expected.png" alt="Girl in a jacket" width="30" height="30"><?php echo $count['reserve'];?></td>
                  <td align="center"><img src="<?php echo scs_url ?>assets/img/depature.png" alt="Girl in a jacket" width="30" height="30"><?php echo $count['checkout'];?></td>
                </tr>
                <?php
                }
                ?>
              </table>
              <form method="POST">
              <table class="FrmTable T-12" >          
                <tr>
                  <td align="right" class="F_val">Sort by</td>
                  <td align="left">
                  <select name="selectType" id="selectType" class="scs-ctrl " >              
                    <option selected value="0">--Select--</option>               
                    <option value="1">Room Type</option>               
                    <option value="2">Room Number</option>               
                    <option value="3">Customer</option>               
                  </select></td>      
                  <td align="left"><input type="text" placeholder="Search" id="search" name="search"  class="scs-ctrl" />
                  
                  <div class="City" ></div></td>
                  <td align="left"><input type="submit" name="submit"  class="btn btn-success btn-sm"    />
                  <input type="submit" name="reload" value="Reload" id="reload" class="btn btn-success btn-sm"    /></td>     
                  
              </table>
              </form>
            </fieldset>
          </div>

        <div class="col-md-12">
          <div class="row">
            <?php 
            if (@$_POST['submit']){              
              if($_POST['selectType'] == 1){
                $sql="exec filterbyroomtype '"."%".$_POST['search']."%"."' ";
              }else if ($_POST['selectType'] == 2){
                $sql="exec filterbyroomno '"."%".$_POST['search']."%"."'  ";
              }elseif($_POST['selectType'] == 3){
                 $sql="exec filterbyname '"."%".$_POST['search']."%"."'  ";
              }
              else{
                 $sql="exec filterbycommon ";
              }
            }else if(@$_POST['occ']){
               $sql="exec fiterbyoccupied";
            }else if(@$_POST['ava']){
              $sql="exec fiterbyavailable";
            }
            else if(@$_POST['clear']){
              $sql="exec fiterbyclear";
            }
            else if(@$_POST['blocked']){
              $sql="exec fiterbymblocked";
            }
            else if(@$_POST['mainn']){
              $sql="exec fiterbyblocked";
            }
            else if(@$_POST['billed']){
              $sql="exec fiterbybill";
            }
            else{
             $sql="exec filterbycommon ";
            }
          $res=$this->db->query($sql);
          $norows = $res->num_rows();
          if($norows==0){
           ?>
             <div class="col-sm-3 col-lg-12" style="padding: 0.5%;">
                <div class="card-body" style="height:100%">

                <h3 class="text-center"> No Results found....</h3>
                </div>
            </div>
               <?php   
          }
          foreach ($res->result_array() as $row)
          {
           
            ?>
            
          <div class="col-sm-3 col-lg-3 col-md-3" style="padding: 0.5%;">
            <div class="card" style="height:100%">
              <div class="card-head card-head " style="background-color:<?php echo $row['Color']; ?>;">
                <table style="table-layout:fixed; width:100%;">
                
								  <tr>
										  <td style="text-align: left; overflow:hidden;  ">#<?php echo $row['RoomNo']; ?></td>		
                      <td style="text-align: right; overflow:hidden; display:flex;width:100%;"><?php echo str_replace(' ','', $row['RoomType']); ?></td>
                  </tr>                 
								</table>
              </div>
              <?php
              if($row['Status']=='Y' && $row['billsettle'] <> 1)
              {
              ?>	  
              <div class="card-body"  style="color:<?php echo $row['Tcolor']; ?>"> 
                <div class="dropdown4">            
                  <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                    <tbody style="width: 100%;">
                      <tr>
                        <td colspan="4" style="width: 100%;padding:0px"><i style="color:#0057b7" class="fa fa-user-secret"></i> <?php echo $row['Name']; ?></td>                                                                               
                      </tr>
                      <tr>
                        <td style="padding:0px;text-align: center"><i style="color:#0057b7" class="fa fa-male"></i> <?php echo $row['male']; ?></td>                                                         
                        <td style="padding:0px;text-align: center"><i style="color:#0057b7" class="fa fa-female"></i> <?php echo $row['female']; ?></td>                                                         
                        <td style="padding:0px;text-align: center"><i style="color:#0057b7" class="fa fa-child"></i> <?php echo $row['Child']; ?></td>                                                         
                        <td style="padding:0px;text-align: center"><i style="color:#0057b7" class="fa fa-bed"></i> <?php if($row['days']==0){ echo '1'; }else{echo $row['days']; } ?></td>                                                         
                      </tr>
                    </tbody>
                  </table>

                  <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                    <tbody style="width: 100%;">                 
                      <tr>
                        <td style="padding:0px"><i style="color:#0057b7" class="fa fa-sign-in"></i> <?php echo date('d/m/Y', strtotime($row['checkindate'])).'-'.substr($row['CheckinTime'],11,5); ?></td>                                                         
                        <td style="padding:0px"><i style="color:#0057b7" class="fa fa-sign-out"></i> <?php echo date('d/m/Y', strtotime($row['depdate'])).'-'.substr($row['deptime'],11,5); ?></td>                                                                                 
                      </tr> 
                    </tbody>
                  </table> 

                  <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                  <tbody style="width: 100%;"> 
                    <tr>
  								    <td style="width:43%;padding:0px"><i style="color:#0057b7" class="fa fa-phone"></i> <?php echo $row['Mobile']; ?></td>                                                         
                      <td colspan="2" style="width: 57%;padding:0px"><i style="color:#0057b7" class="fa fa-address-card-o"></i> <?php echo $row['City']; ?></td>                                                         
                    </tr> 
                    <tr>
                      <td colspan="3" style="width: 100%;padding:0px"><i style="color:#0057b7" class="fa fa-building-o"></i> <?php echo $row['Company']; ?></td>
                    </tr>
                    <tr>
                      <?php
                    $sql = "Get_Checkout_Amount_Details  '".$row['Roomid']."'";
                      $exece = $this->db->query($sql);
                      foreach($exece -> result_array() as $row1){
                        

                        $billAmount=($row1['billamount']+ $row1['Tempbillamount']) - ($row1['advance']+$row1['TempDiscamt']+$row1['discamt']+$row1['Allowance'] );
                        // if($row1['billamount'] !=0){
                        //   $billAmount = $row1['billamount'];
                          
                        // }
                        // else{
                        //   $billAmount = $row1['Tempbillamount']-$row1['advance']-$row1['TempDiscamt'];

                        // }
                       
                      }
                      
                      ?>
  								    <td colspan="3" style="width: 100%;padding:0px"><i style="color:#0057b7" class="fa fa-inr"></i> <?php echo $billAmount;?></td>                                                                               
                    </tr>                        
                  </tbody>
                  </table>  
                  <div class="dropdown4-content"> 
                    <a href="#" onclick="postadvance('<?php echo $row['Room_Id'];?>')">Advance Posting</a>		
                    <a href="#" onclick="postbill('<?php echo $row['Room_Id']; ?>')">Bill Posting</a>
                    <?php if( @$aview ==1 ||  @$aedit ==1 || @$aadd ==1 || @$adelete ==1){ ?>
                    <a href="#" onclick="allowance('<?php echo $row['Room_Id']; ?>')">Allowance Posting</a> <?php } ?>
                    <?php if( @$rview ==1 ||  @$redit ==1 || @$radd ==1 || @$rdelete ==1){ ?>
                    <a href="#" onclick="roomtransfer('<?php echo $row['Room_Id']; ?>')">Room Transfer</a>	<?php } ?>							
                    <?php if( @$gview ==1 ||  @$gedit ==1 || @$gadd ==1 || @$gdelete ==1){ ?>
                    <a href="#" onclick="amendment('<?php echo $row['Room_Id']; ?>')">Guest Amendment</a><?php } ?>
                    <?php if( @$cview ==1 ||  @$cedit ==1 || @$cadd ==1 || @$cdelete ==1){ ?>
                    <a href="#" onclick="checkout('<?php echo $row['Room_Id']; ?>')">Checkout</a>		<?php } ?>	
                    <?php if( (@$ccview ==1 ||  @$ccedit ==1 || @$ccadd ==1 || @$ccdelete ==1) && @$comcheckoutoption != 0){ ?>
                    <a href="#" onclick="comCheckout('<?php echo $row['Room_Id']; ?>')">complementary Checkout</a>	<?php } ?>												
                  </div>   
                </div>	           
            </div>	
        <?php }
        else if($row['Status']=='Y' && $row['billsettle'] == 1){
          ?>
          <div class="card-body" style="color:<?php echo $row['Tcolor'];?>" > 
                <div class="dropdown4">            
                  <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                    <tbody style="width: 100%;">
                      <tr>
                        <td colspan="4" style="width: 100%;padding:0px"><i style="color:#0057b7" class="fa fa-user-secret"></i> <?php echo $row['Name']; ?></td>                                                                               
                      </tr>
                      <tr>
                        <td style="padding:0px;text-align: center"><i style="color:#0057b7" class="fa fa-male"></i> <?php echo $row['male']; ?></td>                                                         
                        <td style="padding:0px;text-align: center"><i style="color:#0057b7" class="fa fa-female"></i> <?php echo $row['female']; ?></td>                                                         
                        <td style="padding:0px;text-align: center"><i style="color:#0057b7" class="fa fa-child"></i> <?php echo $row['Child']; ?></td>                                                         
                        <td style="padding:0px;text-align: center"><i style="color:#0057b7" class="fa fa-bed"></i> <?php if($row['days']==0){ echo '1'; }else{echo $row['days']; } ?></td>                                                         
                      </tr>
                    </tbody>
                  </table> 

                  <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                    <tbody style="width: 100%;">                 
                      <tr>
                        <td style="padding:0px"><i style="color:#0057b7" class="fa fa-sign-in"></i> <?php echo date('d/m/Y', strtotime($row['checkindate'])).'-'.substr($row['CheckinTime'],11,5); ?></td>                                                         
                        <td style="padding:0px"><i style="color:#0057b7" class="fa fa-sign-out"></i> <?php echo date('d/m/Y', strtotime($row['depdate'])).'-'.substr($row['deptime'],11,5); ?></td>                                                                                 
                      </tr> 
                    </tbody>
                  </table> 

                  <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                  <tbody style="width: 100%;"> 
                    <tr>
  								    <td style="width:43%;padding:0px"><i style="color:#0057b7" class="fa fa-phone"></i> <?php echo $row['Mobile']; ?></td>                                                         
                      <td colspan="2" style="width: 57%;padding:0px"><i style="color:#0057b7" class="fa fa-address-card-o"></i> <?php echo $row['City']; ?></td>                                                         
                    </tr> 
                    <tr>
                      <td colspan="3" style="width: 100%;padding:0px"><i style="color:#0057b7" class="fa fa-building-o"></i> <?php echo $row['Company']; ?></td>
                    </tr>
                    <tr>
                      <?php
                    // echo   $sql = "Get_Checkout_Amount_Details  '".$row['Roomid']."'";
                    //   $exece = $this->db->query($sql);
                    //   foreach($exece -> result_array() as $row1){
                    //     $billAmount=($row1['billamount']+ $row1['Tempbillamount']) - ($row1['advance']+$row1['TempDiscamt']+$row1['discamt']+$row1['Allowance'] );
                    //   }

                  $sql =" Select Checkoutno, isnull(rmas.Amount,0) as receipt, * from Trans_Checkout_mas cmas
                    Inner join	Mas_Room rm on rm.Room_Id=cmas.Roomid
                    Inner join Trans_checkin_mas cimas on cimas.Grcid=cmas.grcid
                    Inner join Trans_Roomdet_det rdd on rdd.grcid=cmas.grcid
                    Inner join Mas_Customer cus on cus.Customer_Id=cmas.Customerid
                    Inner join Mas_Title mt on mt.Titleid=cus.Titelid
                    Inner Join Mas_City ct on ct.Cityid=cus.Cityid
                    left join Trans_Receipt_mas rmas on rmas.roomid = cmas.Roomid
                    where cmas.Checkoutno like 'CHK%' and isnull(cmas.cancelflag,0)<>1 and cmas.Roomid='".$row['Roomid']."' and cmas.checkoutdate=convert(varchar(25),getdate(),101)";
                    $exece = $this->db->query($sql);
                      foreach($exece -> result_array() as $row1){
                        $billAmount=$row1['totalamount'];
                      }
                      
                      ?>
  								    <td colspan="3" style="width: 100%;padding:0px"><i style="color:#0057b7" class="fa fa-inr"></i> <?php echo $billAmount;?></td>                                                                               
                    </tr>                           
                  </tbody>
                  </table>  
                   <?php
                  $sql1="select * from Room_Status rs
                  INNER JOIN Trans_checkout_mas cmas on cmas.grcid=rs.grcid
                  INNER JOIN Mas_Customer cus on cus.Customer_Id=cmas.Customerid
                  where rs.Status='Y' and isnull(rs.billsettle,0)='1' and isnull(cmas.Settle,0)=0 and 
                  cmas.Checkoutno like 'CHK%'   and rs.Roomid='".$row['Room_Id']."'";	
                  
                  $exe = $this->db->query($sql1);
                  $nor = $exe->num_rows();
                 
                  foreach($exe -> result_array() as $row1){
                  $checkoutid= $row1['Checkoutid'];
                  }
                  ?>
                  <div class="dropdown4-content"> 
                  <?php if( @$sview ==1 ||  @$sedit ==1 || @$sadd ==1 || @$sdelete ==1){ ?>
                    <a href="#" onclick="settlement('<?php echo $checkoutid; ?>')">Settlement</a>	<?php } ?>													
                  </div> 
                 
                </div>	           
            </div>

        <?php
        }
        else if($row['Status']=='N' && $row['notready'] <> 0){
          ?>
           <div class="card-body" style="color:<?php echo $row['Tcolor'];?>" > 
                <div class="dropdown4">              
                  <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                  <tbody style="width: 100%;">
                    <tr>
  								    <td colspan="3" style="width: 100%;padding:0px">&nbsp; </td>                                                                               
                    </tr>
                    <tr>
                      <td colspan="3" style="width: 100%;padding:0px">&nbsp; </td>
                    </tr>
                    <tr>
                      <td colspan="3" style="width: 100%;padding:0px">&nbsp; </td>
                    </tr>
                    <tr>
  								    <td style="width: 50%;padding:0px">&nbsp;</td>                                                         
                      <td style="width: 50%;padding:0px">&nbsp; </td>                                                         
                    </tr> 
                    <tr>
                      <td colspan="3" style="width: 50%;padding:0px">&nbsp; </td>
                    </tr>
                    <tr>
  								    <td colspan="3" style="width: 100%;padding:0px">&nbsp; </td>                                                                               
                    </tr>                
                  </tbody>
                  </table> 
                  <div class="dropdown4-content"> 
                  <?php if( @$cdview ==1 ||  @$cdedit ==1 || @$cdadd ==1 || @$cddelete ==1){ ?>
                    <a href="#"onclick="cleardirty('<?php echo $row['Room_Id']?>')">Clear Dirty</a>			<?php } ?>											
                  </div>   
                </div>	           
            </div>
           
          <?php
          } else if($row['blocked']==1 && $row['mblock'] != 0 && $row['foblock'] !=1 ){
            ?>
             <div class="card-body" style="color:<?php echo $row['Tcolor'];?>" > 
                  <div class="dropdown4">              
                    <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                    <tbody style="width: 100%;">
                     <tr>
                        <td colspan="3" style="width: 100%;padding:0px"><i style="color:#0057b7"class="fa fa-user-times" ></i> Under Maintenance </td>
                      </tr>
                      <tr>
                        <td colspan="3" style="width: 100%;padding:0px"><i style="color:#0057b7"class="fa fa-hand-o-right" > </i> <?php echo $row['reason'];?></td>                                                                               
                      </tr>
                      </tbody>
                    </table> 
                    <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                    <tbody style="width: 100%;">                 
                      <tr>
                        <td style="padding:0px"><i style="color:#0057b7" ></i>Blocked Date</td>                                                         
                        <td style="padding:0px"><i style="color:#0057b7" ></i>Release Date</td>                                                                                 
                      </tr> 
                    </tbody>
                  </table> 
                  <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                    <tbody style="width: 100%;">                 
                      <tr>
                        <td style="padding:0px"><i style="color:#0057b7" class="fa fa-sign-in"></i> <?php echo date('d/m/Y', strtotime($row['fromdate'])); ?></td>                                                         
                        <td style="padding:0px"><i style="color:#0057b7" class="fa fa-sign-out"></i> <?php echo date('d/m/Y', strtotime($row['todate'])); ?></td>                                                                                 
                      </tr> 
                    </tbody>
                  </table> 
                    <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                    <tbody style="width: 100%;">
                      <tr>
                        <td colspan="3" style="width: 100%;padding:0px">&nbsp; </td>
                      </tr>
                      
                      <tr>
                        <td colspan="3" style="width: 50%;padding:0px">&nbsp; </td>
                      </tr>               
                    </tbody>
                    </table> 
                   
                    <div class="dropdown4-content"> 
                    <?php if( @$cdview ==1 ||  @$cdedit ==1 || @$cdadd ==1 || @$cddelete ==1){ ?>
                      <a href="#"onclick="cleardirty('<?php echo $row['Room_Id']?>')">Clear Dirty</a>		<?php } ?>												
                    </div>   
                  </div>	           
              </div>
             
            <?php
            }else if($row['blocked']==1 && $row['mblock'] != 1 && $row['foblock'] !=0 ){
              ?>
               <div class="card-body" style="color:<?php echo $row['Tcolor'];?>" > 
                    <div class="dropdown4">              
                      <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                      <tbody style="width: 100%;">
                       <tr>
                          <td colspan="3" style="width: 100%;padding:0px"><i style="color:#0057b7"class="fa fa-user-times" > </i>  Frontoffice Blocked</td>
                        </tr>
                        <tr>
                          <td colspan="3" style="width: 100%;padding:0px"><i style="color:#0057b7"class="fa fa-hand-o-right" > </i> <?php echo $row['reason'];?></td>                                                                               
                        </tr>
                        </tbody>
                      </table> 
                      <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                      <tbody style="width: 100%;">                 
                        <tr>
                          <td style="padding:0px"><i style="color:#0057b7" ></i>Blocked Date</td>                                                         
                          <td style="padding:0px"><i style="color:#0057b7" ></i>Release Date</td>                                                                                 
                        </tr> 
                      </tbody>
                    </table> 
                    <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                      <tbody style="width: 100%;">                 
                        <tr>
                          <td style="padding:0px"><i style="color:#0057b7" class="fa fa-sign-in"></i> <?php echo date('d/m/Y', strtotime($row['fromdate'])); ?></td>                                                         
                          <td style="padding:0px"><i style="color:#0057b7" class="fa fa-sign-out"></i> <?php echo date('d/m/Y', strtotime($row['todate'])); ?></td>                                                                                 
                        </tr> 
                      </tbody>
                    </table> 
                      <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                      <tbody style="width: 100%;">
                        <tr>
                          <td colspan="3" style="width: 100%;padding:0px">&nbsp; </td>
                        </tr>
                        
                        <tr>
                          <td colspan="3" style="width: 50%;padding:0px">&nbsp; </td>
                        </tr>               
                      </tbody>
                      </table> 
                     
                      <div class="dropdown4-content"> 
                        
                        <a href="#"onclick="cleardirty('<?php echo $row['Room_Id']?>')">Clear Dirty</a>														
                      </div>   
                    </div>	           
                </div>
               
              <?php
              }
  
         else
              { ?>	
               <div class="card-body" style="color:<?php echo $row['Tcolor'];?>" > 
                <div class="dropdown4">              
                  <table class="table table-borderless" style="margin-bottom: 0px;">                                                    
                  <tbody style="width: 100%;">
                    <tr>
  								    <td colspan="3" style="width: 100%;padding:0px">&nbsp; </td>                                                                               
                    </tr>
                    <tr>
                      <td colspan="3" style="width: 100%;padding:0px">&nbsp; </td>
                    </tr>
                    <tr>
                      <td colspan="3" style="width: 100%;padding:0px">&nbsp; </td>
                    </tr>
                    <tr>
  								    <td style="width: 50%;padding:0px">&nbsp;</td>                                                         
                      <td style="width: 50%;padding:0px">&nbsp; </td>                                                         
                    </tr> 
                    <tr>
                      <td colspan="3" style="width: 50%;padding:0px">&nbsp; </td>
                    </tr>
                    <tr>
  								    <td colspan="3" style="width: 100%;padding:0px">&nbsp; </td>                                                                               
                    </tr>  
                                        
                  </tbody>
                  </table> 
                  <?php if( @$view ==1 ||  @$edit ==1 || @$add ==1 || @$delete ==1){ ?>
                  <div class="dropdown4-content"> 
                    <a href="#" onclick="checkin('<?php echo $row['Room_Id']; ?>','<?php echo date('Y-m-d') ?>' ,'<?php echo date('Y-m-d', strtotime('+1 Day')); ?>');">Checkin</a>														
                  </div>    
                  <?php } ?>            
                </div>	
              </div>

                
                <?php }
               
                 ?>
            </div>
          </div>
    <?php } ?> 
                <div id="cleardirtydialog" class="cleardirty center" style="display:none;width:450px" title="Unblock"></div>
                <div id="settlement" class="settlement center" style="display:none;width:450px" title="Settlement"></div>
               
                <div id="dialog" class="Checkin center"   style="display:none;width:450px" title="Walkin/Reservation"></div>
                <div id="advancedialog" class="postadvance center" style="display:none;width:450px;" title="Post Advance"></div>			
                <div id="postbilldialog" class="postbill center" style="display:none;width:450px" title="Bill Posting"></div>
                <div id="allowancedialog" class="allowance center" style="display:none;width:450px" title="Bill Posting"></div>
                <div id="roomtransferdialog" class="roomtransfer center" style="display:none;width:450px" title="Room Transfer"></div>
                <div id="guestamenddialog" class="amendment center" style="display:none;width:450px" title="Guest Amendment"></div>
                <div id="checkoutdialog" class="Checkout center" style="display:none;width:450px" title="Checkout"></div>
                <div id="comcheckoutdialog" class="comCheckout center" style="display:none;width:450px" title="complementary Checkout"></div>
          </div>
        </div>
      </div>
    </div>
  </div>  
</div>
<?php
$this->pfrm->FrmFoot();
$this->pweb->wfoot();
$this->pcss->wjs($F_Ctrl);
$this->licscript->LicenPopUp($this->Myclass);
$this->licscript->LicFooter();
$this->pweb->sms_footer($this->Menu);
?>

 
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
<script>
var today = new Date().getFullYear()+'/'+("0"+(new Date().getMonth()+1)).slice(-2)+'/'+("0"+new Date().getDate()).slice(-2);



var occupied = document.getElementById("occupied");
occupied.addEventListener("click", () =>{
  document.getElementById("occupiedForm").submit();
});

var avail = document.getElementById("avail");
avail.addEventListener("click", () =>{
  document.getElementById("availForm").submit();
});

var clead = document.getElementById("cleard");
clead.addEventListener("click", () =>{

  document.getElementById("clearForm").submit();
  
});

var block = document.getElementById("block");
block.addEventListener("click", () =>{

  document.getElementById("blockForm").submit(); 
});

var bill = document.getElementById("bill");
bill.addEventListener("click", () =>{

  document.getElementById("billForm").submit(); 
});
var main = document.getElementById("main");
main.addEventListener("click", () =>{

  document.getElementById("mainForm").submit(); 
});
var reload = document.getElementById("reload");
reload.addEventListener("click", () => {
  location.reload();
})

function checkin(roomid,Fdat,Tdat)
{

  if("<?php echo $auditdate; ?>" < today)
		{ swal("Night Audit Not Completed", "Kindly do the Date change Process", "warning"); return;}
      
	 $.ajax({
		
		type:"POST",
		url:"<?php echo scs_index;?>Transaction/Checkin",
		data:$('#scsfrm').serialize()+"&Fdat="+Fdat+"&Tdat="+Tdat+"&roomid="+roomid,
		success: function(html)
		{
			 $(".Checkin").html(html);
		}
		 
	 })
  
	
	$( "#dialog" ).dialog({
	  height: "auto",
      width: 800,
      modal: true
		});
	$('.ui-dialog-titlebar-close').html('X');
	$('.ui-dialog-titlebar-close').removeClass('ui-button-icon-only');  
}

  function postadvance(a)
{   
  if("<?php echo $auditdate; ?>" < today)
		    { swal("Night Audit Not Completed", "Kindly do the Date change Process", "warning"); return;}
	$.ajax({
		type:"POST",
		url:"<?php echo scs_index;?>Transaction/advanceposting/",
		data:$('#scsfrm').serialize()+"&Room_id="+a,
		success: function(html)
		{
			 $(".postadvance").html(html);
		}		 
	 })		
	$( "#advancedialog" ).dialog({
		      height: "auto",
      width: 600,
      modal: true
		});
	$('.ui-dialog-titlebar-close').html('X');
	$('.ui-dialog-titlebar-close').removeClass('ui-button-icon-only');
}


function postbill(a)
{  
  if("<?php echo $auditdate; ?>" < today)
		    { swal("Night Audit Not Completed", "Kindly do the Date change Process", "warning"); return;}
	$.ajax({
		type:"POST",
		url:"<?php echo scs_index;?>Transaction/billposting/",
		data:$('#scsfrm').serialize()+"&Room_id="+a,
		success: function(html)
		{
			 $(".postbill").html(html);
		}		 
	 })			
	$( "#postbilldialog" ).dialog({
		      height: "auto",
      width: 600,
      modal: true
		});
	$('.ui-dialog-titlebar-close').html('X');
	$('.ui-dialog-titlebar-close').removeClass('ui-button-icon-only');
}


function allowance(a)
{  
  if("<?php echo $auditdate; ?>" < today)
		    { swal("Night Audit Not Completed", "Kindly do the Date change Process", "warning"); return;}
	$.ajax({
		type:"POST",
		url:"<?php echo scs_index;?>Transaction/allowanceposting/",
		data:$('#scsfrm').serialize()+"&Room_id="+a,
		success: function(html)
		{
			 $(".allowance").html(html);
		}		 
	 })			
	$( "#allowancedialog" ).dialog({
		      height: "auto",
      width: 600,
      modal: true
		});
	$('.ui-dialog-titlebar-close').html('X');
	$('.ui-dialog-titlebar-close').removeClass('ui-button-icon-only');
}
function roomtransfer(a)
{   
  if("<?php echo $auditdate; ?>" < today)
		    { swal("Night Audit Not Completed", "Kindly do the Date change Process", "warning"); return;}
	$.ajax({
		type:"POST",
		url:"<?php echo scs_index;?>Transaction/roomtransfer/",
		data:$('#scsfrm').serialize()+"&Room_id="+a,
		success: function(html)
		{
			 $(".roomtransfer").html(html);
		}		 
	 })		
	$( "#roomtransferdialog" ).dialog({
		      height: "auto",
      width: 600,
      modal: true
		});
	$('.ui-dialog-titlebar-close').html('X');
	$('.ui-dialog-titlebar-close').removeClass('ui-button-icon-only');
}


function amendment(a)
{
  if("<?php echo $auditdate; ?>" < today)
		    { swal("Night Audit Not Completed", "Kindly do the Date change Process", "warning"); return;}
	$.ajax({
		type:"POST",
		url:"<?php echo scs_index;?>Transaction/amendment/",
		data:$('#scsfrm').serialize()+"&Room_id="+a,
		success: function(html)
		{
			 $(".amendment").html(html);
		}		 
	 })	
	$( "#guestamenddialog" ).dialog({
		   height: "auto",
      	width: 800,
      	modal: true
		});
	$('.ui-dialog-titlebar-close').html('X');
	$('.ui-dialog-titlebar-close').removeClass('ui-button-icon-only');
}

function cleardirty(a)
{
	$.ajax({
		type:"POST",
		url:"<?php echo scs_index;?>Transaction/cleardirty/",
		data:$('#scsfrm').serialize()+"&Room_id="+a,
		success: function(html)
		{
			 $(".cleardirty").html(html);
		}		 
	 })			
	$( "#cleardirtydialog" ).dialog({
		      height: "auto",
      width: 300,
      modal: true
		});
	$('.ui-dialog-titlebar-close').html('X');
	$('.ui-dialog-titlebar-close').removeClass('ui-button-icon-only');
}

function checkout(a)
{
  
  if("<?php echo $auditdate; ?>" < today)
		{ swal("Night Audit Not Completed", "Kindly do the Date change Process", "warning"); return;}
	
	$.ajax({
		type:"POST",
		url:"<?php echo scs_index;?>Transaction/Checkout/",
		data:$('#scsfrm').serialize()+"&Room_id="+a,
		success: function(html)
		{
			 $(".Checkout").html(html);
		}		 
	 })		
	$( "#checkoutdialog" ).dialog({
		      height: "auto",
      width: 600,
      modal: true
		});
	$('.ui-dialog-titlebar-close').html('X');
	$('.ui-dialog-titlebar-close').removeClass('ui-button-icon-only');
}


function comCheckout(a)
{
  
	if("<?php echo $auditdate; ?>" < today)
		{ swal("Night Audit Not Completed", "Kindly do the Date change Process", "warning"); return;}


	$.ajax({
		type:"POST",
		url:"<?php echo scs_index;?>Transaction/Walkout/",
		data:$('#scsfrm').serialize()+"&Room_id="+a,
		success: function(html)
		{
			 $(".comCheckout").html(html);
		}		 
	 })		
	$( "#comcheckoutdialog" ).dialog({
		      height: "auto",
      width: 600,
      modal: true
		});
	$('.ui-dialog-titlebar-close').html('X');
	$('.ui-dialog-titlebar-close').removeClass('ui-button-icon-only');
}


function settlement(a)
{

	$.ajax({
		type:"POST",
		url:"<?php echo scs_index;?>Transaction/settlement/",
		data:$('#scsfrm').serialize()+"&Billid="+a,
		success: function(html)
		{
			 $(".settlement").html(html);
		}		 
	 })		
	$( "#settlement" ).dialog({
	    height: "auto",
    	width: 740,
      	modal: true
		});
	$('.ui-dialog-titlebar-close').html('X');
	$('.ui-dialog-titlebar-close').removeClass('ui-button-icon-only');
}

</script>


