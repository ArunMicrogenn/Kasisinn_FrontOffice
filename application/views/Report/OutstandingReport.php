<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->pweb->phead();
$this->pcss->wcss();
$this->pweb->wtop();
$this->pweb->wheader($this->Menu,$this->session);
$this->pweb->menu($this->Menu,$this->session);
$this->pweb->Cheader('Report','Outstanding Report');
$this->pfrm->FrmHead6('Report / Outstanding Report',$F_Class."/".$F_Ctrl,$F_Class."/".$F_Ctrl."_View");
 
?>

<div class="col-sm-12">
  <div class="the-box F_ram">
    <fieldset>
	<form action="" method="POST">
      	<table class="FrmTable T-6" >
        <tr>              
          <td align="left"><select type="text" name="company"  class="scs-ctrl"/>		
		  <option value="0">All</option>  
		  <?php
		  $sql="select * from mas_company";
		   $exec=$this->db->query($sql); 
		    foreach ($exec->result_array() as $rows)
			  {
		  ?>
		   <option <?php if(@$_POST['company']==$rows['Company_Id']){echo "selected "; }?> value="<?php echo $rows['Company_Id']; ?>"><?php echo $rows['Company']; ?></option>
			  <?php } ?>
		  </select>
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
				<h3 class="text-center">Outstanding Summary Report<h3>
		    </div>        
		   <tbody>
		    <?php 

			       $i=1;
            //  $Fromdate=date('Y-m-d');
            //  $Todate = date('Y-m-d');
            //  if(isset($_POST['Fdate'])){
            //  $Fromdate= date('Y-m-d',strtotime($_POST['Fdate']));
            //  $Todate= date('Y-m-d',strtotime($_POST['Tdate']));
            //  }
			    $company_id = $_POST['company'];
				if($company_id != 0){
					$qry="Exec sp_FO_snapshotreport 0,'".$company_id."'";
				}else{
					$qry="Exec sp_FO_snapshotreport 1,0";
				}
		        $exec=$this->db->query($qry); 
			     $advance= $exec->num_rows();
                 $advanceamt=0;
			  ///if($advance !=0)
			  ///{
				echo '<tr style="background-color:#c9c6c6;">';		 		 
				echo '<td  style="text-align: center;">S.no</td>';
				echo '<td  style="text-align: center;">Company</td>';
                echo '<td  style="text-align: center;">Total Amount</td>';
				echo '<td style="text-align: center;">Paid Amount</td>';
				echo '<td style="text-align: center;">Balance</td>';
				echo '</tr>';			

			 /// }			 
			  foreach ($exec->result_array() as $rows)
			  {		
               
				echo '<tr>';		 
				echo '<td  style="text-align: center;">'.$i++.'</td>';
				echo '<td  style="text-align: center;">'.$rows['Company'].'</td>';     
                echo '<td  style="text-align: center;">'.number_format($rows['Amount'],2).'</td>';
                echo '<td  style="text-align: center;">'.number_format($rows['Paidamount'],2).'</td>';
                echo '<td  style="text-align: center;">'.number_format($rows['Balance'],2).'</td>';

				
				echo '</tr>';				
			  }			 
		   ?>		   
		   </tbody>
		 </table>	
     <?php
    }
     ?>

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
              filename: "Outstanding Report" + new Date().toISOString().replace(/[\-\:\.]/g, "") + ".xls",
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
                    pdfMake.createPdf(docDefinition).download("Outstanding Report.pdf");
                }
            });
        });
	</SCRIPT>