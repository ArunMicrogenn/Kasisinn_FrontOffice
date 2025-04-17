<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Master','Cash Book');
$this->pfrm->FrmHead11('Master / Cash Book',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");

 $Res="select dbo.CashbookNo() as number";
$res = $this->db->query($Res);
foreach($res->result_array() as $row)
{ 
    $Creditno=$row['number'];
}

$year = "select dbo.YearPrefix() as id";
$res = $this->db->query($year);
foreach($res->result_array() as $r){
  $yearPrefix= $r['id'];
}
?>

<div class="col-sm-12">
  <div class="the-box F_ram">
    <form id="CollectionForm">
    <fieldset>
    <input type="hidden" name="idv" value="<?php echo @$Credid; ?>" >
    <table id="mytable" width="100%" class="mytable" style="margin-top:20px">
        <thead>          
          <tr>
            <th>Receipt No</th>
            <th>Date</th>
            <th>Head</th>
            <th>Credit</th>
            <th>Debit</th>
            <th>Remark</th>
            <th>Action</th>
          </tr>
        </thead>
          <tbody id="row">
            <?php $count=1;?>
              <tr id="row1">
                <td>
                    <input type="Text" class="scs-ctrl" readonly value="<?php if(@$Credid){ echo $yearprefix.'/'.$CreditNo; }else{ echo $yearPrefix.'/'.$Creditno; }?>" id="ReceiptNo" name="ReceiptNo"/>
                    <div class="Receiptno"></div>
                </td>
                <td >
                    <input type="Text" readonly value="<?php echo date("d-m-Y") ?>" class="scs-ctrl rmm" id="Date" name="Date"/>
                </td>
                <td>
                    <select required class="scs-ctrl scs-ctrl-select" name="Head[]" id="Head<?php echo $count;?>" onChange="headSelectionValidation(this.value, '<?php echo $count;?>')" ><option value="">--Head--</option>
                    <?php 
                    $sql="select * from accname";
                    $res=$this->db->query($sql);
                    foreach ($res->result_array() as $row)                 
                    {
                        
                        echo '<option value="'.$row['Accid'].'">'.$row['Accname'].'</option>';
                        
                    }
                    ?>
                    </select>
                </td>
                <td>
                    <input type="Text" class="scs-ctrl" value="<?php echo @$Name; ?>" num=1 id="credit<?php echo $count?>"  name="credit[]"/>
                    <div class="Credit"></div>
                </td>
                <td>
                    <input type="Text" value="<?php echo @$Amount; ?>" class="scs-ctrl rmm" num=1 id="Debit<?php echo $count;?>"  name="Debit[]"/>
                </td>
                <td>
                    <input required type="text" placeholder="Remark" id="Remark<?php echo $count;?>" value="<?php echo @$remarks; ?>" name="Remark[]" value="" class="scs-ctrl" />
                </td>
                <td>
                    <input type="button" class="add" style="display:inline-block" id="add" onClick="addrow();" value="+"> 
                    <button type="button" onclick="deleterow('1');" class="delete-row">x</button>
                </td>
            </tr> 
           <input type="hidden" value="<?php echo $count;?>" name='counts' id="counts" >  
           <input type="hidden" value="0" name='totalamount' id="totalamount" >  
           <input type="hidden" value="<?php echo $BUT;?>" name="savebtn" name='totalamount' id="totalamount" >  
          </tbody>
          <tfoot>
          <tr>
          <td align="right" colspan="6">&nbsp;</td>
          <td align="left">
            <input type="button"   class="btn btn-success btn-sm"  id="savebtn"  onClick="save();" value="<?php echo $BUT;?>"   />
          </td>
        </tr>
          </tfoot>
      </table>

    </fieldset>
    </form>
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
 
 $(document).ready(function(e) {    
    $('#roomid').val(<?php echo @$Room_Id; ?>);   
    $('#roomid1').val(<?php echo @$Room_Id; ?>);   
    $('#RevenueHead').val(<?php echo @$Creditheadid; ?>);      
    $('#RevenueHead1').val(<?php echo @$Creditheadid; ?>);      
  });

const save = ()=>{
    var count = $('#row tr').length;
    let totalamount= 0;

    for(i=1; i<= count ; i++){
        let credit = document.getElementById("credit"+i).value;
        let Debit = document.getElementById("Debit"+i).value;
        let Head =document.getElementById("Head"+i).value;

        if(Head == ''){
        swal("Unable to process!", "Head Is Empty", "error")
        return
       }

        if(credit == 0 && Debit == 0){
            swal("Unable to process!", "Credit / Debit is Empty", "error")
            return
        }
    }


    for(i=1; i<=count; i++){
        totalamount += Number(document.getElementById('credit'+i).value);
        totalamount += Number(document.getElementById('Debit'+i).value);
    }
    document.getElementById("totalamount").value = totalamount;



    $.ajax({
        type: 'post',
        url: '<?php echo scs_index ?>Master/CashBook_Val',
        data: $('#CollectionForm').serialize(),
        success: function (result) {
          if(result != 0)		
        {
          swal("Success...!", "Cash Book Entry saved Successfully...!", "success")
          .then(function() {
            window.location.href="<?php echo scs_index?>Reprint/CashBookEntry?id="+result;
            });
        }
        else
        {
          swal("Failed...!", "Unable to process", "error")
          .then(function() {
            window.location.href="<?php echo scs_index?>Master/CashBook";
          });
        }
      }
    });

    
}

const addrow = () =>{ 

    var rowCount = $('#row tr').length;
    let credit = document.getElementById("credit"+rowCount).value;
    let Debit = document.getElementById("Debit"+rowCount).value;
    let Head =document.getElementById("Head"+rowCount).value;

    if(Head == ''){
        swal("Unable to process!", "Head Is Empty", "error")
        return
    }

    if(credit == 0 && Debit == 0){
        swal("Unable to process!", "Credit / Debit is Empty", "error")
        return
    }
    

    rowCount=rowCount + 1;

    
    var markup = '<tr id=row'+rowCount+'><td><input type="Text" class="scs-ctrl" value="<?php if(@$Credid){ echo $yearprefix.'/'.$CreditNo; }else{ echo $yearPrefix.'/'.$Creditno; }?>" id="ReceiptNo" /></td><td ><input type="Text" readonly  value="<?php echo date("d-m-Y") ?>" class="scs-ctrl rmm" id="Date" name="Date"/></td><td><select required class="scs-ctrl scs-ctrl-select"  name="Head[]" id="Head'+rowCount+'" onChange="headSelectionValidation(this.value, '+rowCount+')" ><option value="">--Head--</option><?php $sql="select * from accname";$res=$this->db->query($sql);foreach ($res->result_array() as $row){echo '<option value="'.$row['Accid'].'">'.$row['Accname'].'</option>';}?></select></td><td><input type="Text" class="scs-ctrl" value="<?php echo @$Name; ?>"  id="credit'+rowCount+'" num=1  name="credit[]"/></td><td><input type="Text" value="<?php echo @$Amount; ?>" class="scs-ctrl rmm" num=1 id="Debit'+rowCount+'"  name="Debit[]"/><div class="Amount"></div></td><td><input required type="text" placeholder="Remark" id="Remark'+rowCount+'" value="<?php echo @$remarks; ?>" name="Remark[]" value="" class="scs-ctrl" /></td><td><input type="button" style="display:inline-block" id="add" onclick="addrow()" value="+" class="add"><button type="button" onclick="deleterow('+rowCount+');" class="delete-row">x</button></td></tr> ';
    $("#row").append(markup);
    document.getElementById("counts").value = rowCount;

  };

const deleterow = (a) => {
    $('#row'+a).remove();
    let row = $('#row tr').length;
    document.getElementById("counts").value = row;
}

// const debitEnable = (id) =>{
//   document.getElementById('credit'+id).value= 0;
//   document.getElementById('Debit'+id).removeAttribute("readonly","readonly")
//   document.getElementById('credit'+id).setAttribute("readonly","readonly");
// }
// const creditEnable = (id) =>{
//   document.getElementById('Debit'+id).value= 0;
//   document.getElementById('credit'+id).removeAttribute("readonly","readonly")
//   document.getElementById('Debit'+id).setAttribute("readonly","readonly");
// }


/** credit and debit input disable based on Head selection */

const headSelectionValidation = (headSelection, id) =>{
  $.ajax({
        type: 'post',
        url: '<?php echo scs_index ?>Master/HeadSelection',
        data: 'Accid='+headSelection,
        success: function (result) {
          if(result == 'C'){
            document.getElementById('Debit'+id).value= 0;
            document.getElementById('credit'+id).removeAttribute("readonly","readonly")
            document.getElementById('Debit'+id).setAttribute("readonly","readonly");
          }
          else{
            document.getElementById('credit'+id).value= 0;
            document.getElementById('Debit'+id).removeAttribute("readonly","readonly");
            document.getElementById('credit'+id).setAttribute("readonly","readonly");
          }
        }
  });
}

// const headTag = document.getElementById("head");
// headTag.addEventListener('change', () =>{
//   headSelection =headTag.value;
//   $.ajax({
//         type: 'post',
//         url: '<?php echo scs_index ?>Transaction/HeadSelection',
//         data: 'Accid='+headSelection,
//         success: function (result) {
//           if(result == 'C'){
//             document.getElementById('Debit'+id).value= 0;
//             document.getElementById('credit'+id).removeAttribute("readonly","readonly")
//             document.getElementById('Debit'+id).setAttribute("readonly","readonly");
//           }
//           else{
//             document.getElementById('credit'+id).value= 0;
//             document.getElementById('Debit'+id).removeAttribute("readonly","readonly");
//             document.getElementById('credit'+id).setAttribute("readonly","readonly");
//           }
//         }
//   });
// })
 </script>

 
