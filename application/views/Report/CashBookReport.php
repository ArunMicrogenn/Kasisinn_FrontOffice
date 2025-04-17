<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Report','Cash Book Report');
$this->pfrm->FrmHead6('Report /Cash Book Report',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");
 
?>
 

<div class="col-sm-12">
  <div class="the-box F_ram">
    <fieldset>
	<form action="" method="POST">
      	<table class="FrmTable T-6" >
        <tr>
          <td align="right" class="F_val">From Date</td>
          <td align="left"><input type="Date" value="<?php echo date('Y-m-d'); ?>" id="frmdate" name="frmdate" max="<?php echo date('Y-m-d'); ?>"  class="scs-ctrl" />
            <div class="Type" ></div></td>
            <td align="right" class="F_val">To Date</td>
          <td align="left"><input type="Date" value="<?php echo date('Y-m-d'); ?>" id="todate" name="todate" max="<?php echo date('Y-m-d'); ?>"  class="scs-ctrl" />
            <div class="Type" ></div></td>        
		   <td align="left"><input type="submit" name="submit"  class="btn btn-success btn-block" value="Get"></td>
        </tr>
      	</table>
	   </form>
    </fieldset>
  </div>
  <div class="the-box D_IS" ></div>
</div>
    <div id="printing" class="col-sm-12">
		<?php

		if(@$_POST['submit'])
		{
		  ?>
		
        <table class="table table-bordered table-hover"  >  
		    <div>
				<h3 class="text-center">Cash Book Report  <?php echo date('d-m-Y', strtotime($_POST['frmdate'])); ?> To <?php echo date('d-m-Y', strtotime($_POST['todate'])); ?><h3>
		    </div>           
		   <tbody>
		    <?php 
			 $i=1;	
             $fromdate = date('Y-m-d', strtotime($_POST['frmdate']));
             $todate = date('Y-m-d', strtotime($_POST['todate']));
             $creditTotal = 0;
             $debitTotal = 0;
             $creditAmount = 0;
             $debitAmount = 0;
             $qry="exec cashBookReport '".$fromdate."', '".$todate."'";
			 $exec=$this->db->query($qry);
			 $advance= $exec->num_rows();
			  if($advance !=0)
			  {
				echo '<tr style="background-color:#c9c6c6;">';	 		 
				echo '<td style=" text-align:center;" >S.No</td>';
				echo '<td  style="text-align: center;">DailyCashBook No</td>';
                echo '<td style="text-align: center;">Entry Date</td>';
                echo '<td style="text-align: center;">Head Name</td>';				
				echo '<td style="text-align: center;">Credit</td>';
				echo '<td style="text-align: center;">Debit</td>';
				echo '<td style="text-align: center;">Narration</td>';				
				echo '</tr>';	
			  }			 $totalAdvance=0;
			  foreach ($exec->result_array() as $rows)
			  {
                
                if($rows['Debitorcredit']=='C'){
                    $creditTotal += $rows['Amount'];
                    $creditAmount = $rows['Amount'];

                }else{
                    $debitTotal += $rows['Amount'];
                    $debitAmount =$rows['Amount'];
                }
				echo '<tr>';		 
				echo '<td  style="text-align: center;">'.$i++.'</td>';
				echo '<td  style="text-align: center;">'.$rows['DailyNo'].'</td>';
				echo '<td style="text-align: center;">'.date('d-m-Y',strtotime($rows['Cashdate'])).'</td>';
				echo '<td style="text-align: center;">'.$rows['Head'].'</td>';	
                if($rows['Debitorcredit']=='C'){			
				echo '<td style="text-align: right;">'.$creditAmount.'</td>';
                }else{
                    echo '<td style="text-align: right;">0.00.</td>';
                }	
                if($rows['Debitorcredit']=='D'){				
				echo '<td style="text-align: right;">'.$debitAmount.'</td>';
                }else{
                    echo '<td style="text-align: right;">0.00</td>'; 
                }
				echo '<td style="text-align: center;">'.$rows['narr'].'</td>';				
				echo '</tr>';
				$totalAdvance=$totalAdvance+$rows['Amount'];
			  }
			  if($advance !=0)
			  {
				echo '<tr>';
				echo '<td colspan="4" class="text-bold" style="text-align: right;">Total </td>';
				echo '<td style="text-align: right;">'.number_format($creditTotal,2).'</td>';
                echo '<td style="text-align: right;">'.number_format($debitTotal,2).'</td>';								
				echo '</tr>';				
			  }	 
		   ?>		   
		   </tbody>
		 </table>
		
		
		  <?php
		} ?>
	</div>
	<?php 
$this->pfrm->FrmFoot();
$this->pweb->wfoot();
$this->pcss->wjs($F_Ctrl);
$this->licscript->LicenPopUp($this->Myclass);
$this->licscript->LicFooter();
?>
 
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/jquery.table2excel.min.js"></script>
  <SCRIPT language="javascript">
		function printDiv(a) {
			 var printContents = document.getElementById(a).innerHTML;
			 var originalContents = document.body.innerHTML;
			 document.body.innerHTML = printContents;
			 window.print();
			 document.body.innerHTML = originalContents;
		}
       function fromdatevalidate()
	   {
		 var a= document.getElementsByName("dateFrom")[0].value;
		 alert(a);
	   }
		function addRow(tableID) {

			var table = document.getElementById(tableID);

			var rowCount = table.rows.length;
			var row = table.insertRow(rowCount);

			var colCount = table.rows[0].cells.length;

			for(var i=0; i<colCount; i++) {

				var newcell	= row.insertCell(i);

				newcell.innerHTML = table.rows[0].cells[i].innerHTML;
				//alert(newcell.childNodes);
				switch(newcell.childNodes[0].type) {
					case "text":
							newcell.childNodes[0].value = "";
							break;
					case "checkbox":
							newcell.childNodes[0].checked = false;
							break;
					case "select-one":
							newcell.childNodes[0].selectedIndex = 0;
							break;
				}
			}
		}

		function deleteRow(tableID) {
			try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for(var i=0; i<rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if(null != chkbox && true == chkbox.checked) {
					if(rowCount <= 1) {
						alert("Cannot delete all the rows.");
						break;
					}
					table.deleteRow(i);
					rowCount--;
					i--;
				}


			}
			}catch(e) {
				alert(e);
			}
		}
		$(function() {
        $("#exporttable").click(function(e)
		{

          var table = $("#printing");
          if(table && table.length)
		  {
            $(table).table2excel({
              exclude: ".noExl",
              name: "Excel Document Name",
              filename: "CashBook Report" + new Date().toISOString().replace(/[\-\:\.]/g, "") + ".xls",
              fileext: ".xls",
              exclude_img: true,
              exclude_links: true,
              exclude_inputs: true,
              preserveColors: false
            });
          } 
		});
      });

        $("body").on("click", "#exportpdf", function () {
            html2canvas($('#printing')[0], {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("CashBook Report.pdf");
                }
            });
        });
	</SCRIPT>